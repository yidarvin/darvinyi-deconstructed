#!/usr/bin/env bash
# Deconstructed — pipeline driver. Lives in the repo root.
#
#   ./run.sh              same as: ./run.sh next
#   ./run.sh next         figure out the next step and RUN it
#   ./run.sh loop [N]     keep running next steps (default max 12) until a
#                         human step, no-progress stall, error, or completion
#   ./run.sh status       local dashboard: waves, stages, what's next (no API)
#   ./run.sh source|build|critique|ship|renderer   force a specific stage
#
# This is an unattended pipeline: stages get --dangerously-skip-permissions
# by default (headless -p mode cannot answer permission prompts). To run a
# stage attended with prompts instead:   PERM_FLAG= ./run.sh build
BUILD_MODEL="${BUILD_MODEL:-claude-opus-4-8[1m]}"
CRITIC_MODEL="${CRITIC_MODEL:-claude-fable-5}"
EFFORT="${EFFORT:---effort ultracode}"
PERM_FLAG="${PERM_FLAG---dangerously-skip-permissions}"
# Each stage is a nested `claude -p` that, under ultracode, spawns long-running
# background workflows (image-review fleets, verification panels) that outlast
# the default 600s background-wait ceiling. When that ceiling trips, the nested
# claude TERMINATES its still-running work and returns exit 0 — a false success:
# run_stage records rc=0 and the pipeline marches on having produced nothing
# (in `loop` mode it silently skips real work across every wave). 0 = wait
# indefinitely for the stage's own background tasks to finish. Override with a
# millisecond ceiling if you ever need a hard cap.
export CLAUDE_CODE_PRINT_BG_WAIT_CEILING_MS="${CLAUDE_CODE_PRINT_BG_WAIT_CEILING_MS:-0}"

set -euo pipefail
trap 'echo ""; echo "!! interrupted — stopping run.sh"; exit 130' INT TERM
[ -f data/registry.json ] || { echo "!! run from inside darvinyi-deconstructed"; exit 1; }
[ -d prompts ] || { echo "!! prompts/ missing — run ./update.sh first"; exit 1; }
mkdir -p .pipeline
# the run log is local telemetry: never commit it, never let it defeat stall detection
grep -qx '.pipeline/log' .gitignore 2>/dev/null || echo '.pipeline/log' >> .gitignore
git ls-files --error-unmatch .pipeline/log >/dev/null 2>&1 && git rm --cached -q .pipeline/log 2>/dev/null || true

fingerprint() {
  echo "$(git rev-parse HEAD 2>/dev/null || echo none)|$(git status --porcelain 2>/dev/null | grep -v 'pipeline/log' | shasum | awk '{print $1}')|$(shasum data/registry.json | awk '{print $1}')"
}

decide() {  # prints dashboard-or-decision; last line: "NEXT <action> <wave> :: <reason>"
python3 - "$1" <<'PYEOF'
import json, os, sys, glob

mode = sys.argv[1]  # "status" | "next"
r = json.load(open("data/registry.json"))
ph = r["photographers"]
if any("stage" not in e or "wave" not in e for e in ph):
    print("Registry not migrated."); print("NEXT setup 0 :: run ./update.sh first"); sys.exit(0)

IMG = (".jpg", ".jpeg", ".png", ".tif", ".tiff", ".webp")
def nfiles(d, exts=IMG):
    return len([f for f in glob.glob(os.path.join(d, "*")) if f.lower().endswith(exts)]) if os.path.isdir(d) else 0

def verdict(slug):
    p = f"content/{slug}/critique.md"
    if not os.path.exists(p): return "-"
    first = open(p).readline().strip().lower()
    return first.replace("verdict:", "").strip() or "-"

rows = []
for e in ph:
    s = e["slug"]
    rows.append(dict(slug=s, wave=e["wave"], stage=e["stage"], rights=e["rights"],
                     raw=nfiles(f"raw/{s}"), img=nfiles(f"content/{s}/images", (".jpg",)),
                     ovl=nfiles(f"content/{s}/overlays", (".json",)),
                     needed=os.path.exists(f"content/{s}/NEEDED.md"),
                     verdict=verdict(s)))

renderer_done = os.path.exists(".pipeline/renderer.done")
if not renderer_done:
    for root, _, files in os.walk("src"):
        if any("OverlayRenderer" in f for f in files): renderer_done = True; break
revises = [x["slug"] for x in rows if x["verdict"] == "revise"]
waves = sorted({x["wave"] for x in rows})

def shipmark(w): return os.path.exists(f".pipeline/wave{w}.shipped")

if mode == "status":
    print(f"{'wave':>4} {'pend':>5} {'srcd':>5} {'built':>5} {'appr':>5}  flags")
    for w in waves:
        ws = [x for x in rows if x["wave"] == w]
        c = lambda st: sum(1 for x in ws if x["stage"] == st)
        waiting = sum(1 for x in ws if x["stage"] == "sourced" and x["raw"] < 4)
        flags = []
        if waiting: flags.append(f"WAITING on you: {waiting}")
        if shipmark(w): flags.append("shipped")
        print(f"{w:>4} {c('pending'):>5} {c('sourced'):>5} {c('built'):>5} {c('approved'):>5}  {' '.join(flags)}")
    if revises: print(f"\nopen critiques (revise): {', '.join(revises)}")
    if os.path.exists("needs-review.txt"):
        print("\nneeds-review.txt (fallback overlays):")
        print(open("needs-review.txt").read().strip())

def out(action, wave, reason):
    print(f"NEXT {action} {wave} :: {reason}"); sys.exit(0)

if not renderer_done:
    out("renderer", 0, "OverlayRenderer component not built yet (one-time)")
if revises:
    out("build", 0, f"resolve open critiques: {', '.join(revises[:5])}")

for w in waves:
    ws = [x for x in rows if x["wave"] == w]
    if all(x["stage"] == "approved" for x in ws) and shipmark(w):
        continue
    if any(x["stage"] == "pending" for x in ws):
        out("source", w, f"wave {w} has {sum(1 for x in ws if x['stage']=='pending')} photographers to source")
    ready   = [x for x in ws if x["stage"] == "sourced" and x["raw"] >= 4]
    waiting = [x for x in ws if x["stage"] == "sourced" and x["raw"] < 4]
    if ready:
        out("build", w, f"wave {w}: {len(ready)} sourced and ready" + (f" ({len(waiting)} still waiting on you)" if waiting else ""))
    awaiting = [x for x in ws if x["stage"] == "built" and x["verdict"] in ("-", "resolved")]
    if awaiting:
        out("critique", w, f"wave {w}: {len(awaiting)} built chapters await fresh-eyes review")
    if waiting:
        if mode == "next":
            print(f"\n== YOUR TURN — wave {w} is blocked on images only you can supply ==")
            for x in waiting:
                print(f"  {x['slug']:>26}: has {x['raw']} images in raw/{x['slug']}/ — "
                      f"open content/{x['slug']}/NEEDED.md, get those files, drop them in raw/{x['slug']}/")
            print("  then: ./run.sh next")
        out("human", w, f"wave {w}: {len(waiting)} photographers waiting on NEEDED.md image drops")
    if all(x["stage"] == "approved" for x in ws) and not shipmark(w):
        out("ship", w, f"wave {w} fully approved — integration pass, then the next wave opens")
    out("critique", w, f"wave {w}: chapters in review cycle")

out("done", 0, "all waves approved and shipped — the book is complete")
PYEOF
}

