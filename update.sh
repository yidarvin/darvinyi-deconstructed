#!/usr/bin/env bash
# Idempotent Codex pipeline updater. It preserves the checked-in queue and prompts,
# including the open-first/documented-fair-use sourcing policy and its 640px normal
# image floor, applies the two historically honest short-chapter thresholds, then
# proves the operational contract cannot regress to the retired runner.
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$ROOT"

required=(
  AGENTS.md
  prompts/source.md
  prompts/build.md
  prompts/critique.md
  prompts/renderer.md
  prompts/ship.md
  prompts/status.md
  prompts/recover.md
  scripts/pipeline-lib.sh
  scripts/pipeline-supervisor.sh
  scripts/pipeline-service.sh
  scripts/validate_pipeline.py
  scripts/set_stage.py
  scripts/prune_raw.py
  .agents/skills/composition-analysis/SKILL.md
)

for path in "${required[@]}"; do
  [ -f "$path" ] || { echo "missing required Codex contract: $path" >&2; exit 1; }
done

echo ">> [1/4] applying registry compatibility fields"
python3 - <<'PY'
import json
from pathlib import Path

path = Path("data/registry.json")
registry = json.loads(path.read_text())
minimums = {"nicephore-niepce": 2, "louis-daguerre": 3}

for photographer in registry["photographers"]:
    slug = photographer["slug"]
    if slug in minimums:
        photographer["minImages"] = minimums[slug]

path.write_text(json.dumps(registry, indent=1, ensure_ascii=False) + "\n")
PY

echo ">> [2/4] checking the Codex-only operational surface"
bash scripts/check_no_legacy_runtime.sh

echo ">> [3/4] checking the autonomous pipeline drivers"
bash scripts/test_pipeline.sh

echo ">> [4/4] running the project gate"
bash scripts/check.sh

echo ">> Codex takeover contract is current"
