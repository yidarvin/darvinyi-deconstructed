#!/usr/bin/env bash
# Deconstructed — autonomous Codex queue driver. Lives in the repo root.
set -euo pipefail

ROOT="$(CDPATH= cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
cd "$ROOT"
. scripts/pipeline-lib.sh

BUILD_MODEL="${BUILD_MODEL:-gpt-5.6-terra}"
CRITIC_MODEL="${CRITIC_MODEL:-gpt-5.6-terra}"
SOL_MODEL="${SOL_MODEL:-gpt-5.6-sol}"
EFFORT="high"
CODEX_FULL_ACCESS="${CODEX_FULL_ACCESS:-1}"
CODEX_BIN="${CODEX_BIN:-codex}"
STAGE_TIMEOUT_SECONDS="${STAGE_TIMEOUT_SECONDS:-14400}"
STAGE_POLL_SECONDS="${STAGE_POLL_SECONDS:-5}"
MIN_FREE_MB="${PIPELINE_MIN_FREE_MB:-8192}"
RUNTIME="${PIPELINE_RUNTIME_DIR:-$ROOT/.pipeline/runtime}"
SUMMARY_LOG="$ROOT/.pipeline/log"
SUMMARY_LOG="${PIPELINE_SUMMARY_LOG:-$SUMMARY_LOG}"
LAST_FAILURE="$RUNTIME/last-failure"
PUSH_CHANGES="${PIPELINE_PUSH:-1}"
ALLOW_DIRTY="${PIPELINE_ALLOW_DIRTY:-0}"

DRY_RUN=0
args=()
for arg in "$@"; do
  case "$arg" in
    --dry-run) DRY_RUN=1 ;;
    *) args+=("$arg") ;;
  esac
done
set -- "${args[@]}"

CHILD_PID=""
LOCK_HELD=0

cleanup() {
  if [ "$LOCK_HELD" -eq 1 ]; then
    pipeline_lock_release
    LOCK_HELD=0
  fi
}

on_signal() {
  echo ""
  echo "!! interrupted — stopping run.sh and its Codex process tree"
  [ -z "$CHILD_PID" ] || pipeline_terminate_tree "$CHILD_PID"
  [ -z "$CHILD_PID" ] || wait "$CHILD_PID" 2>/dev/null || true
  cleanup
  exit 130
}
trap on_signal INT TERM HUP
trap cleanup EXIT

[ -f data/registry.json ] || { echo "!! data/registry.json missing"; exit 1; }
[ -d prompts ] || { echo "!! prompts/ missing — run ./update.sh first"; exit 1; }

usage() {
  cat <<'EOF'
usage: ./run.sh [--dry-run] COMMAND

Queue commands:
  next                       select and run one atomic queue unit (default)
  loop [N]                   run up to N units (default 12)
  source|build|critique      run that role directly
  ship|renderer|recover      run integration, renderer, or recovery role
  status                     read-only queue and runtime dashboard
  decision                   print the next queue decision only
  doctor                     read-only Codex/runtime preflight

Persistent service commands:
  start                      install/start the durable launchd supervisor
  stop                       stop the launchd supervisor
  restart                    reinstall/restart the launchd supervisor
  service-status             inspect launchd state
  daemon                     run the supervisor in the foreground
EOF
}

fingerprint() {
  local head tree registry
  head="$(git rev-parse HEAD 2>/dev/null || echo none)"
  tree="$(git status --porcelain 2>/dev/null | shasum | awk '{print $1}')"
  registry="$(shasum data/registry.json | awk '{print $1}')"
  printf '%s|%s|%s\n' "$head" "$tree" "$registry"
}

tree_dirty() {
  [ -n "$(git status --porcelain 2>/dev/null)" ]
}