run_stage() {  # $1 stage  $2 wave(for markers) ; returns claude's exit status
  local stage="$1" wave="${2:-0}" model rc=0
  case "$stage" in critique) model="$CRITIC_MODEL";; *) model="$BUILD_MODEL";; esac
  export CLAUDE_CODE_SUBAGENT_MODEL="$model"
  echo ""
  echo ">>>> running: $stage   (model: $model${PERM_FLAG:+, permissions skipped})"
  claude -p "$(cat "prompts/$stage.md")" $EFFORT $PERM_FLAG --model "$model" || rc=$?
  echo "$(date '+%F %T') $stage wave=$wave rc=$rc" >> .pipeline/log
  if [ "$rc" -ne 0 ]; then
    echo "!! stage '$stage' exited with status $rc"
    return "$rc"
  fi
  case "$stage" in
    renderer) touch .pipeline/renderer.done ;;
    ship)     touch ".pipeline/wave${wave}.shipped" ;;
  esac
  git add .pipeline/renderer.done .pipeline/wave*.shipped .gitignore 2>/dev/null || true
  git diff --cached --quiet 2>/dev/null || git commit -qm "pipeline: marker after $stage (wave $wave)" 2>/dev/null || true
  git push -q 2>/dev/null || true
}

cmd="${1:-next}"
case "$cmd" in
  status) decide status ;;
  source|build|critique|ship|renderer) run_stage "$cmd" 0 ;;
  next)
    out="$(decide next)"; echo "$out"
    line="$(echo "$out" | tail -1)"
    action="$(echo "$line" | awk '{print $2}')"; wave="$(echo "$line" | awk '{print $3}')"
    case "$action" in
      human|done|setup) exit 0 ;;
      *) run_stage "$action" "$wave" ;;
    esac ;;
  loop)
    max="${2:-12}"
    prev_key=""
    for i in $(seq 1 "$max"); do
      line="$(decide next | tail -1)"
      action="$(echo "$line" | awk '{print $2}')"; wave="$(echo "$line" | awk '{print $3}')"
      reason="${line#*:: }"
      key="${line}|$(fingerprint)"
      if [ "$key" = "$prev_key" ]; then
        echo ""
        echo "!! no progress: '$action' ran but nothing changed (no commits, no stage updates)."
        echo "   Stopping instead of burning another run. Investigate with:"
        echo "     ./run.sh status            # what the queue thinks"
        echo "     tail .pipeline/log         # what ran, exit codes"
        echo "     PERM_FLAG= ./run.sh $action   # run this stage attended to watch it work"
        break
      fi
      prev_key="$key"
      echo ""; echo "== loop step $i/$max: $action (wave $wave) — $reason"
      case "$action" in
        human) decide next | sed -n '/YOUR TURN/,$p'; break ;;
        done)  echo "$reason"; break ;;
        setup) echo "$reason"; break ;;
        *) run_stage "$action" "$wave" || { echo "!! stopping loop on stage error"; break; } ;;
      esac
    done ;;
  *) echo "usage: ./run.sh [next|loop [N]|status|source|build|critique|ship|renderer]"; exit 1 ;;
esac
