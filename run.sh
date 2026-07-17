#!/usr/bin/env bash
# Deconstructed — autonomous Codex queue driver. Lives in the repo root.
set -euo pipefail

ROOT="$(CDPATH= cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
cd "$ROOT"
export PATH="$ROOT/scripts/service-bin:$PATH"
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
PUBLISH_PENDING="$RUNTIME/publish-pending"
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
  head="$(pipeline_git "$ROOT" rev-parse HEAD 2>/dev/null || echo none)"
  tree="$(pipeline_git "$ROOT" status --porcelain 2>/dev/null | shasum | awk '{print $1}')"
  registry="$(shasum data/registry.json | awk '{print $1}')"
  printf '%s|%s|%s\n' "$head" "$tree" "$registry"
}

tree_dirty() {
  [ -n "$(pipeline_git "$ROOT" status --porcelain 2>/dev/null)" ]
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
audit_records = []
if os.path.exists("needs-review.txt"):
    audit_records = [line.strip() for line in open("needs-review.txt") if line.strip()]
audit_count = len(audit_records)
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

def out(action, wave, unit, reason):
    print(f"NEXT {action} {wave} {unit} :: {reason}")
    sys.exit(0)

if not renderer_done:
    out("renderer", 0, "renderer", "OverlayRenderer component not built yet (one-time)")
if revises:
    out("build", 0, revises[0], f"resolve first open critique: {revises[0]}")
if audit_count:
    audit_path = audit_records[0]
    parts = audit_path.split("/")
    audit_slug = parts[1] if len(parts) > 2 and parts[0] == "content" else "unknown"
    out("build", 0, f"audit:{audit_slug}", f"automatically close the next of {audit_count} overlay audit records")

for w in waves:
    ws = [x for x in rows if x["wave"] == w]
    if all(x["stage"] == "approved" for x in ws) and shipmark(w):
        continue
    pending = [x for x in ws if x["stage"] == "pending"]
    if pending:
        out("source", w, pending[0]["slug"], f"wave {w} has {len(pending)} photographers to source")
    ready = [x for x in ws if x["stage"] == "sourced" and x["raw"] >= x["minimum"]]
    waiting = [x for x in ws if x["stage"] == "sourced" and x["raw"] < x["minimum"]]
    awaiting = [x for x in ws if x["stage"] == "built" and x["verdict"] in ("-", "resolved")]
    if awaiting:
        out("critique", w, awaiting[0]["slug"], f"wave {w}: critique next of {len(awaiting)} built chapters")
    if ready:
        out("build", w, ready[0]["slug"], f"wave {w}: build next of {len(ready)} sourced chapters" + (f" ({len(waiting)} need automatic source recovery)" if waiting else ""))
    if waiting:
        out("source", w, waiting[0]["slug"], f"wave {w}: recover the next of {len(waiting)} underfilled source sets")
    if all(x["stage"] == "approved" for x in ws) and not shipmark(w):
        out("ship", w, f"wave-{w}", f"wave {w} fully approved — integration pass")
    out("recover", w, "runtime", f"wave {w}: inconsistent review state requires deterministic recovery")

out("done", 0, "complete", "all waves approved and shipped — the book is complete")
PYEOF
}

next_decision() {
  if tree_dirty; then
    echo "NEXT recover 0 runtime :: repair an interrupted dirty working tree"
  elif [ -f "$PUBLISH_PENDING" ]; then
    echo "NEXT publish 0 release :: retry the validated publication boundary"
  elif [ -f "$LAST_FAILURE" ]; then
    echo "NEXT recover 0 runtime :: close the recorded deterministic stage failure"
  else
    decide next | tail -1
  fi
}

