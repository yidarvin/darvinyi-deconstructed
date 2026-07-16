#!/usr/bin/env bash
# runqueue.sh -- headless build loop for a queue-driven refsite.
#
# Walks prompts/queue.md and, for every PENDING row, invokes `codex exec` to build
# the next item (research, write, gate, commit, push), then runs `npm run check` as
# an independent second gate. It stops the moment anything is off: a nonzero Codex
# exit, a hung run past --timeout, a failing check, a working tree the run left
# dirty, or a run that made no queue progress. It returns nonzero to its caller,
# which may retry or invoke recovery. That last guard is what keeps an
# unattended loop from spinning forever on one item, and it is why the loop measures
# progress as DONE+SKIPPED going up (monotonic) rather than PENDING going down
# (graph-mode runs append new PENDING rows, so that would misfire).
#
# Works with any queue.md: it finds PENDING rows by shape (a status keyword sitting
# in its own pipe-delimited table cell), not by any specific chapter, and it tolerates
# GFM tables with or without an outer border pipe. It assumes no non-status cell is
# ever literally the bare word PENDING/DONE/SKIPPED.
#
# Usage:
#   ./runqueue.sh [-a] [-n N] [options]
#
#   -a, --all            run every PENDING item until the queue is drained (default)
#   -n, --count N        run at most N items, then stop
#   -m, --model MODEL    model passed to Codex     (default: gpt-5.6-sol)
#   -e, --effort LEVEL   Codex effort; only high is accepted
#   -p, --prompt TEXT    per-item prompt           (default below)
#   -q, --queue PATH     queue file to read        (default: prompts/queue.md)
#   -s, --settings VAL   extra Codex -c key=value override (default: none)
#   -t, --timeout SEC    kill a single Codex run after SEC seconds
#                        (default: 14400 = four hours)
#       --no-push        build and commit but do not push (adjusts the default prompt)
#       --no-check       skip the `npm run check` second gate (not recommended)
#       --allow-dirty    do not require a clean git working tree
#       --dry-run        print the resolved plan and command, then run nothing
#   -y, --yes            do not ask for confirmation before an unbounded run
#   -h, --help           show this help and exit
#
# Exit status: 0 when the requested work finished cleanly (queue drained or the -n
# limit reached); 1 when the loop stopped for review; 2 on a usage error; 130 on an
# interrupt.

set -uo pipefail

# --- defaults ---------------------------------------------------------------
MODEL='gpt-5.6-sol'
EFFORT='high'
SETTINGS=''          # optional Codex -c key=value override
QUEUE='prompts/queue.md'
PROMPT=''            # resolved after parsing so --no-push can adjust the default
PROMPT_SET=0
NO_PUSH=0
RUN_CHECK=1
ALLOW_DIRTY=0
DRY_RUN=0
ASSUME_YES=0
TIMEOUT=14400        # seconds; 0 disables the per-item wall-clock limit
POLL_SECONDS="${STAGE_POLL_SECONDS:-5}"
CODEX_BIN="${CODEX_BIN:-codex}"
MAX=''               # empty means unbounded (run all)

DEFAULT_PROMPT_PUSH='run the next one. commit and push the changes.'
DEFAULT_PROMPT_NOPUSH='run the next one. commit the changes but do not push.'

usage() { sed -n '2,/^# Exit status/{/^# Exit status/d;s/^# \{0,1\}//;p;}' "$0"; }

die() { printf '\033[31m%s\033[0m\n' "runqueue: $*" >&2; exit 2; }

