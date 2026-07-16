#!/usr/bin/env bash
# Shared, dependency-light helpers for the unattended pipeline drivers.

PIPELINE_LOCK_DIR=""
PIPELINE_GIT_BIN="${PIPELINE_GIT_BIN:-/usr/bin/git}"
export PIPELINE_GIT_BIN

# macOS protects ~/Documents with TCC independently of Unix mode bits. Always
# start Git from a neutral cwd and address the repository explicitly. The
# launchd service pins PIPELINE_GIT_BIN to Apple's stable, FDA-approved Git;
# Homebrew Git has a versioned ad-hoc identity that changes on upgrade.
pipeline_git() {
  local root="$1"
  shift
  [ -x "$PIPELINE_GIT_BIN" ] || {
    echo "pipeline Git is not executable: $PIPELINE_GIT_BIN" >&2
    return 127
  }
  (
    cd "${HOME:?HOME is required for neutral Git cwd}" || exit 72
    "$PIPELINE_GIT_BIN" -C "$root" "$@"
  )
}

# Push only when the current branch actually has committed work ahead of its
# upstream. A no-op push is not progress and must not turn a successful recovery
# into an infrastructure failure.
pipeline_push_if_ahead() {
  local root="$1" upstream ahead
  if ! upstream="$(pipeline_git "$root" rev-parse --abbrev-ref '@{upstream}' 2>/dev/null)"; then
    echo "git sync unavailable: current branch has no readable upstream" >&2
    return 69
  fi
  if ! ahead="$(pipeline_git "$root" rev-list --count "${upstream}..HEAD")"; then
    echo "git sync unavailable: cannot calculate commits ahead of $upstream" >&2
    return 69
  fi
  if [ "$ahead" -eq 0 ]; then
    echo ">>>> git sync: already synchronized with $upstream"
    return 0
  fi
  echo ">>>> pushing $ahead committed unit(s) to $upstream"
  pipeline_git "$root" push || return 69
}

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