decide() {
python3 - "$1" <<'PYEOF'
import glob, json, os, sys

mode = sys.argv[1]
r = json.load(open("data/registry.json"))
ph = r["photographers"]
if any("stage" not in e or "wave" not in e for e in ph):
    print("Registry not migrated.")
    print("NEXT setup 0 :: run ./update.sh first")
    sys.exit(0)

IMG = (".jpg", ".jpeg", ".png", ".tif", ".tiff", ".webp")
def nfiles(d, exts=IMG):
    return len([f for f in glob.glob(os.path.join(d, "*")) if f.lower().endswith(exts)]) if os.path.isdir(d) else 0

def verdict(slug):
    p = f"content/{slug}/critique.md"
    if not os.path.exists(p):
        return "-"
    first = open(p).readline().strip().lower()
    return first.replace("verdict:", "").strip() or "-"

rows = []
for e in ph:
    s = e["slug"]
    rows.append(dict(
        slug=s, wave=e["wave"], stage=e["stage"], rights=e["rights"],
        minimum=int(e.get("minImages", 4)),
        raw=nfiles(f"raw/{s}"), img=nfiles(f"content/{s}/images", (".jpg",)),
        ovl=nfiles(f"content/{s}/overlays", (".json",)),
        needed=os.path.exists(f"content/{s}/NEEDED.md"), verdict=verdict(s),
    ))

renderer_done = os.path.exists(".pipeline/renderer.done")
if not renderer_done:
    for root, _, files in os.walk("src"):
        if any("OverlayRenderer" in f for f in files):
            renderer_done = True
            break
revises = [x["slug"] for x in rows if x["verdict"] == "revise"]
audit_count = 0
if os.path.exists("needs-review.txt"):
    audit_count = sum(1 for line in open("needs-review.txt") if line.strip())
waves = sorted({x["wave"] for x in rows})

def shipmark(w):
    return os.path.exists(f".pipeline/wave{w}.shipped")

if mode == "status":
    print(f"{'wave':>4} {'pend':>5} {'srcd':>5} {'built':>5} {'appr':>5}  flags")
    for w in waves:
        ws = [x for x in rows if x["wave"] == w]
        c = lambda st: sum(1 for x in ws if x["stage"] == st)
        waiting = sum(1 for x in ws if x["stage"] == "sourced" and x["raw"] < x["minimum"])
        flags = []
        if waiting:
            flags.append(f"auto-source recovery: {waiting}")
        if shipmark(w):
            flags.append("shipped")
        print(f"{w:>4} {c('pending'):>5} {c('sourced'):>5} {c('built'):>5} {c('approved'):>5}  {' '.join(flags)}")
    if revises:
        print(f"\nopen critiques (revise): {', '.join(revises)}")
    if os.path.exists("needs-review.txt"):
        print("\nneeds-review.txt (automatic overlay audits):")
        print(open("needs-review.txt").read().strip())
    sys.exit(0)

def out(action, wave, reason):
    print(f"NEXT {action} {wave} :: {reason}")
    sys.exit(0)

if not renderer_done:
    out("renderer", 0, "OverlayRenderer component not built yet (one-time)")
if revises:
    out("build", 0, f"resolve first open critique: {revises[0]}")
if audit_count:
    out("build", 0, f"automatically close the next of {audit_count} overlay audit records")

for w in waves:
    ws = [x for x in rows if x["wave"] == w]
    if all(x["stage"] == "approved" for x in ws) and shipmark(w):
        continue
    if any(x["stage"] == "pending" for x in ws):
        out("source", w, f"wave {w} has {sum(1 for x in ws if x['stage']=='pending')} photographers to source")
    ready = [x for x in ws if x["stage"] == "sourced" and x["raw"] >= x["minimum"]]
    waiting = [x for x in ws if x["stage"] == "sourced" and x["raw"] < x["minimum"]]
    awaiting = [x for x in ws if x["stage"] == "built" and x["verdict"] in ("-", "resolved")]
    if awaiting:
        out("critique", w, f"wave {w}: critique next of {len(awaiting)} built chapters")
    if ready:
        out("build", w, f"wave {w}: build next of {len(ready)} sourced chapters" + (f" ({len(waiting)} need automatic source recovery)" if waiting else ""))
    if waiting:
        out("source", w, f"wave {w}: recover the next of {len(waiting)} underfilled source sets")
    if all(x["stage"] == "approved" for x in ws) and not shipmark(w):
        out("ship", w, f"wave {w} fully approved — integration pass")
    out("critique", w, f"wave {w}: continue the review cycle")

out("done", 0, "all waves approved and shipped — the book is complete")
PYEOF
}

next_decision() {
  if tree_dirty; then
    echo "NEXT recover 0 :: repair an interrupted dirty working tree"
  elif [ -f "$LAST_FAILURE" ]; then
    echo "NEXT recover 0 :: close the recorded deterministic stage failure"
  else
    decide next | tail -1
  fi
}