publish_pending_release() {
  local description="validated publication boundary"
  if [ -f "$PUBLISH_PENDING" ]; then
    description="$(tr '\n' ' ' < "$PUBLISH_PENDING")"
  fi
  echo ">>>> publishing: $description"
  if [ "$DRY_RUN" -eq 1 ]; then
    echo "dry run: git push committed release boundary"
    return 0
  fi
  if ! pipeline_push_if_ahead "$ROOT"; then
    echo "!! publication synchronization failed; committed work and retry marker are preserved"
    return 69
  fi
  rm -f "$PUBLISH_PENDING"
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
  GIT_CONFIG_COUNT=2 \
  GIT_CONFIG_KEY_0=core.hooksPath \
  GIT_CONFIG_VALUE_0="$ROOT/scripts/agent-git-hooks" \
  GIT_CONFIG_KEY_1=remote.origin.pushurl \
  GIT_CONFIG_VALUE_1="$RUNTIME/agent-publish-blocked" \
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
  local stage="$1" wave="$2" rc="$3" reason="$4" unit="${5:-runtime}" \
    before_head="${6:-}" snapshot_path="${7:-}" tmp="$LAST_FAILURE.tmp.$$"
  mkdir -p "$RUNTIME"
  {
    echo "stage=$stage"
    echo "wave=$wave"
    echo "rc=$rc"
    echo "reason=$reason"
    echo "unit=$unit"
    echo "before_head=$before_head"
    echo "snapshot=$snapshot_path"
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
  local stage="$1" wave="${2:-0}" unit="${3:-}" model prompt before after rc=0 had_failure=0
  local before_head snapshot_path validation_stage validation_wave validation_unit validation_snapshot validation_head
  local binding_stage binding_wave binding_unit
  local old_verdict new_verdict="" commit_message publish_tmp ahead
  [ -n "$unit" ] && [ "$unit" != "::" ] || { echo "!! exact work unit missing for stage '$stage'"; return 64; }
  case "$stage" in critique) model="$CRITIC_MODEL" ;; *) model="$BUILD_MODEL" ;; esac
  [ -f "prompts/$stage.md" ] || { echo "!! prompt missing: prompts/$stage.md"; return 2; }
  binding_stage="$stage"
  binding_wave="$wave"
  binding_unit="$unit"
  if [ "$stage" = "recover" ] && [ -f "$LAST_FAILURE" ]; then
    binding_stage="$(sed -n 's/^stage=//p' "$LAST_FAILURE" | head -1)"
    binding_wave="$(sed -n 's/^wave=//p' "$LAST_FAILURE" | head -1)"
    binding_unit="$(sed -n 's/^unit=//p' "$LAST_FAILURE" | head -1)"
    [ -n "$binding_stage" ] || binding_stage="recover"
    [ -n "$binding_wave" ] || binding_wave=0
    [ -n "$binding_unit" ] || binding_unit="runtime"
  fi
  prompt="$(
    printf '%s\n' \
      'BINDING WORK UNIT — parent-selected transaction boundary' \
      "invocation_role=$stage" "validation_stage=$binding_stage" \
      "wave=$binding_wave" "unit=$binding_unit" \
      'Process exactly this unit. Do not select, edit, stage, commit, or push any other unit.' \
      'Do not commit or push. Leave the validated unit changes in the working tree; the parent runner validates and commits every unit locally, then publishes only approved chapters and integration boundaries.' \
      'If the unit cannot be completed, exit without starting another unit.' \
      '' 'ORIGINAL STAGE PROMPT' ''
    cat "prompts/$stage.md"
  )"
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

  mkdir -p "$RUNTIME"
  before="$(fingerprint)"
  before_head="$(pipeline_git "$ROOT" rev-parse HEAD)"
  snapshot_path="$RUNTIME/work-unit-before.$$.json"
  python3 scripts/work_unit.py snapshot --root "$ROOT" --output "$snapshot_path"
  [ -f "$LAST_FAILURE" ] && had_failure=1
  run_codex "$model" "$prompt" || rc=$?
  if [ "$rc" -ne 0 ]; then
    append_summary "$stage" "$wave" "$model" "$rc"
    echo "!! stage '$stage' exited with status $rc"
    after="$(fingerprint)"
    if [ "$before" != "$after" ]; then
      record_failure "$stage" "$wave" "$rc" "codex-left-partial-unit" "$unit" "$before_head" "$snapshot_path"
    else
      rm -f "$snapshot_path"
    fi
    return "$rc"
  fi

  validation_stage="$stage"
  validation_wave="$wave"
  validation_unit="$unit"
  validation_snapshot="$snapshot_path"
  validation_head="$before_head"
  if [ "$stage" = "recover" ] && [ -f "$LAST_FAILURE" ]; then
    validation_stage="$(sed -n 's/^stage=//p' "$LAST_FAILURE" | head -1)"
    validation_wave="$(sed -n 's/^wave=//p' "$LAST_FAILURE" | head -1)"
    validation_unit="$(sed -n 's/^unit=//p' "$LAST_FAILURE" | head -1)"
    validation_snapshot="$(sed -n 's/^snapshot=//p' "$LAST_FAILURE" | head -1)"
    validation_head="$(sed -n 's/^before_head=//p' "$LAST_FAILURE" | head -1)"
    [ -n "$validation_unit" ] || validation_unit="runtime"
    [ -f "$validation_snapshot" ] || validation_snapshot="$snapshot_path"
    [ -n "$validation_head" ] || validation_head="$before_head"
  fi

  if [ "$validation_stage" != "recover" ]; then
    if ! python3 scripts/work_unit.py validate --root "$ROOT" \
        --before "$validation_snapshot" --before-head "$validation_head" \
        --stage "$validation_stage" --wave "$validation_wave" --unit "$validation_unit"; then
      append_summary "$stage" "$wave" "$model" 77
      record_failure "$validation_stage" "$validation_wave" 77 \
        "work-unit-boundary-violation" "$validation_unit" "$validation_head" "$validation_snapshot"
      echo "!! exact work-unit boundary rejected the stage; nothing will be published"
      return 77
    fi
  fi

  if ! python3 scripts/validate_pipeline.py; then
    append_summary "$stage" "$wave" "$model" 65
    record_failure "$stage" "$wave" 65 "pipeline-invariant-gate-failed" "$validation_unit" "$validation_head" "$validation_snapshot"
    return 65
  fi
  if ! bash scripts/check.sh; then
    append_summary "$stage" "$wave" "$model" 65
    record_failure "$stage" "$wave" 65 "full-project-gate-failed" "$validation_unit" "$validation_head" "$validation_snapshot"
    return 65
  fi

  case "$stage" in
    renderer) touch .pipeline/renderer.done ;;
    ship) touch ".pipeline/wave${wave}.shipped" ;;
  esac
  if [ "$stage" = "renderer" ] || [ "$stage" = "ship" ]; then
    pipeline_git "$ROOT" add .pipeline/renderer.done .pipeline/wave*.shipped
    if ! pipeline_git "$ROOT" diff --cached --quiet; then
      pipeline_git "$ROOT" commit -m "pipeline: marker after $stage (wave $wave)"
    fi
  fi

  if [ "$validation_stage" != "recover" ]; then
    if ! python3 scripts/work_unit.py validate --root "$ROOT" \
        --before "$validation_snapshot" --before-head "$validation_head" \
        --stage "$validation_stage" --wave "$validation_wave" --unit "$validation_unit"; then
      append_summary "$stage" "$wave" "$model" 77
      record_failure "$validation_stage" "$validation_wave" 77 \
        "post-gate-work-unit-boundary-violation" "$validation_unit" "$validation_head" "$validation_snapshot"
      echo "!! full gate escaped the selected work unit; nothing will be published"
      return 77
    fi
  fi

  if tree_dirty; then
    case "$validation_stage" in
      source) commit_message="source: $validation_unit" ;;
      build)
        old_verdict="$(python3 -c 'import json,sys; d=json.load(open(sys.argv[1])); print(d["entries"][sys.argv[2]]["verdict"])' "$validation_snapshot" "${validation_unit#audit:}")"
        if [[ "$validation_unit" == audit:* ]]; then
          commit_message="audit overlay: ${validation_unit#audit:}"
        elif [ "$old_verdict" = "revise" ]; then
          commit_message="resolve critique: $validation_unit"
        else
          commit_message="build: $validation_unit"
        fi
        ;;
      critique)
        new_verdict="$(sed -n '1s/^verdict:[[:space:]]*//p' "content/$validation_unit/critique.md")"
        commit_message="critique: $validation_unit — $new_verdict"
        ;;
      ship) commit_message="ship: wave $validation_wave integration" ;;
      renderer) commit_message="build: overlay renderer" ;;
      *) commit_message="recover: runtime" ;;
    esac
    pipeline_git "$ROOT" add -A
    pipeline_git "$ROOT" commit -m "$commit_message"
  fi

  after="$(fingerprint)"
  # Recovery is allowed to be a verified no-op: when its deterministic gates
  # pass, clearing a stale failure marker is the observable progress. Treating
  # that case as an error traps the supervisor in an endless recovery loop.
  if [ "$before" = "$after" ] && [ "$stage" != "recover" ]; then
    append_summary "$stage" "$wave" "$model" 76
    record_failure "$stage" "$wave" 76 "stage-exited-zero-without-progress" "$validation_unit" "$validation_head" "$validation_snapshot"
    echo "!! stage exited 0 but made no observable progress"
    return 76
  fi

  if [ "$PUSH_CHANGES" = "1" ] && pipeline_should_publish "$validation_stage" "$new_verdict"; then
    publish_tmp="$PUBLISH_PENDING.tmp.$$"
    {
      echo "stage=$validation_stage"
      echo "unit=$validation_unit"
      echo "verdict=${new_verdict:-n/a}"
      echo "head=$(pipeline_git "$ROOT" rev-parse HEAD)"
    } > "$publish_tmp"
    mv -f "$publish_tmp" "$PUBLISH_PENDING"
    if ! publish_pending_release; then
      append_summary "$stage" "$wave" "$model" 69
      echo "!! publication failed; committed work is preserved and no recovery model will be invoked"
      return 69
    fi
  elif [ "$PUSH_CHANGES" = "1" ]; then
    ahead="$(pipeline_git "$ROOT" rev-list --count '@{upstream}..HEAD' 2>/dev/null || echo unknown)"
    echo ">>>> commit retained locally ($ahead ahead); next push is an approved chapter or integration boundary"
  fi
  rm -f "$LAST_FAILURE"
  rm -f "$snapshot_path"
  [ "$validation_snapshot" = "$snapshot_path" ] || rm -f "$validation_snapshot"
  append_summary "$stage" "$wave" "$model" 0
  return 0
}

