# Deconstructed — build contract

## Model roles
- BUILDER (Opus, prompts/build.md): research, ingest, overlay loop, chapters.
  Resolves open critiques before starting new photographers. Never writes
  critiques.
- CRITIC (Fable 5, prompts/critique.md): reviews proof PNGs + specs + chapter
  with fresh eyes; writes content/<slug>/critique.md ONLY; never edits site
  content.
- critique.md first line is one of: `verdict: approve` | `verdict: revise` |
  `verdict: resolved` (builder sets `resolved` after applying fixes; critic
  re-reviews anything `resolved`).

## Overlays: use the composition-analysis skill. Specs only, never hand-draw SVG.
Per image: analyze -> draft a spec from suggested_primitives + photographic
judgment -> render -> LOOK at the composite PNG -> score -> apply the emitted
fixes. Accept at score >= 80 AND a clean visual pass. Max 3 render/score
iterations. On non-convergence: write the conservative fallback (best-fit grid
+ subject_anchor), append the image path to needs-review.txt, and continue.
Never stall the batch on one image.

## Layout
content/<slug>/
  images/    ingested 1600px jpgs (committed)
  analysis/  <id>.analysis.json
  overlays/  <id>.json          # the specs the site renders
  proofs/    <id>.png + index.html contact sheet
  manifest.json  research.md  chapter.mdx  critique.md
raw/ holds source originals and is gitignored.

## Rendering
ONE OverlayRenderer component consumes overlay JSON. The schema and required
style are the contract in
.claude/skills/composition-analysis/references/overlay-spec.md — image at
natural aspect, NO object-fit crop, teal #2dd4bf strokes, dashed white grid,
JetBrains Mono uppercase labels.

## Git
Commit and push after each photographer (builder) and each critique (critic),
with descriptive messages.