runtime_status() {
  echo ""
  echo "runtime"
  if [ -f "$RUNTIME/supervisor.state" ]; then
    sed 's/^/  /' "$RUNTIME/supervisor.state"
  else
    echo "  status=stopped"
  fi
  if [ -f "$RUNTIME/runner.lock/pid" ]; then
    owner="$(sed -n '1p' "$RUNTIME/runner.lock/pid")"
    if kill -0 "$owner" 2>/dev/null; then
      echo "  active_runner_pid=$owner"
    else
      echo "  stale_runner_pid=$owner"
    fi
  fi
}

codex_command() {
  local model="$1" prompt="$2"
  CODEX_CMD=("$CODEX_BIN" --search --enable multi_agent -m "$model" -c "model_reasoning_effort=\"$EFFORT\"" -C "$ROOT")
  if [ "$CODEX_FULL_ACCESS" = "1" ]; then
    CODEX_CMD+=(--dangerously-bypass-approvals-and-sandbox)
  else
    CODEX_CMD+=(-s workspace-write -a on-request)
  fi
  CODEX_CMD+=(exec --ephemeral "$prompt")
}

codex_args() {
  codex_command "$1" "$2"
  printf '%q ' "${CODEX_CMD[@]}"
}

run_codex() {
  local model="$1" prompt="$2" started now rc timed_out=0
  codex_command "$model" "$prompt"
  "${CODEX_CMD[@]}" </dev/null &
  CHILD_PID=$!
  started="$(date +%s)"
  while kill -0 "$CHILD_PID" 2>/dev/null; do
    sleep "$STAGE_POLL_SECONDS"
    now="$(date +%s)"
    if [ $((now - started)) -ge "$STAGE_TIMEOUT_SECONDS" ]; then
      timed_out=1
      echo "!! Codex stage exceeded ${STAGE_TIMEOUT_SECONDS}s; terminating process tree"
      pipeline_terminate_tree "$CHILD_PID"
      sleep 2
      kill -KILL "$CHILD_PID" 2>/dev/null || true
      break
    fi
  done
  if wait "$CHILD_PID"; then rc=0; else rc=$?; fi
  CHILD_PID=""
  [ "$timed_out" -eq 0 ] || return 124
  return "$rc"
}

record_failure() {
  local stage="$1" wave="$2" rc="$3" reason="$4" tmp="$LAST_FAILURE.tmp.$$"
  mkdir -p "$RUNTIME"
  {
    echo "stage=$stage"
    echo "wave=$wave"
    echo "rc=$rc"
    echo "reason=$reason"
    echo "at=$(date '+%F %T')"
  } > "$tmp"
  mv -f "$tmp" "$LAST_FAILURE"
}

append_summary() {
  local stage="$1" wave="$2" model="$3" rc="$4"
  mkdir -p .pipeline
  printf '%s %s wave=%s model=%s effort=%s rc=%s\n' "$(date '+%F %T')" "$stage" "$wave" "$model" "$EFFORT" "$rc" >> "$SUMMARY_LOG"
}