doctor() {
  local failures=0 cache legacy free_mb plist
  command -v "$CODEX_BIN" >/dev/null 2>&1 || { echo "FAIL Codex CLI not found: $CODEX_BIN"; failures=$((failures + 1)); }
  if [ "$PIPELINE_GIT_BIN" = "/usr/bin/git" ] && [ -x "$PIPELINE_GIT_BIN" ]; then
    echo "OK   service Git pinned to $PIPELINE_GIT_BIN"
  else
    echo "FAIL service Git must be pinned to FDA-approved /usr/bin/git (got $PIPELINE_GIT_BIN)"
    failures=$((failures + 1))
  fi
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
    if rg -q --fixed-strings "$ROOT/scripts/pipeline-supervisor.sh" "$plist" \
        && rg -q '<string>/usr/bin/git</string>' "$plist" \
        && ! rg -q '/tmp/.*pipeline-supervisor' "$plist"; then
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
    line="$(next_decision)"
    action="$(echo "$line" | awk '{print $2}')"
    wave="$(echo "$line" | awk '{print $3}')"
    unit="$(echo "$line" | awk '{print $4}')"
    if [ "$cmd" != "$action" ]; then
      echo "!! direct '$cmd' would bypass queue decision: $line" >&2
      exit 64
    fi
    run_stage "$cmd" "$wave" "$unit"
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
    unit="$(echo "$line" | awk '{print $4}')"
    case "$action" in
      done|setup) exit 0 ;;
      publish) publish_pending_release ;;
      *) run_stage "$action" "$wave" "$unit" ;;
    esac
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
      unit="$(echo "$line" | awk '{print $4}')"
      reason="${line#*:: }"
      echo ""
      echo "== loop step $i/$max: $action (wave $wave) — $reason"
      case "$action" in
        done|setup) echo "$reason"; break ;;
        publish) publish_pending_release ;;
        *) run_stage "$action" "$wave" "$unit" ;;
      esac
    done
    ;;
  *) usage >&2; exit 2 ;;
esac
