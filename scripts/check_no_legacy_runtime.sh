#!/usr/bin/env bash
# Fail if an executable driver, prompt, or operational document can invoke or
# restore the retired runtime or its model assignments.
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

targets=(
  run.sh
  runqueue.sh
  update.sh
  scripts
  AGENTS.md
  .agents
  README.md
  prompts
  src
  vite.config.ts
  .gitignore
)

legacy_cli="clau""de"
legacy_vendor="anth""ropic"
legacy_models="son""net|op""us|fa""ble"
legacy_effort="ultra""code"
legacy_env="CLAU""DE_CODE_"
pattern="\\b(${legacy_cli}|${legacy_vendor}|${legacy_models}|${legacy_effort})\\b|\\.${legacy_cli}|${legacy_env}"

if grep -R -n -i -E "$pattern" "${targets[@]}"; then
  echo "LEGACY RUNTIME SCAN FAILED" >&2
  exit 1
fi

echo "operational surface is Codex-only"
