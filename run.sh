#!/usr/bin/env bash
# Deconstructed — Codex pipeline driver. Lives in the repo root.
#
#   ./run.sh                         same as: ./run.sh next
#   ./run.sh next                    figure out the next step and RUN it
#   ./run.sh loop [N]                run successive steps (default max 12)
#   ./run.sh status                  local dashboard (no model call, no writes)
#   ./run.sh doctor                  verify the Codex runtime (no writes)
#   ./run.sh --dry-run next          print the resolved Codex command only
#   ./run.sh source|build|critique|ship|renderer

BUILD_MODEL="${BUILD_MODEL:-gpt-5.6-terra}"
CRITIC_MODEL="${CRITIC_MODEL:-gpt-5.6-terra}"
SOL_MODEL="${SOL_MODEL:-gpt-5.6-sol}"
EFFORT="high"
CODEX_FULL_ACCESS="${CODEX_FULL_ACCESS:-1}"

set -euo pipefail

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
on_signal() {
  echo ""
  echo "!! interrupted — stopping run.sh"
  if [ -n "$CHILD_PID" ]; then
    kill -TERM "$CHILD_PID" 2>/dev/null || true
    wait "$CHILD_PID" 2>/dev/null || true
  fi
  exit 130
}
trap on_signal INT TERM

[ -f data/registry.json ] || { echo "!! run from inside darvinyi-deconstructed"; exit 1; }
[ -d prompts ] || { echo "!! prompts/ missing — run ./update.sh first"; exit 1; }

fingerprint() {
  echo "$(git rev-parse HEAD 2>/dev/null || echo none)|$(git status --porcelain 2>/dev/null | rg -v 'pipeline/log' | shasum | awk '{print $1}')|$(shasum data/registry.json | awk '{print $1}')"
}

decide() {  # last line: "NEXT <action> <wave> :: <reason>"
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

def out(action, wave, reason):
    print(f"NEXT {action} {wave} :: {reason}")
    sys.exit(0)

if not renderer_done:
    out("renderer", 0, "OverlayRenderer component not built yet (one-time)")
if revises:
    out("build", 0, f"resolve open critiques: {', '.join(revises[:5])}")
if audit_count:
    out("build", 0, f"automatically close {audit_count} overlay audit records")

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
        out("critique", w, f"wave {w}: {len(awaiting)} built chapters await fresh-eyes review")
    if ready:
        out("build", w, f"wave {w}: {len(ready)} sourced and ready" + (f" ({len(waiting)} queued for automatic source recovery)" if waiting else ""))
    if waiting:
        out("source", w, f"wave {w}: automatically recover images for {len(waiting)} underfilled source sets")
    if all(x["stage"] == "approved" for x in ws) and not shipmark(w):
        out("ship", w, f"wave {w} fully approved — integration pass, then the next wave opens")
    out("critique", w, f"wave {w}: chapters in review cycle")

out("done", 0, "all waves approved and shipped — the book is complete")
PYEOF
}

codex_args() {  # print one shell-escaped Codex command
  local model="$1" prompt="$2"
  local cmd=(codex --search --enable multi_agent -m "$model" -c "model_reasoning_effort=\"$EFFORT\"" -C "$PWD")
  if [ "$CODEX_FULL_ACCESS" = "1" ]; then
    cmd+=(--dangerously-bypass-approvals-and-sandbox)
  else
    cmd+=(-s workspace-write -a on-request)
  fi
  cmd+=(exec --ephemeral "$prompt")
  printf '%q ' "${cmd[@]}"
}

run_codex() {
  local model="$1" prompt="$2"
  local cmd=(codex --search --enable multi_agent -m "$model" -c "model_reasoning_effort=\"$EFFORT\"" -C "$PWD")
  if [ "$CODEX_FULL_ACCESS" = "1" ]; then
    cmd+=(--dangerously-bypass-approvals-and-sandbox)
  else
    cmd+=(-s workspace-write -a on-request)
  fi
  cmd+=(exec --ephemeral "$prompt")
  "${cmd[@]}" &
  CHILD_PID=$!
  wait "$CHILD_PID"
  local rc=$?
  CHILD_PID=""
  return "$rc"
}