# A positive-integer argument, normalized (no leading zeros, no octal, no overflow).
parse_count() {
  local flag="$1" val="$2"
  case "$val" in ''|*[!0-9]*) die "$flag needs a positive integer, got '$val'";; esac
  [ "${#val}" -le 9 ] || die "$flag value '$val' is out of range"
  local n=$((10#$val))
  [ "$n" -ge 1 ] || die "$flag must be at least 1"
  printf '%s' "$n"
}

# --- parse args -------------------------------------------------------------
while [ $# -gt 0 ]; do
  case "$1" in
    -a|--all)       MAX=''; shift ;;
    -n|--count)     [ $# -ge 2 ] || die "$1 needs a value"; MAX="$(parse_count "$1" "$2")"; shift 2 ;;
    -m|--model)     [ $# -ge 2 ] || die "$1 needs a value"; MODEL="$2"; shift 2 ;;
    -e|--effort)    [ $# -ge 2 ] || die "$1 needs a value"; EFFORT="$2"; shift 2 ;;
    -p|--prompt)    [ $# -ge 2 ] || die "$1 needs a value"; PROMPT="$2"; PROMPT_SET=1; shift 2 ;;
    -q|--queue)     [ $# -ge 2 ] || die "$1 needs a value"; QUEUE="$2"; shift 2 ;;
    -s|--settings)  [ $# -ge 2 ] || die "$1 needs a value"; SETTINGS="$2"; shift 2 ;;
    -t|--timeout)   [ $# -ge 2 ] || die "$1 needs a value"; TIMEOUT="$(parse_count "$1" "$2")"; shift 2 ;;
    --no-push)      NO_PUSH=1; shift ;;
    --no-check)     RUN_CHECK=0; shift ;;
    --allow-dirty)  ALLOW_DIRTY=1; shift ;;
    --dry-run)      DRY_RUN=1; shift ;;
    -y|--yes)       ASSUME_YES=1; shift ;;
    -h|--help)      usage; exit 0 ;;
    --)             shift; break ;;
    -*)             die "unknown option '$1' (try --help)" ;;
    *)              die "unexpected argument '$1' (try --help)" ;;
  esac
done
# The script takes no positional operands. Anything left (including tokens after --)
# is an error, so a misplaced flag can never be silently dropped into a live run.
[ $# -eq 0 ] || die "unexpected argument(s): $* (try --help)"

# Resolve the default prompt now that --no-push is known. An explicit --prompt wins.
if [ "$PROMPT_SET" -eq 0 ]; then
  if [ "$NO_PUSH" -eq 1 ]; then PROMPT="$DEFAULT_PROMPT_NOPUSH"; else PROMPT="$DEFAULT_PROMPT_PUSH"; fi
fi

# Validate the effort level up front rather than let Codex use its default silently.
case "$EFFORT" in
  high) ;;
  *) die "invalid --effort '$EFFORT' (this pipeline requires high)" ;;
esac

# --- move to the repo root (this script lives there) ------------------------
SCRIPT_DIR="$(CDPATH= cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)" || die "cannot resolve script directory"
cd "$SCRIPT_DIR" || die "cannot cd to $SCRIPT_DIR"
. scripts/pipeline-lib.sh
RUNTIME="${PIPELINE_RUNTIME_DIR:-$SCRIPT_DIR/.pipeline/runtime}"

# --- preflight --------------------------------------------------------------
[ -f "$QUEUE" ] || die "queue file not found: $QUEUE (run from a refsite repo, or pass --queue)"
[ -r "$QUEUE" ] || die "queue file is not readable: $QUEUE"
[ -f content/registry.json ] || printf '\033[33m%s\033[0m\n' "runqueue: warning: content/registry.json not found; is this a refsite repo?" >&2
command -v "$CODEX_BIN" >/dev/null 2>&1 || die "the Codex CLI is not on PATH: $CODEX_BIN"
if [ "$RUN_CHECK" -eq 1 ]; then
  command -v npm >/dev/null 2>&1 || die "'npm' is not on PATH (needed for the check gate; pass --no-check to skip)"
fi

# Is this a git work tree? The commit/push and clean-tree guards only apply if so.
HAVE_GIT=0
git rev-parse --is-inside-work-tree >/dev/null 2>&1 && HAVE_GIT=1
tree_dirty() { [ -n "$(git status --porcelain 2>/dev/null)" ]; }