run_stage() {
  local stage="$1" wave="${2:-0}" model prompt before after rc=0 had_failure=0
  case "$stage" in critique) model="$CRITIC_MODEL" ;; *) model="$BUILD_MODEL" ;; esac
  [ -f "prompts/$stage.md" ] || { echo "!! prompt missing: prompts/$stage.md"; return 2; }
  prompt="$(<"prompts/$stage.md")"
  echo ""
  echo ">>>> running: $stage (model: $model, effort: $EFFORT, timeout: ${STAGE_TIMEOUT_SECONDS}s)"
  if [ "$DRY_RUN" -eq 1 ]; then
    echo "dry run: $(codex_args "$model" "$prompt")"
    return 0
  fi

  command -v "$CODEX_BIN" >/dev/null 2>&1 || { echo "!! Codex CLI is not on PATH: $CODEX_BIN"; return 127; }
  free_mb="$(pipeline_free_mb "$ROOT")"
  if [ "$free_mb" -lt "$MIN_FREE_MB" ]; then
    echo "!! only ${free_mb}MB free; supervisor will prune safe raw inputs before retry"
    return 73
  fi

  before="$(fingerprint)"
  [ -f "$LAST_FAILURE" ] && had_failure=1
  if [ "$PUSH_CHANGES" = "1" ] && git rev-parse --abbrev-ref '@{upstream}' >/dev/null 2>&1; then
    ahead="$(git rev-list --count '@{upstream}..HEAD')"
    if [ "$ahead" -gt 0 ]; then
      echo ">>>> pushing $ahead committed unit(s) left by an interrupted run"
      git push || return 69
    fi
  fi
  run_codex "$model" "$prompt" || rc=$?
  if [ "$rc" -ne 0 ]; then
    append_summary "$stage" "$wave" "$model" "$rc"
    echo "!! stage '$stage' exited with status $rc"
    if tree_dirty; then record_failure "$stage" "$wave" "$rc" "codex-left-dirty-tree"; fi
    return "$rc"
  fi

  if tree_dirty; then
    append_summary "$stage" "$wave" "$model" 70
    record_failure "$stage" "$wave" 70 "successful-codex-exit-left-uncommitted-changes"
    echo "!! stage left uncommitted changes; automatic recovery owns them"
    return 70
  fi

  if ! python3 scripts/validate_pipeline.py; then
    append_summary "$stage" "$wave" "$model" 65
    record_failure "$stage" "$wave" 65 "pipeline-invariant-gate-failed"
    return 65
  fi
  if ! bash scripts/check.sh; then
    append_summary "$stage" "$wave" "$model" 65
    record_failure "$stage" "$wave" 65 "full-project-gate-failed"
    return 65
  fi

  case "$stage" in
    renderer) touch .pipeline/renderer.done ;;
    ship) touch ".pipeline/wave${wave}.shipped" ;;
  esac
  if [ "$stage" = "renderer" ] || [ "$stage" = "ship" ]; then
    git add .pipeline/renderer.done .pipeline/wave*.shipped
    if ! git diff --cached --quiet; then
      git commit -m "pipeline: marker after $stage (wave $wave)"
    fi
  fi

  after="$(fingerprint)"
  # Recovery is allowed to be a verified no-op: when its deterministic gates
  # pass, clearing a stale failure marker is the observable progress. Treating
  # that case as an error traps the supervisor in an endless recovery loop.
  if [ "$before" = "$after" ] && [ "$stage" != "recover" ]; then
    append_summary "$stage" "$wave" "$model" 76
    record_failure "$stage" "$wave" 76 "stage-exited-zero-without-progress"
    echo "!! stage exited 0 but made no observable progress"
    return 76
  fi

  if [ "$PUSH_CHANGES" = "1" ] && ! git push; then
    append_summary "$stage" "$wave" "$model" 69
    echo "!! push failed; committed work is preserved and will be pushed before the next model call"
    return 69
  fi
  rm -f "$LAST_FAILURE"
  append_summary "$stage" "$wave" "$model" 0
  return 0
}

