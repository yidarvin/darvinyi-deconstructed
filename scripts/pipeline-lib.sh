#!/usr/bin/env bash
# Shared, dependency-light helpers for the unattended pipeline drivers.

PIPELINE_LOCK_DIR=""

pipeline_lock_acquire() {
  local runtime="$1" lock owner tries=0
  mkdir -p "$runtime"
  lock="$runtime/runner.lock"

  while [ "$tries" -lt 2 ]; do
    if mkdir "$lock" 2>/dev/null; then
      printf '%s\n' "$$" > "$lock/pid"
      PIPELINE_LOCK_DIR="$lock"
      export PIPELINE_LOCK_DIR
      return 0
    fi

    owner="$(sed -n '1p' "$lock/pid" 2>/dev/null || true)"
    if [ -n "$owner" ] && kill -0 "$owner" 2>/dev/null; then
      echo "pipeline busy: runner pid $owner owns $lock" >&2
      return 75
    fi

    # mkdir is the atomic lock operation. A dead or unreadable owner is stale;
    # remove only the known lock payload and retry once.
    rm -f "$lock/pid" 2>/dev/null || true
    rmdir "$lock" 2>/dev/null || true
    tries=$((tries + 1))
  done

  echo "pipeline lock cannot be recovered: $lock" >&2
  return 74
}

pipeline_lock_release() {
  [ -n "${PIPELINE_LOCK_DIR:-}" ] || return 0
  rm -f "$PIPELINE_LOCK_DIR/pid" 2>/dev/null || true
  rmdir "$PIPELINE_LOCK_DIR" 2>/dev/null || true
  PIPELINE_LOCK_DIR=""
}

pipeline_free_mb() {
  local path="${1:-.}"
  df -Pk "$path" | awk 'NR == 2 { print int($4 / 1024) }'
}

pipeline_backoff_seconds() {
  local attempt="${1:-1}" base="${2:-30}" cap="${3:-900}" value i=1
  value="$base"
  while [ "$i" -lt "$attempt" ] && [ "$value" -lt "$cap" ]; do
    value=$((value * 2))
    [ "$value" -le "$cap" ] || value="$cap"
    i=$((i + 1))
  done
  printf '%s\n' "$value"
}

pipeline_terminate_tree() {
  local pid="$1" child
  [ -n "$pid" ] || return 0
  for child in $(pgrep -P "$pid" 2>/dev/null || true); do
    pipeline_terminate_tree "$child"
  done
  kill -TERM "$pid" 2>/dev/null || true
}
