#!/usr/bin/env bash
# Behavioral regression gate for the unattended Codex pipeline.
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

fail() {
  echo "PIPELINE TEST FAILED: $*" >&2
  exit 1
}

tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT

assert_contains() {
  local text="$1" pattern="$2" message="$3"
  printf '%s\n' "$text" | grep -E -q -- "$pattern" || fail "$message"
}

assert_not_contains() {
  local text="$1" pattern="$2" message="$3"
  if printf '%s\n' "$text" | grep -E -q -- "$pattern"; then
    fail "$message"
  fi
}

for script in run.sh runqueue.sh scripts/pipeline-supervisor.sh scripts/pipeline-service.sh; do
  [ -f "$script" ] || fail "missing $script"
  bash -n "$script" || fail "$script does not parse"
done

# A recovery that verifies a transient failure must be able to clear its stale
# marker without inventing a repository mutation.
grep -Fq 'if [ "$before" = "$after" ] && [ "$stage" != "recover" ]; then' run.sh \
  || fail "verified no-op recovery would be rejected as zero progress"

service_plan="$(scripts/pipeline-service.sh --dry-run install)"
assert_contains "$service_plan" '/scripts/pipeline-supervisor\.sh' \
  "launchd must execute the repository-owned supervisor"
assert_not_contains "$service_plan" '/tmp/.*pipeline-supervisor' \
  "launchd must not depend on a reboot-volatile /tmp supervisor"
assert_contains "$service_plan" '/codex' "launchd plan must pin the Codex executable"
grep -q 'bootstrap_service' scripts/pipeline-service.sh || fail "service controller lacks bounded bootstrap retry"

help="$(./run.sh help)"
for command in start stop service-status daemon; do
  assert_contains "$help" "${command}" "run.sh help is missing '${command}'"
done

dry_runtime="$tmp/dry-runtime"
dry="$(PIPELINE_RUNTIME_DIR="$dry_runtime" ./run.sh --dry-run next)"
[ ! -e "$dry_runtime" ] || fail "run.sh dry-run created runtime state"
assert_contains "$dry" 'gpt-5\.6-terra' "active stages must use Terra"
assert_contains "$dry" 'model_reasoning_effort=.*high' "active stages must use High effort"

queue_dry="$(./runqueue.sh --dry-run -n 1)"
assert_contains "$queue_dry" 'gpt-5\.6-sol' "runqueue must use Sol"
assert_contains "$queue_dry" 'model_reasoning_effort=.*high' "runqueue must use High effort"

python3 scripts/validate_pipeline.py

grep -q 'Select exactly one' prompts/source.md || fail "source prompt is not one-unit-per-call"
grep -q 'Select exactly one' prompts/build.md || fail "build prompt is not one-unit-per-call"
grep -q 'Select exactly one' prompts/critique.md || fail "critique prompt is not one-unit-per-call"
grep -q 'default 4' prompts/source.md || fail "source prompt does not honor default minImages=4"

# launchd supplies only the system path. The full project gate must not depend
# on Codex's bundled ripgrep binary being present there.
PATH=/usr/bin:/bin bash scripts/check_no_legacy_runtime.sh \
  || fail "legacy runtime scan requires a non-system search utility"

mkdir -p "$tmp/runtime"

# A live lock must exclude a second mutating runner. The lock holder is a
# separate process so this tests process-visible behavior rather than a shell
# variable or implementation detail.
bash -c '. scripts/pipeline-lib.sh; pipeline_lock_acquire "$1"; trap pipeline_lock_release EXIT TERM; sleep 4' _ "$tmp/runtime" &
holder=$!
for _ in 1 2 3 4 5; do
  [ -f "$tmp/runtime/runner.lock/pid" ] && break
  sleep 0.1
done
if bash -c '. scripts/pipeline-lib.sh; pipeline_lock_acquire "$1"' _ "$tmp/runtime" 2> "$tmp/busy.err"; then
  kill -TERM "$holder" 2>/dev/null || true
  wait "$holder" 2>/dev/null || true
  fail "a second runner acquired a live lock"
