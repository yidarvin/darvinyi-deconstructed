#!/usr/bin/env bash
# Deconstructed — pipeline v2 update. Run ONCE from inside darvinyi-deconstructed:
#   chmod +x update.sh && ./update.sh
# Turns the registry into a full 9-wave queue and installs the complete prompt set.
set -euo pipefail
[ -f data/registry.json ] || { echo "!! run this from inside darvinyi-deconstructed (data/registry.json not found)"; exit 1; }

echo ">> [1/4] migrating registry: rights / stage / wave"
python3 - <<'PYEOF'
import json

r = json.load(open("data/registry.json"))
ph = r["photographers"]
batch1 = r["_meta"].get("batch1", [])

def chunk(lst, sizes):
    out, i = [], 0
    for s in sizes:
        out.append(lst[i:i+s]); i += s
    assert i == len(lst), (i, len(lst))
    return out

for e in ph:
    if "rights" not in e:
        e["rights"] = e.pop("status")
    e.pop("status", None)
    e.pop("researched", None)
    e.setdefault("stage", "pending")   # pending -> sourced -> built -> approved

pool    = [e for e in ph if e["slug"] not in batch1]
pd_rest = [e["slug"] for e in pool if e["rights"] == "pd"]
mixed   = [e["slug"] for e in pool if e["rights"] == "mixed"]
copyr   = [e["slug"] for e in pool if e["rights"] == "copyrighted"]

waves = {1: list(batch1)}
n = len(pd_rest); a = (n + 2) // 3; b = (n - a + 1) // 2
for i, w in enumerate(chunk(pd_rest, [a, b, n - a - b])):
    waves[2 + i] = w
waves[5] = mixed
m = len(copyr); c1 = (m + 3) // 4; c2 = (m - c1 + 2) // 3; c3 = (m - c1 - c2 + 1) // 2
for i, w in enumerate(chunk(copyr, [c1, c2, c3, m - c1 - c2 - c3])):
    waves[6 + i] = w

slug2wave = {s: w for w, slugs in waves.items() for s in slugs}
for e in ph:
    e["wave"] = slug2wave[e["slug"]]

meta = r["_meta"]
meta["rightsLegend"] = meta.pop("statusLegend", meta.get("rightsLegend", {}))
meta["stageLegend"] = {
    "pending": "not started",
    "sourced": "raw/<slug>/ has usable images; sources.md written",
    "built": "ingested, overlays, proofs, chapter.mdx done; wired into site",
    "approved": "critic verdict: approve",
}
meta["queue"] = ("registry IS the queue. A prompt's active wave = the lowest "
                 "wave containing photographers at its input stage. Waves are "
                 "PD-first: 1=batch1, 2-4=remaining PD, 5=mixed, 6-9=copyrighted.")
rights_of = {e["slug"]: e["rights"] for e in ph}
meta["waves"] = {str(w): {"count": len(s), "rights": sorted({rights_of[x] for x in s})}
                 for w, s in sorted(waves.items())}

json.dump(r, open("data/registry.json", "w"), indent=1, ensure_ascii=False)
print("   waves:", {w: len(s) for w, s in sorted(waves.items())},
      "| stages:", sorted({e["stage"] for e in ph}))
PYEOF

echo ">> [2/4] writing the full prompt set"
mkdir -p prompts

if [ ! -f prompts/renderer.md ]; then
cat > prompts/renderer.md <<'P0'
Build the OverlayRenderer React component for this site. The overlay JSON
schema and required visual style are the contract in
.claude/skills/composition-analysis/references/overlay-spec.md — read it
first. Render an <svg viewBox="0 0 W H"> absolutely positioned over the <img>,
image at natural aspect ratio with NO object-fit cropping, and support every
primitive in the schema. Add a small demo page that renders
.claude/skills/composition-analysis/examples/example-spec.json over a test
image so it can be eyeballed. Commit and push when done.
P0
fi

cat > prompts/source.md <<'P1'
You are the SOURCER (builder side). Read CLAUDE.md first.

Active wave: the lowest `wave` in data/registry.json with any photographer at
stage "pending". Work those photographers one at a time, registry order:

1. Research the canonical 10-12 photographs for the photographer (the
   registry `note` and `source` fields are starting hints). Favor images that
   are compositionally canonical and available at good resolution.
2. Write content/<slug>/sources.md: the shortlist with title/date, one line on
   why each image matters compositionally, the best source URL, and its
   rights basis.
3. For every shortlisted image downloadable from an open institutional source
   (Library of Congress, Gallica/BnF, Getty Open Content, Wikimedia Commons,
   Rijksmuseum and similar open-access collections): download the
   highest-resolution version into raw/<slug>/ as NN-short-title.jpg. Verify
   each file opens and its long edge is >= 1200px; find a better copy if not.
   Never bypass logins, paywalls, or download protections. Anything that
   cannot be fetched cleanly goes into content/<slug>/NEEDED.md with exact
   title, date, and where a good print/scan lives — then move on.
4. When raw/<slug>/ has >= 8 usable images (or everything else is on
   NEEDED.md), set that photographer's registry stage to "sourced".
5. Commit and push per photographer ("source: <slug> — N images, M needed").

raw/ is gitignored: image files stay local; sources.md and NEEDED.md are
committed. Do not ingest or build anything here.
P1

cat > prompts/build.md <<'P2'
You are the BUILDER. Read CLAUDE.md first and follow the model roles.

