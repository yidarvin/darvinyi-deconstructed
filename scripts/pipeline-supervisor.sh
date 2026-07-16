#!/usr/bin/env bash
# Durable retrying supervisor for ./run.sh. launchd keeps this process alive;
# this process keeps queue work alive across ordinary stage failures.
set -u -o pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT" || exit 1
# launchd supplies a deliberately small PATH. Include the authenticated Codex
# install and the Homebrew tools used by the deterministic gates.
export PATH="$HOME/.local/bin:/opt/homebrew/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:${PATH:-}"
. scripts/pipeline-lib.sh

RUNTIME="${PIPELINE_RUNTIME_DIR:-$ROOT/.pipeline/runtime}"
RUNNER="${PIPELINE_RUNNER:-$ROOT/run.sh}"
MIN_FREE_MB="${PIPELINE_MIN_FREE_MB:-8192}"
SUCCESS_DELAY="${PIPELINE_SUCCESS_DELAY_SECONDS:-10}"
BASE_BACKOFF="${PIPELINE_BASE_BACKOFF_SECONDS:-30}"
MAX_BACKOFF="${PIPELINE_MAX_BACKOFF_SECONDS:-900}"
COMPLETE_DELAY="${PIPELINE_COMPLETE_DELAY_SECONDS:-3600}"
MAX_CYCLES="${PIPELINE_MAX_CYCLES:-0}"
LOG="$RUNTIME/supervisor.log"
STATE="$RUNTIME/supervisor.state"
HEARTBEAT="$RUNTIME/heartbeat"
CHILD_PID=""

mkdir -p "$RUNTIME"

rotate_log() {
  local bytes
  if [ -f "$LOG" ]; then
    bytes="$(wc -c < "$LOG")"
  else
    bytes=0
  fi
  if [ "${bytes:-0}" -gt 5242880 ]; then
    mv -f "$LOG" "$LOG.1"
  fi
}

log() {
  rotate_log
  printf '%s %s\n' "$(date '+%F %T')" "$*" >> "$LOG"
}

write_state() {
  local status="$1" attempt="$2" next_retry="$3" detail="$4" tmp="$STATE.tmp.$$"
  {
    printf 'status=%s\n' "$status"
    printf 'attempt=%s\n' "$attempt"
    printf 'next_retry=%s\n' "$next_retry"
    printf 'detail=%s\n' "$detail"
    printf 'pid=%s\n' "$$"
    printf 'updated_at=%s\n' "$(date '+%F %T')"
  } > "$tmp"
  mv -f "$tmp" "$STATE"
}

on_signal() {
  log "supervisor stopping on signal"
  [ -z "$CHILD_PID" ] || pipeline_terminate_tree "$CHILD_PID"
  [ -z "$CHILD_PID" ] || wait "$CHILD_PID" 2>/dev/null || true
  write_state stopped 0 0 signal
  exit 0
}
trap on_signal INT TERM HUP

attempt=0
cycle=0
last_decision=""
log "supervisor started pid=$$ runner=$RUNNER"

while :; do
  date '+%F %T' > "$HEARTBEAT"
  cycle=$((cycle + 1))
  if [ "$MAX_CYCLES" -gt 0 ] && [ "$cycle" -gt "$MAX_CYCLES" ]; then
    write_state stopped "$attempt" 0 max-cycles
    log "supervisor reached max cycles=$MAX_CYCLES"
    exit 0
  fi

  free_mb="$(pipeline_free_mb "$ROOT")"
  if [ "$free_mb" -lt "$MIN_FREE_MB" ]; then
    log "low disk: ${free_mb}MB free; pruning recomputable raw inputs"
    python3 scripts/prune_raw.py --apply-if-low "$MIN_FREE_MB" >> "$LOG" 2>&1 || true
    free_mb="$(pipeline_free_mb "$ROOT")"
    if [ "$free_mb" -lt "$MIN_FREE_MB" ]; then
      attempt=$((attempt + 1))
      delay="$(pipeline_backoff_seconds "$attempt" "$BASE_BACKOFF" "$MAX_BACKOFF")"
      next_retry=$(( $(date +%s) + delay ))
      write_state degraded "$attempt" "$next_retry" "low-disk-${free_mb}MB"
      log "disk still below floor: ${free_mb}MB; retry in ${delay}s"
      sleep "$delay"
      continue
    fi
  fi

  decision="$("$RUNNER" decision 2>> "$LOG")"
  decision_rc=$?
  if [ "$decision_rc" -ne 0 ]; then
    attempt=$((attempt + 1))
    delay="$(pipeline_backoff_seconds "$attempt" "$BASE_BACKOFF" "$MAX_BACKOFF")"
    next_retry=$(( $(date +%s) + delay ))
    write_state degraded "$attempt" "$next_retry" "decision-rc-$decision_rc"
    log "decision failed rc=$decision_rc; retry in ${delay}s"
    sleep "$delay"
    continue
  fi

  if printf '%s\n' "$decision" | grep -q '^NEXT done '; then
    attempt=0
    write_state complete 0 0 done
    log "queue complete; rechecking in ${COMPLETE_DELAY}s"
    sleep "$COMPLETE_DELAY"
    continue
  fi

  if [ "$decision" != "$last_decision" ]; then
    attempt=0
    last_decision="$decision"
  fi
  write_state running "$attempt" 0 "$decision"
  log "$decision"

  "$RUNNER" next >> "$LOG" 2>&1 &
  CHILD_PID=$!
  wait "$CHILD_PID"
  rc=$?
  CHILD_PID=""

  if [ "$rc" -eq 0 ]; then
    attempt=0
    write_state running 0 0 advanced
    log "stage advanced successfully"
    sleep "$SUCCESS_DELAY"
    continue
  fi

  if [ "$rc" -eq 75 ]; then
    write_state running "$attempt" 0 busy
    log "another runner owns the stage lock; checking again in 15s"
    sleep 15
    continue
  fi

  attempt=$((attempt + 1))
  if [ $((attempt % 3)) -eq 0 ]; then
    log "same decision failed $attempt times; invoking automatic recovery"
    "$RUNNER" recover >> "$LOG" 2>&1 || true
  fi
  delay="$(pipeline_backoff_seconds "$attempt" "$BASE_BACKOFF" "$MAX_BACKOFF")"
  next_retry=$(( $(date +%s) + delay ))
  write_state degraded "$attempt" "$next_retry" "stage-rc-$rc"
  log "stage failed rc=$rc attempt=$attempt; retry in ${delay}s"
  sleep "$delay"
done
