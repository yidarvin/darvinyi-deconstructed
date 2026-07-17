#!/usr/bin/env bash
# Behavioral regression gate for the unattended Codex pipeline.
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

# The parent runner deliberately supplies GIT_CONFIG_* command-line overrides
# that block a stage agent from committing or publishing.  This regression
# suite creates ordinary throwaway repositories first, then injects those
# controls explicitly where it verifies them; inherited overrides would reject
# the fixture baseline commits before that assertion can run.
while IFS='=' read -r name _; do
  case "$name" in
    GIT_CONFIG_COUNT|GIT_CONFIG_KEY_[0-9]*|GIT_CONFIG_VALUE_[0-9]*) unset "$name" ;;
  esac
done < <(env)

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
assert_contains "$service_plan" 'git:[[:space:]]+/usr/bin/git' \
  "launchd plan must pin the FDA-approved Apple Git executable"
grep -q 'bootstrap_service' scripts/pipeline-service.sh || fail "service controller lacks bounded bootstrap retry"

# Every Git invocation inherited by a model must resolve through the service shim
# to Apple's stable executable, not Homebrew's versioned ad-hoc binary.
[ "$(PATH="$ROOT/scripts/service-bin:/opt/homebrew/bin:/usr/bin:/bin" command -v git)" = "$ROOT/scripts/service-bin/git" ] \
  || fail "service PATH does not select the pinned Git shim"
grep -Fq 'exec /usr/bin/git "$@"' scripts/service-bin/git \
  || fail "service Git shim does not execute /usr/bin/git"

help="$(./run.sh help)"
for command in start stop service-status daemon; do
  assert_contains "$help" "${command}" "run.sh help is missing '${command}'"
done

dry_runtime="$tmp/dry-runtime"
dry="$(PIPELINE_RUNTIME_DIR="$dry_runtime" ./run.sh --dry-run next)"
[ ! -e "$dry_runtime" ] || fail "run.sh dry-run created runtime state"
assert_contains "$dry" 'gpt-5\.6-terra' "active stages must use Terra"
assert_contains "$dry" 'model_reasoning_effort=.*high' "active stages must use High effort"
assert_contains "$dry" 'BINDING WORK UNIT' "next does not bind Codex to the selected atomic unit"
decision="$(./run.sh decision)"
[ "$(printf '%s\n' "$decision" | awk '{print $4}')" != "::" ] \
  || fail "queue decision does not expose an exact work-unit identifier"
grep -Fq 'scripts/work_unit.py validate' run.sh \
  || fail "runner does not enforce the exact-unit postcondition"
grep -Fq 'remote.origin.pushurl' run.sh \
  || fail "Codex child can publish before exact-unit validation"

# The child Git transaction controls are behavioral: a normal commit works in
# the fixture, while the Codex-only hooks reject a commit and the injected
# pushurl prevents publishing to the real configured remote.
/usr/bin/git init -q "$tmp/agent-git"
/usr/bin/git -C "$tmp/agent-git" config user.name pipeline-test
/usr/bin/git -C "$tmp/agent-git" config user.email pipeline@example.invalid
printf 'one\n' > "$tmp/agent-git/file.txt"
/usr/bin/git -C "$tmp/agent-git" add file.txt
/usr/bin/git -C "$tmp/agent-git" commit -q -m initial
set +e
GIT_CONFIG_COUNT=1 GIT_CONFIG_KEY_0=core.hooksPath \
  GIT_CONFIG_VALUE_0="$ROOT/scripts/agent-git-hooks" \
  /usr/bin/git -C "$tmp/agent-git" commit --allow-empty -m escaped \
  > "$tmp/agent-commit.log" 2>&1
agent_commit_rc=$?
set -e
[ "$agent_commit_rc" -ne 0 ] || fail "Codex child Git hooks allowed a commit before validation"
assert_contains "$(cat "$tmp/agent-commit.log")" 'parent runner owns commit' \
  "blocked child commit did not explain transaction ownership"
pushurl="$(GIT_CONFIG_COUNT=1 GIT_CONFIG_KEY_0=remote.origin.pushurl \
  GIT_CONFIG_VALUE_0="$tmp/agent-publish-blocked" \
  /usr/bin/git -C "$tmp/agent-git" config --get remote.origin.pushurl)"
[ "$pushurl" = "$tmp/agent-publish-blocked" ] \
  || fail "Codex child push URL was not overridden"

queue_dry="$(./runqueue.sh --dry-run -n 1)"
assert_contains "$queue_dry" 'gpt-5\.6-sol' "runqueue must use Sol"
assert_contains "$queue_dry" 'model_reasoning_effort=.*high' "runqueue must use High effort"

python3 scripts/validate_pipeline.py

