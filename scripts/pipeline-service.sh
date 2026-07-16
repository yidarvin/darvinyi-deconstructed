#!/usr/bin/env bash
# Install and control the macOS launchd service for the repository supervisor.
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
LABEL="com.darvinyi.deconstructed.pipeline"
DOMAIN="gui/$(id -u)"
PLIST="$HOME/Library/LaunchAgents/$LABEL.plist"
SUPERVISOR="$ROOT/scripts/pipeline-supervisor.sh"
RUNTIME="$ROOT/.pipeline/runtime"
SERVICE_PATH="$HOME/.local/bin:/opt/homebrew/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
CODEX_PATH="$(command -v codex 2>/dev/null || printf '%s' "$HOME/.local/bin/codex")"
DRY_RUN=0

if [ "${1:-}" = "--dry-run" ]; then
  DRY_RUN=1
  shift
fi
cmd="${1:-status}"

plan() {
  echo "service:    $LABEL"
  echo "plist:      $PLIST"
  echo "supervisor: $SUPERVISOR"
  echo "codex:      $CODEX_PATH"
  echo "stdout:     $RUNTIME/launchd.out.log"
  echo "stderr:     $RUNTIME/launchd.err.log"
}

write_plist() {
  local tmp="$PLIST.tmp.$$"
  mkdir -p "$(dirname "$PLIST")" "$RUNTIME"
  {
    echo '<?xml version="1.0" encoding="UTF-8"?>'
    echo '<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">'
    echo '<plist version="1.0"><dict>'
    echo '  <key>Label</key>'
    printf '  <string>%s</string>\n' "$LABEL"
    echo '  <key>ProgramArguments</key><array>'
    echo '    <string>/bin/bash</string>'
    printf '    <string>%s</string>\n' "$SUPERVISOR"
    echo '  </array>'
    echo '  <key>WorkingDirectory</key>'
    printf '  <string>%s</string>\n' "$ROOT"
    echo '  <key>EnvironmentVariables</key><dict>'
    echo '    <key>PATH</key>'
    printf '    <string>%s</string>\n' "$SERVICE_PATH"
    echo '    <key>CODEX_BIN</key>'
    printf '    <string>%s</string>\n' "$CODEX_PATH"
    echo '  </dict>'
    echo '  <key>RunAtLoad</key><true/>'
    echo '  <key>KeepAlive</key><true/>'
    echo '  <key>ThrottleInterval</key><integer>30</integer>'
    echo '  <key>ProcessType</key><string>Background</string>'
    echo '  <key>StandardOutPath</key>'
    printf '  <string>%s</string>\n' "$RUNTIME/launchd.out.log"
    echo '  <key>StandardErrorPath</key>'
    printf '  <string>%s</string>\n' "$RUNTIME/launchd.err.log"
    echo '</dict></plist>'
  } > "$tmp"
  plutil -lint "$tmp" >/dev/null
  mv -f "$tmp" "$PLIST"
}

loaded() {
  launchctl print "$DOMAIN/$LABEL" >/dev/null 2>&1
}

if [ "$DRY_RUN" -eq 1 ]; then
  plan
  echo "action:     $cmd (no writes)"
  exit 0
fi

case "$cmd" in
  install)
    write_plist
    if loaded; then
      launchctl bootout "$DOMAIN/$LABEL"
    fi
    launchctl bootstrap "$DOMAIN" "$PLIST"
    echo "installed and started $LABEL"
    ;;
  start)
    if [ ! -f "$PLIST" ]; then
      write_plist
    fi
    if loaded; then
      echo "$LABEL is already running"
    else
      launchctl bootstrap "$DOMAIN" "$PLIST"
      echo "started $LABEL"
    fi
    ;;
  stop)
    if loaded; then
      launchctl bootout "$DOMAIN/$LABEL"
      echo "stopped $LABEL"
    else
      echo "$LABEL is already stopped"
    fi
    ;;
  restart)
    if loaded; then launchctl bootout "$DOMAIN/$LABEL"; fi
    [ -f "$PLIST" ] || write_plist
    launchctl bootstrap "$DOMAIN" "$PLIST"
    echo "restarted $LABEL"
    ;;
  status)
    plan
    if loaded; then
      launchctl print "$DOMAIN/$LABEL" | awk '/state =|pid =|runs =|last exit code =/{print}'
      exit 0
    fi
    echo "state:      stopped"
    exit 3
    ;;
  uninstall)
    if loaded; then launchctl bootout "$DOMAIN/$LABEL"; fi
    rm -f "$PLIST"
    echo "uninstalled $LABEL"
    ;;
  *)
    echo "usage: scripts/pipeline-service.sh [--dry-run] [install|start|stop|restart|status|uninstall]" >&2
    exit 2
    ;;
esac
