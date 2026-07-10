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