# Parent-owned commits mean an approving critique is deliberately dirty while
# set_stage regenerates the derived site registry. That path must stamp today's
# approval date without shadowing datetime.date.
PIPELINE_TEST_TMP="$tmp" python3 - <<'PY'
from datetime import date
import importlib.util
import os
from pathlib import Path
import subprocess

root = Path(os.environ["PIPELINE_TEST_TMP"]) / "dirty-approval"
(root / "content/example").mkdir(parents=True)
critique = root / "content/example/critique.md"
critique.write_text("verdict: resolved\n", encoding="utf-8")
subprocess.run(["/usr/bin/git", "init", "-q", str(root)], check=True)
subprocess.run(["/usr/bin/git", "-C", str(root), "config", "user.name", "pipeline-test"], check=True)
subprocess.run(["/usr/bin/git", "-C", str(root), "config", "user.email", "pipeline@example.invalid"], check=True)
subprocess.run(["/usr/bin/git", "-C", str(root), "add", "."], check=True)
subprocess.run(["/usr/bin/git", "-C", str(root), "commit", "-q", "-m", "baseline"], check=True)
critique.write_text("verdict: approve\n", encoding="utf-8")

spec = importlib.util.spec_from_file_location("gen_site_registry", "scripts/gen_site_registry.py")
module = importlib.util.module_from_spec(spec)
spec.loader.exec_module(module)
module.REPO = str(root)
assert module.approved_date("example") == date.today().isoformat()
PY

# Exact-unit selection is a data boundary, not a prompt preference. Given a
# selected Coburn critique resolution, advancing Rothstein must be rejected even
# if the resulting registry is globally valid.
mkdir -p "$tmp/unit-fixture/data" \
  "$tmp/unit-fixture/content/alvin-langdon-coburn" \
  "$tmp/unit-fixture/content/arthur-rothstein"
printf '%s\n' \
  '{"photographers":[' \
  '  {"slug":"alvin-langdon-coburn","wave":4,"rights":"pd","stage":"built"},' \
  '  {"slug":"arthur-rothstein","wave":4,"rights":"pd","stage":"sourced"}' \
  ']}' > "$tmp/unit-fixture/data/registry.json"
printf 'verdict: revise\n' > "$tmp/unit-fixture/content/alvin-langdon-coburn/critique.md"
python3 scripts/work_unit.py snapshot --root "$tmp/unit-fixture" --output "$tmp/unit-before.json"
python3 - "$tmp/unit-fixture/data/registry.json" <<'PY'
import json, sys
p = sys.argv[1]
data = json.load(open(p))
data["photographers"][1]["stage"] = "built"
open(p, "w").write(json.dumps(data) + "\n")
PY
set +e
python3 scripts/work_unit.py validate --root "$tmp/unit-fixture" \
  --before "$tmp/unit-before.json" --stage build --wave 0 \
  --unit alvin-langdon-coburn > "$tmp/wrong-unit.log" 2>&1
wrong_unit_rc=$?
set -e
[ "$wrong_unit_rc" -ne 0 ] || fail "exact-unit gate accepted Arthur while Coburn was selected"
assert_contains "$(cat "$tmp/wrong-unit.log")" 'arthur-rothstein.*changed outside selected unit' \
  "wrong-unit rejection did not name the escaped photographer"

# The matching selected-unit transition is accepted by the same public gate.
python3 - "$tmp/unit-fixture/data/registry.json" <<'PY'
import json, sys
p = sys.argv[1]
data = json.load(open(p))
data["photographers"][1]["stage"] = "sourced"
open(p, "w").write(json.dumps(data) + "\n")
PY
printf 'verdict: resolved\n' > "$tmp/unit-fixture/content/alvin-langdon-coburn/critique.md"
python3 scripts/work_unit.py validate --root "$tmp/unit-fixture" \
  --before "$tmp/unit-before.json" --stage build --wave 0 \
  --unit alvin-langdon-coburn > "$tmp/right-unit.log" 2>&1 \
  || fail "exact-unit gate rejected the selected Coburn resolution: $(cat "$tmp/right-unit.log")"

# A correct state transition with a file outside the selected photographer is
# still a boundary violation. Global queue validity must not mask path escape.
/usr/bin/git init -q "$tmp/unit-fixture"
/usr/bin/git -C "$tmp/unit-fixture" config user.name pipeline-test
/usr/bin/git -C "$tmp/unit-fixture" config user.email pipeline@example.invalid
/usr/bin/git -C "$tmp/unit-fixture" add .
/usr/bin/git -C "$tmp/unit-fixture" commit -q -m baseline
path_head="$(/usr/bin/git -C "$tmp/unit-fixture" rev-parse HEAD)"
python3 scripts/work_unit.py snapshot --root "$tmp/unit-fixture" --output "$tmp/path-before.json"
printf 'verdict: revise\n' > "$tmp/unit-fixture/content/alvin-langdon-coburn/critique.md"
printf 'escaped\n' > "$tmp/unit-fixture/unrelated.txt"
set +e
python3 scripts/work_unit.py validate --root "$tmp/unit-fixture" \
  --before "$tmp/path-before.json" --before-head "$path_head" \
  --stage critique --wave 4 --unit alvin-langdon-coburn \
  > "$tmp/path-escape.log" 2>&1
