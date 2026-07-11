#!/usr/bin/env bash
# The definition of mechanical done. Run from the repo root. Sections run in order
# and fail fast: an item is not done until every hard section passes. Lint is
# advisory and never blocks the gate. Build already runs tsc --noEmit, so there is
# no separate typecheck section.
set -uo pipefail

echo "== 1/6 validate (queue + registry + content) =="
if ! python3 scripts/validate.py; then
  echo "VALIDATE FAILED"
  exit 1
fi

echo ""
echo "== 2/6 chapter sync (content/ <-> src/chapters/) =="
# Every built chapter is authored in src/chapters/<slug>.mdx (what the site
# renders) and mirrored at content/<slug>/chapter.mdx (the pipeline copy). They
# MUST stay byte-identical: a resolve pass that edits one but not the other
# leaves the live site rendering text a critique already disproved. Only check
# slugs that have a content chapter.mdx (unbuilt chapters have none yet).
sync_bad=0
for cf in content/*/chapter.mdx; do
  [ -e "$cf" ] || continue
  slug="$(basename "$(dirname "$cf")")"
  sf="src/chapters/$slug.mdx"
  if [ ! -f "$sf" ]; then
    echo "  MISSING rendered copy: $sf (content has $cf)"
    sync_bad=1
  elif ! diff -q "$cf" "$sf" >/dev/null 2>&1; then
    echo "  DIVERGED: $cf != $sf — the site would render stale text"
    sync_bad=1
  fi
done
if [ "$sync_bad" -ne 0 ]; then
  echo "CHAPTER SYNC FAILED — run: cp content/<slug>/chapter.mdx src/chapters/<slug>.mdx"
  exit 1
fi
echo "all built chapters byte-identical between content/ and src/chapters/"

echo ""
echo "== 3/6 prose lint =="
if ! python3 scripts/prose_lint.py; then
  echo "PROSE LINT FAILED"
  exit 1
fi

echo ""
echo "== 4/6 test =="
if ! npm run test; then
  echo "TESTS FAILED"
  exit 1
fi

echo ""
echo "== 5/6 build (tsc --noEmit + vite build) =="
if ! npm run build; then
  echo "BUILD FAILED"
  exit 1
fi

echo ""
echo "== 6/6 lint (advisory) =="
if ! npm run lint; then
  echo "lint reported issues (advisory, not blocking the gate)"
fi

echo ""
echo "CHECK OK"