# An auto-committing loop must start from a clean tree, or it can fold stray local
# changes into an unrelated chapter's commit.
if [ "$DRY_RUN" -eq 0 ] && [ "$HAVE_GIT" -eq 1 ] && [ "$ALLOW_DIRTY" -eq 0 ] && tree_dirty; then
  die "working tree has uncommitted changes. Commit or stash them first, or pass --allow-dirty."
fi

# --- counting helpers -------------------------------------------------------
# A status cell is a pipe, optional spaces, the keyword, optional spaces, then either
# another pipe or end of line (so bordered and borderless GFM tables both work). The
# required leading pipe means the word PENDING in prose or an HTML comment never
# matches. grep exit 1 means "no such row" (count 0); exit >=2 is a real read error
# and must stop the loop, never be silently swallowed into an empty count.
count_status() {
  local token="$1" n rc
  n=$(grep -Ec -- "\|[[:space:]]*${token}[[:space:]]*(\||$)" "$QUEUE" 2>/dev/null)
  rc=$?
  [ "$rc" -le 1 ] || die "cannot read queue file: $QUEUE"
  printf '%s' "${n:-0}"
}
count_pending()   { count_status PENDING; }
count_processed() { echo $(( $(count_status DONE) + $(count_status SKIPPED) )); }

# --- build the Codex command -----------------------------------------------
CODEX_ARGS=( --search --enable multi_agent -m "$MODEL" -c "model_reasoning_effort=\"$EFFORT\"" -C "$SCRIPT_DIR" --dangerously-bypass-approvals-and-sandbox )
[ -n "$SETTINGS" ] && CODEX_ARGS+=( -c "$SETTINGS" )
CODEX_ARGS+=( exec --ephemeral "$PROMPT" )

# --- announce the plan ------------------------------------------------------
pending_now="$(count_pending)"
limit_desc="all ($pending_now pending)"
[ -n "$MAX" ] && limit_desc="up to $MAX (of $pending_now pending)"

printf '\033[1m%s\033[0m\n' "runqueue plan"
printf '  queue:    %s\n' "$QUEUE"
printf '  items:    %s\n' "$limit_desc"
printf '  model:    %s\n' "$MODEL"
printf '  effort:   %s\n' "$EFFORT"
[ -n "$SETTINGS" ] && printf '  config:   %s\n' "$SETTINGS"
printf '  timeout:  %s\n' "$([ "$TIMEOUT" -gt 0 ] && echo "${TIMEOUT}s per item" || echo 'none')"
printf '  gate:     %s\n' "$([ "$RUN_CHECK" -eq 1 ] && echo 'npm run check after each item' || echo 'skipped (--no-check)')"
printf '  command:  %s %s\n' "$CODEX_BIN" "$(printf '%q ' "${CODEX_ARGS[@]}")"

if [ "$DRY_RUN" -eq 1 ]; then
  printf '\n\033[33m%s\033[0m\n' "dry run: nothing was executed."
  exit 0
fi

if [ "$pending_now" -eq 0 ]; then
  printf '\n%s\n' "no PENDING items in $QUEUE; nothing to do."
  exit 0
fi

# An unbounded, trusted full-access run is a big commitment; confirm when a human is
# watching. Redirected/headless invocations (no TTY) proceed without prompting, which
# is the whole point of an unattended loop.
if [ -z "$MAX" ] && [ "$ASSUME_YES" -eq 0 ] && [ -t 0 ]; then
  printf '\n%s ' "About to run ALL $pending_now item(s) with trusted full access. Continue? [y/N]"
  read -r reply
  case "$reply" in [Yy]|[Yy][Ee][Ss]) ;; *) echo "aborted."; exit 0 ;; esac
fi