fi
assert_contains "$(cat "$tmp/busy.err")" 'pipeline busy' "live lock rejection was not actionable"
kill -TERM "$holder" 2>/dev/null || true
wait "$holder" 2>/dev/null || true

# A stale lock must recover automatically after its owner is gone.
mkdir -p "$tmp/runtime/runner.lock"
printf '999999\n' > "$tmp/runtime/runner.lock/pid"
bash -c '. scripts/pipeline-lib.sh; pipeline_lock_acquire "$1"; pipeline_lock_release' _ "$tmp/runtime" \
  || fail "stale runner lock was not recovered"

set +e
python3 scripts/set_stage.py edward-s-curtis built > "$tmp/illegal-stage.log" 2>&1
illegal_rc=$?
set -e
[ "$illegal_rc" -ne 0 ] || fail "set_stage accepted a backward transition"
assert_contains "$(cat "$tmp/illegal-stage.log")" 'illegal stage transition' \
  "set_stage backward-transition error was not actionable"

# A hung Codex invocation must be terminated with the conventional timeout code.
printf '%s\n' '#!/usr/bin/env bash' 'sleep 30' > "$tmp/hanging-codex"
chmod +x "$tmp/hanging-codex"
set +e
CODEX_BIN="$tmp/hanging-codex" PIPELINE_RUNTIME_DIR="$tmp/timeout-runtime" \
  PIPELINE_MIN_FREE_MB=1 STAGE_TIMEOUT_SECONDS=1 STAGE_POLL_SECONDS=1 \
  PIPELINE_PUSH=0 PIPELINE_ALLOW_DIRTY=1 PIPELINE_SUMMARY_LOG="$tmp/timeout-summary.log" \
  ./run.sh source > "$tmp/timeout.log" 2>&1
timeout_rc=$?
set -e
[ "$timeout_rc" -eq 124 ] || fail "hung stage returned $timeout_rc instead of 124"
assert_contains "$(cat "$tmp/timeout.log")" 'exceeded 1s' "hung stage did not explain its timeout"

# The supervisor must survive and retry an ordinary stage failure. This fake
# public runner fails its first `next`, succeeds its second, and records calls.
printf '%s\n' \
  '#!/usr/bin/env bash' \
  'case "$1" in' \
  '  decision) echo "NEXT source 4 :: injected retry test" ;;' \
  '  next)' \
  '    n=$(cat "$CALLS" 2>/dev/null || echo 0)' \
  '    n=$((n + 1)); echo "$n" > "$CALLS"' \
  '    [ "$n" -gt 1 ] ;;' \
  '  recover) exit 0 ;;' \
  '  *) exit 2 ;;' \
  'esac' > "$tmp/fake-runner"
chmod +x "$tmp/fake-runner"
PATH=/usr/bin:/bin CALLS="$tmp/calls" PIPELINE_RUNNER="$tmp/fake-runner" \
  PIPELINE_RUNTIME_DIR="$tmp/supervisor-runtime" PIPELINE_MIN_FREE_MB=1 \
  PIPELINE_BASE_BACKOFF_SECONDS=0 PIPELINE_MAX_BACKOFF_SECONDS=0 \
  PIPELINE_SUCCESS_DELAY_SECONDS=0 PIPELINE_MAX_CYCLES=2 \
  bash scripts/pipeline-supervisor.sh > "$tmp/supervisor.stdout" 2> "$tmp/supervisor.stderr"
[ ! -s "$tmp/supervisor.stderr" ] || fail "supervisor wrote unexpected stderr: $(cat "$tmp/supervisor.stderr")"
[ "$(cat "$tmp/calls")" -eq 2 ] || fail "supervisor did not retry the failed stage"
assert_contains "$(cat "$tmp/supervisor-runtime/supervisor.log")" 'stage failed rc=1 attempt=1' \
  "supervisor did not record the injected failure"
assert_contains "$(cat "$tmp/supervisor-runtime/supervisor.state")" 'status=stopped' \
  "bounded supervisor test did not stop cleanly"

echo "PIPELINE TESTS OK"