run_stage() {
  local stage="$1" wave="${2:-0}" model rc=0 prompt
  case "$stage" in critique) model="$CRITIC_MODEL" ;; *) model="$BUILD_MODEL" ;; esac
  prompt="$(<"prompts/$stage.md")"
  echo ""
  echo ">>>> running: $stage   (model: $model, effort: $EFFORT, Codex multi-agent)"
  if [ "$DRY_RUN" -eq 1 ]; then
    echo "dry run: $(codex_args "$model" "$prompt")"
    return 0
  fi

  command -v codex >/dev/null 2>&1 || { echo "!! codex CLI is not on PATH"; return 127; }
  mkdir -p .pipeline
  if ! rg -qx '\.pipeline/log' .gitignore 2>/dev/null; then
    echo '.pipeline/log' >> .gitignore
  fi
  git ls-files --error-unmatch .pipeline/log >/dev/null 2>&1 && git rm --cached -q .pipeline/log 2>/dev/null || true

  run_codex "$model" "$prompt" || rc=$?
  echo "$(date '+%F %T') $stage wave=$wave model=$model effort=$EFFORT rc=$rc" >> .pipeline/log
  if [ "$rc" -ne 0 ]; then
    echo "!! stage '$stage' exited with status $rc"
    return "$rc"
  fi
  case "$stage" in
    renderer) touch .pipeline/renderer.done ;;
    ship) touch ".pipeline/wave${wave}.shipped" ;;
  esac
  git add .pipeline/renderer.done .pipeline/wave*.shipped .gitignore 2>/dev/null || true
  git diff --cached --quiet 2>/dev/null || git commit -qm "pipeline: marker after $stage (wave $wave)" 2>/dev/null || true
  git push -q 2>/dev/null || true
}

doctor() {
  local failures=0 cache legacy
  command -v codex >/dev/null 2>&1 || { echo "FAIL codex CLI not found"; failures=$((failures + 1)); }
  if command -v codex >/dev/null 2>&1; then
    echo "OK   $(codex --version 2>&1 | tail -1)"
    if codex login status 2>&1 | rg -q '^Logged in'; then
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
    echo "FAIL required models/high effort not available: $BUILD_MODEL, $SOL_MODEL"
    failures=$((failures + 1))
  else
    echo "OK   models: $BUILD_MODEL and $SOL_MODEL support high effort"
  fi
  if codex features list 2>/dev/null | awk '$1 == "multi_agent" && $3 == "true" { found=1 } END { exit !found }'; then
    echo "OK   Codex multi_agent enabled"
  else
    echo "FAIL Codex multi_agent is not enabled"
    failures=$((failures + 1))
  fi
  legacy="clau""de"
  vendor="Clau""de"
  if pgrep -f "/Library/Application Support/${vendor}/${legacy}-code/.*/${legacy}|${legacy} -p" >/dev/null 2>&1; then
    echo "FAIL legacy CLI workers are still running"
    failures=$((failures + 1))
  else
    echo "OK   no legacy CLI workers running"
  fi
  if [ "$failures" -ne 0 ]; then
    return 1
  fi
  echo "DOCTOR OK"
}

cmd="${1:-next}"
case "$cmd" in
  status) decide status ;;
  doctor) doctor ;;
  source|build|critique|ship|renderer) run_stage "$cmd" 0 ;;
  next)
    out="$(decide next)"; echo "$out"
    line="$(echo "$out" | tail -1)"
    action="$(echo "$line" | awk '{print $2}')"; wave="$(echo "$line" | awk '{print $3}')"
    case "$action" in done|setup) exit 0 ;; *) run_stage "$action" "$wave" ;; esac ;;
  loop)
    max="${2:-12}"
    if [ "$DRY_RUN" -eq 1 ]; then max=1; fi
    prev_key=""
    for i in $(seq 1 "$max"); do
      line="$(decide next | tail -1)"
      action="$(echo "$line" | awk '{print $2}')"; wave="$(echo "$line" | awk '{print $3}')"
      reason="${line#*:: }"
      key="${line}|$(fingerprint)"
      if [ "$key" = "$prev_key" ]; then
        echo ""
        echo "!! no progress: '$action' ran but nothing changed."
        echo "   ./run.sh status"
        echo "   tail .pipeline/log"
        break
      fi
      prev_key="$key"
      echo ""; echo "== loop step $i/$max: $action (wave $wave) — $reason"
      case "$action" in
        done|setup) echo "$reason"; break ;;
        *) run_stage "$action" "$wave" || { echo "!! stopping loop on stage error"; break; } ;;
      esac
    done ;;
  *) echo "usage: ./run.sh [--dry-run] [next|loop [N]|status|doctor|source|build|critique|ship|renderer]"; exit 1 ;;
esac