# --- signal handling and the Codex runner -----------------------------------
# Track the child so a Ctrl-C or a `kill` of a detached loop tears down the running
# Codex process too, instead of orphaning it to keep committing and pushing.
CHILD_PID=''
LOCK_HELD=0
cleanup() {
  if [ "$LOCK_HELD" -eq 1 ]; then
    pipeline_lock_release
    LOCK_HELD=0
  fi
}
on_signal() {
  printf '\n\033[33m%s\033[0m\n' "runqueue: interrupted; stopping."
  if [ -n "$CHILD_PID" ]; then
    pipeline_terminate_tree "$CHILD_PID"
    wait "$CHILD_PID" 2>/dev/null
  fi
  cleanup
  exit 130
}
trap on_signal INT TERM
trap cleanup EXIT

# Build one item. stdin is detached from /dev/null so no tool can block on or steal
# input, and the run is backgrounded with a tracked pid (see on_signal). Returns
# Codex's exit status; 124 signals a timeout when --timeout is in effect.
run_codex() {
  local started now timed_out=0 rc
  "$CODEX_BIN" "${CODEX_ARGS[@]}" </dev/null &
  CHILD_PID=$!
  started="$(date +%s)"
  while kill -0 "$CHILD_PID" 2>/dev/null; do
    sleep "$POLL_SECONDS"
    if [ "$TIMEOUT" -gt 0 ]; then
      now="$(date +%s)"
      if [ $((now - started)) -ge "$TIMEOUT" ]; then
        timed_out=1
        pipeline_terminate_tree "$CHILD_PID"
        sleep 2
        kill -KILL "$CHILD_PID" 2>/dev/null || true
        break
      fi
    fi
  done
  if wait "$CHILD_PID"; then rc=0; else rc=$?; fi
  CHILD_PID=''
  [ "$timed_out" -eq 0 ] || return 124
  return "$rc"
}

pipeline_lock_acquire "$RUNTIME" || exit $?
LOCK_HELD=1

# --- the loop ---------------------------------------------------------------
i=0
while :; do
  pending="$(count_pending)"
  if [ "$pending" -eq 0 ]; then
    printf '\n\033[32m%s\033[0m\n' "queue drained: no PENDING items left. Ran $i item(s)."
    break
  fi
  if [ -n "$MAX" ] && [ "$i" -ge "$MAX" ]; then
    printf '\n\033[32m%s\033[0m\n' "reached limit of $MAX item(s). $pending still PENDING."
    break
  fi

  before="$(count_processed)"
  i=$((i + 1))
  printf '\n\033[1m\033[36m==== item %d  (%s, %s pending) ====\033[0m\n' "$i" "$(date '+%Y-%m-%d %H:%M:%S')" "$pending"

  run_codex; codex_rc=$?
  if [ "$codex_rc" -ne 0 ]; then
    if [ "$TIMEOUT" -gt 0 ] && [ "$codex_rc" -eq 124 ]; then
      printf '\n\033[31m%s\033[0m\n' "Codex exceeded the ${TIMEOUT}s timeout on item $i; caller may retry."
    else
      printf '\n\033[31m%s\033[0m\n' "Codex exited $codex_rc on item $i; caller may retry or recover."
    fi
    exit 1
  fi

  # After a successful run the tree should be clean (the item was committed). A dirty
  # tree means the run built but did not commit; do not build on top of it.
  if [ "$HAVE_GIT" -eq 1 ] && [ "$ALLOW_DIRTY" -eq 0 ] && tree_dirty; then
    printf '\n\033[31m%s\033[0m\n' "item $i left uncommitted changes; recovery is required."
    exit 1
  fi

  if [ "$RUN_CHECK" -eq 1 ]; then
    if ! npm run check; then
      printf '\n\033[31m%s\033[0m\n' "npm run check failed after item $i; recovery is required."
      exit 1
    fi
  fi

  after="$(count_processed)"
  if [ "$after" -le "$before" ]; then
    printf '\n\033[31m%s\033[0m\n' "no queue progress on item $i (nothing marked DONE or SKIPPED); stopping to avoid an infinite loop."
    exit 1
  fi
done

exit 0