path_escape_rc=$?
set -e
[ "$path_escape_rc" -ne 0 ] || fail "exact-unit gate accepted an unrelated changed path"
assert_contains "$(cat "$tmp/path-escape.log")" 'unrelated.txt.*changed outside selected unit' \
  "path escape rejection did not name the unrelated file"

grep -q 'Select exactly one' prompts/source.md || fail "source prompt is not one-unit-per-call"
grep -q 'Select exactly one' prompts/build.md || fail "build prompt is not one-unit-per-call"
grep -q 'Select exactly one' prompts/critique.md || fail "critique prompt is not one-unit-per-call"
grep -q 'default 4' prompts/source.md || fail "source prompt does not honor default minImages=4"

# launchd supplies only the system path. The full project gate must not depend
# on Codex's bundled ripgrep binary being present there.
PATH=/usr/bin:/bin bash scripts/check_no_legacy_runtime.sh \
  || fail "legacy runtime scan requires a non-system search utility"

mkdir -p "$tmp/runtime"

# Git must start from a neutral cwd and use -C to address the repository. A
# synchronized branch must not execute `git push` at all.
mkdir -p "$tmp/git-home"
printf '%s\n' \
  '#!/usr/bin/env bash' \
  'printf "cwd=%s args=%s\\n" "$PWD" "$*" >> "$GIT_TRACE_FILE"' \
  'case "$*" in' \
  '  *"rev-parse --abbrev-ref @{upstream}"*) echo origin/main ;;' \
  '  *"rev-list --count origin/main..HEAD"*) echo 0 ;;' \
  '  *" push"*) echo PUSH_CALLED >> "$GIT_TRACE_FILE"; exit 99 ;;' \
  'esac' > "$tmp/fake-git"
chmod +x "$tmp/fake-git"
HOME="$tmp/git-home" PIPELINE_GIT_BIN="$tmp/fake-git" GIT_TRACE_FILE="$tmp/git-trace" \
  bash -c '. scripts/pipeline-lib.sh; pipeline_git "$1" status; pipeline_push_if_ahead "$1"' _ "$ROOT" \
  || fail "neutral-cwd/no-op Git synchronization failed"
assert_contains "$(cat "$tmp/git-trace")" "cwd=$tmp/git-home args=-C $ROOT status" \
  "pipeline Git did not start from the neutral HOME directory with -C"
assert_not_contains "$(cat "$tmp/git-trace")" 'PUSH_CALLED' \
  "a synchronized branch executed a needless push"

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
  ./run.sh next > "$tmp/timeout.log" 2>&1
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

# A repeated Git sync failure is infrastructure. It must be retried without ever
# invoking the expensive recovery model, even at the old every-third-failure edge.
printf '%s\n' \
  '#!/usr/bin/env bash' \
  'case "$1" in' \
  '  decision) echo "NEXT critique 4 :: injected sync failure" ;;' \
  '  next) n=$(cat "$CALLS" 2>/dev/null || echo 0); echo $((n + 1)) > "$CALLS"; exit 69 ;;' \
  '  recover) touch "$RECOVERY_CALLED"; exit 0 ;;' \
  '  *) exit 2 ;;' \
  'esac' > "$tmp/fake-sync-runner"
chmod +x "$tmp/fake-sync-runner"
PATH=/usr/bin:/bin CALLS="$tmp/sync-calls" RECOVERY_CALLED="$tmp/recovery-called" \
  PIPELINE_RUNNER="$tmp/fake-sync-runner" \
  PIPELINE_RUNTIME_DIR="$tmp/sync-supervisor-runtime" PIPELINE_MIN_FREE_MB=1 \
  PIPELINE_BASE_BACKOFF_SECONDS=0 PIPELINE_MAX_BACKOFF_SECONDS=0 \
  PIPELINE_SUCCESS_DELAY_SECONDS=0 PIPELINE_MAX_CYCLES=3 \
  bash scripts/pipeline-supervisor.sh > "$tmp/sync-supervisor.stdout" 2> "$tmp/sync-supervisor.stderr"
[ "$(cat "$tmp/sync-calls")" -eq 3 ] || fail "supervisor did not retry Git synchronization deterministically"
[ ! -e "$tmp/recovery-called" ] || fail "Git synchronization failure invoked a recovery model"
assert_contains "$(cat "$tmp/sync-supervisor-runtime/supervisor.log")" 'no recovery model' \
  "Git synchronization failure was not classified as infrastructure"

echo "PIPELINE TESTS OK"