0. Resolve critiques: for every content/*/critique.md with `verdict: revise`,
   apply each numbered fix — re-run the composition-analysis loop for
   affected images, update overlays/proofs/chapter as needed — then set
   `verdict: resolved`. Commit and push per slug ("resolve critique: <slug>").
1. Active wave: the lowest `wave` in data/registry.json with any photographer
   at stage "sourced". Work them one at a time, registry order. For <slug>:
   a. Read content/<slug>/sources.md. Write content/<slug>/research.md:
      technique, era, printing, and camera settings ONLY where the historical
      record has them (film-era work usually will not — say so, never
      invent).
   b. Ingest raw/<slug>/ into content/<slug>/images/ using
      .claude/skills/composition-analysis/scripts/ingest.py with
      --manifest content/<slug>/manifest.json.
   c. For every ingested image, run the composition-analysis skill's full
      loop; write specs to content/<slug>/overlays/<id>.json and proofs to
      content/<slug>/proofs/<id>.png; then write proofs/index.html as a
      contact sheet of all proofs.
   d. Write content/<slug>/chapter.mdx: why the photographs work, citing the
      overlay claims and the analyzer's tonal/palette findings, honest about
      settings per (a).
   e. Wire the chapter into the site per template conventions (route, nav,
      index/TOC ordered by registry group) and confirm the production build
      passes.
   f. Set that photographer's registry stage to "built". Commit and push
      ("build: <slug>").
If an image lands in needs-review.txt, keep going — never stall the batch.
Do not write critiques; that is the critic's job.
P2

cat > prompts/critique.md <<'P3'
You are the CRITIC. You never edit site content — critique.md and the
registry `stage` field are the only things you write.

For each photographer at stage "built" whose critique.md is missing or marked
`verdict: resolved`:
1. LOOK at every proof PNG in content/<slug>/proofs/ with fresh eyes.
2. Read the matching overlays/*.json, sources.md, research.md, chapter.mdx.
3. Judge four things:
   a. Overlay truthfulness — every primitive lands on what its label claims.
   b. Pedagogy — 3-5 primitives that teach the composition, not an inventory.
   c. Chapter accuracy — prose claims match the specs and the visible images.
   d. Settings honesty — no invented camera data anywhere.
4. Write content/<slug>/critique.md: first line `verdict: approve` or
   `verdict: revise`, then numbered, specific fixes referencing image ids.
5. On approve, set that photographer's registry stage to "approved".
6. Commit and push ("critique: <slug> — <verdict>").
P3

cat > prompts/ship.md <<'P4'
You are the BUILDER doing a site-wide integration pass.

1. Verify every photographer at stage "approved" is fully wired in: route
   resolves, listed in nav/index in registry group order, images and
   overlays render from their JSON specs.
2. The production build must pass clean; fix whatever does not.
3. If Playwright is available, screenshot 2-3 chapter pages and confirm
   overlays sit aligned on their images (no object-fit or aspect
   regressions).
4. Update the home/index page: progress (approved count / 100), newest
   chapters.
5. Commit and push ("ship: integration pass — N chapters live").
P4

cat > prompts/status.md <<'P5'
Report only — change nothing, commit nothing.

Read data/registry.json and the content/ tree, then print a queue dashboard:
- Per wave: counts by stage (pending / sourced / built / approved).
- Active wave detail: per photographer — stage, raw image count, ingested
  count, overlay count, critique verdict if any, NEEDED.md count if any.
- Contents of needs-review.txt, if present.
- One line: which prompt to run next (source / build / critique / ship) and
  why.
P5

echo ">> [3/4] rewriting CLAUDE.md contract"
cat > CLAUDE.md <<'MDEOF'
# Deconstructed — build contract

## Model roles
- SOURCER / BUILDER / SHIP / STATUS — Opus. Prompts: source.md, build.md,
  ship.md, status.md.
- CRITIC — Fable 5. Prompt: critique.md. Writes ONLY content/<slug>/critique.md
  and the registry `stage` field; never edits site content.
- critique.md first line: `verdict: approve` | `verdict: revise` |
  `verdict: resolved` (builder sets resolved after applying fixes; critic
  re-reviews resolved).

## The queue
data/registry.json IS the queue. Per photographer: `rights`
(pd|mixed|copyrighted), `wave` (1-9, PD-first), `stage`
(pending -> sourced -> built -> approved). A prompt's active wave is the
lowest wave containing photographers at its input stage. Prompts update
stages as they complete work; nothing else tracks state.

## Overlays: use the composition-analysis skill. Specs only, never hand-draw SVG.
Per image: analyze -> draft a spec from suggested_primitives + photographic
judgment -> render -> LOOK at the composite PNG -> score -> apply the emitted
fixes. Accept at score >= 80 AND a clean visual pass. Max 3 render/score
iterations. On non-convergence: write the conservative fallback (best-fit
grid + subject_anchor), append the image path to needs-review.txt, and
continue. Never stall the batch on one image.

## Layout
content/<slug>/
  images/    ingested 1600px jpgs (committed)
  analysis/  <id>.analysis.json
  overlays/  <id>.json          # the specs the site renders
  proofs/    <id>.png + index.html contact sheet
  manifest.json  sources.md  NEEDED.md  research.md  chapter.mdx  critique.md
raw/<slug>/ holds source originals and is gitignored.

## Rendering
ONE OverlayRenderer component consumes overlay JSON. The schema and required
style are the contract in
.claude/skills/composition-analysis/references/overlay-spec.md — image at
natural aspect, NO object-fit crop, teal #2dd4bf strokes, dashed white grid,
JetBrains Mono uppercase labels.

## Git
Commit and push per photographer (sourcer/builder), per critique (critic),
and per integration pass (ship), with descriptive messages.
MDEOF

echo ">> [4/4] commit & push"
git add -A
git commit -qm "pipeline v2: 9-wave queue (rights/stage/wave) + full prompt set (source/build/critique/ship/status)"
git push
echo ">> done — queue and prompts are live in the repo"