doctor() {
  local failures=0 cache legacy free_mb plist
  command -v "$CODEX_BIN" >/dev/null 2>&1 || { echo "FAIL Codex CLI not found: $CODEX_BIN"; failures=$((failures + 1)); }
  if command -v "$CODEX_BIN" >/dev/null 2>&1; then
    echo "OK   $($CODEX_BIN --version 2>&1 | tail -1)"
    if "$CODEX_BIN" login status 2>&1 | rg -q '^Logged in'; then
      echo "OK   Codex authentication active"
    else
      echo "FAIL Codex authentication is not active"
      failures=$((failures + 1))
    fi
  fi
  cache="${CODEX_HOME:-${HOME}/.codex}/models_cache.json"
  if [ ! -f "$cache" ]; then
    echo "FAIL Codex model cache not found: $cache"
    failures=$((failures + 1))
  elif ! jq -e --arg a "$BUILD_MODEL" --arg b "$SOL_MODEL" '
      [.models[] | select(.slug == $a or .slug == $b)
       | select(any(.supported_reasoning_levels[]; .effort == "high")) | .slug]
      | unique | length == 2' "$cache" >/dev/null; then
    echo "FAIL required models/high effort unavailable: $BUILD_MODEL, $SOL_MODEL"
    failures=$((failures + 1))
  else
    echo "OK   models: $BUILD_MODEL and $SOL_MODEL support High"
  fi
  if "$CODEX_BIN" features list 2>/dev/null | awk '$1 == "multi_agent" && $3 == "true" { found=1 } END { exit !found }'; then
    echo "OK   Codex multi_agent enabled"
  else
    echo "FAIL Codex multi_agent is not enabled"
    failures=$((failures + 1))
  fi
  legacy="clau""de"
  vendor="Clau""de"
  if pgrep -f "/Library/Application Support/${vendor}/${legacy}-code/.*/${legacy}|${legacy} -p" >/dev/null 2>&1; then
    echo "FAIL retired CLI workers are still running"
    failures=$((failures + 1))
  else
    echo "OK   no retired CLI workers running"
  fi
  free_mb="$(pipeline_free_mb "$ROOT")"
  if [ "$free_mb" -lt "$MIN_FREE_MB" ]; then
    echo "FAIL free disk ${free_mb}MB is below ${MIN_FREE_MB}MB floor"
    failures=$((failures + 1))
  else
    echo "OK   free disk ${free_mb}MB"
  fi
  if python3 scripts/validate_pipeline.py >/dev/null; then
    echo "OK   pipeline invariants"
  else
    echo "FAIL pipeline invariants"
    failures=$((failures + 1))
  fi
  plist="$HOME/Library/LaunchAgents/com.darvinyi.deconstructed.pipeline.plist"
  if [ -f "$plist" ]; then
    if rg -q --fixed-strings "$ROOT/scripts/pipeline-supervisor.sh" "$plist" && ! rg -q '/tmp/.*pipeline-supervisor' "$plist"; then
      echo "OK   durable launchd supervisor path"
    else
      echo "FAIL launchd plist does not use the repository supervisor"
      failures=$((failures + 1))
    fi
  else
    echo "INFO launchd service not installed yet (run ./run.sh start)"
  fi
  [ "$failures" -eq 0 ] || return 1
  echo "DOCTOR OK"
}

cmd="${1:-next}"
case "$cmd" in
  help|-h|--help) usage ;;
  status)
    decide status
    runtime_status
    echo ""
    next_decision
    ;;
  decision) next_decision ;;
  doctor) doctor ;;
  start) exec scripts/pipeline-service.sh install ;;
  stop) exec scripts/pipeline-service.sh stop ;;
  restart) exec scripts/pipeline-service.sh install ;;
  service-status) exec scripts/pipeline-service.sh status ;;
  daemon) exec scripts/pipeline-supervisor.sh ;;
  source|build|critique|ship|renderer|recover)
    if [ "$DRY_RUN" -eq 0 ] && [ "$cmd" != "recover" ] && [ "$ALLOW_DIRTY" != "1" ] && tree_dirty; then
      echo "!! refusing direct '$cmd' on a dirty tree; run ./run.sh recover or ./run.sh next" >&2
      exit 75
    fi
    if [ "$DRY_RUN" -eq 0 ]; then
      pipeline_lock_acquire "$RUNTIME"
      LOCK_HELD=1
    fi
    run_stage "$cmd" 0
    ;;
  next)
    if [ "$DRY_RUN" -eq 0 ]; then
      pipeline_lock_acquire "$RUNTIME"
      LOCK_HELD=1
    fi
    line="$(next_decision)"
    echo "$line"
    action="$(echo "$line" | awk '{print $2}')"
    wave="$(echo "$line" | awk '{print $3}')"
    case "$action" in done|setup) exit 0 ;; *) run_stage "$action" "$wave" ;; esac
    ;;
  loop)
    if [ "$DRY_RUN" -eq 0 ]; then
      pipeline_lock_acquire "$RUNTIME"
      LOCK_HELD=1
    fi
    max="${2:-12}"
    if [ "$DRY_RUN" -eq 1 ]; then max=1; fi
    case "$max" in ''|*[!0-9]*) echo "loop count must be a positive integer" >&2; exit 2 ;; esac
    [ "$max" -ge 1 ] || { echo "loop count must be at least 1" >&2; exit 2; }
    for i in $(seq 1 "$max"); do
      line="$(next_decision)"
      action="$(echo "$line" | awk '{print $2}')"
      wave="$(echo "$line" | awk '{print $3}')"
      reason="${line#*:: }"
      echo ""
      echo "== loop step $i/$max: $action (wave $wave) — $reason"
      case "$action" in
        done|setup) echo "$reason"; break ;;
        *) run_stage "$action" "$wave" ;;
      esac
    done
    ;;
  *) usage >&2; exit 2 ;;
esac
