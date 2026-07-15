# Batch orchestration — running the loop unattended

## Per-image contract (put this in the repo CLAUDE.md too)

For each image in the batch queue:
1. analyze → 2. draft spec (suggested_primitives + judgment) → 3. render →
4. look at the PNG → 5. score → 6. revise with the emitted fixes.
Accept when score ≥ 80 AND visual pass is clean. Hard cap: 3 render/score
iterations per image. On non-convergence: write the conservative fallback
spec (best grid + subject_anchor), append the path to needs-review.txt,
move on. Never stall the batch; never hand-draw around the spec format.

## Where files live (Deconstructed layout)

```
content/<photographer-slug>/
  images/           # ingested 1600px jpgs (originals stay out of git)
  manifest.json     # from ingest.py (dimensions + EXIF settings)
  analysis/<id>.analysis.json
  overlays/<id>.json          # the specs the site renders
  proofs/<id>.composite.png   # loop artifacts; also the QA contact sheet
```

## Verification order

1. score_overlay.py — cheap, deterministic, every iteration.
2. Your own eyes on the composite PNG — every iteration.
3. (Optional, once per photographer) an independent critic: a second model
   instance given only the composite + the rubric, no drafting context.
   Generator-grades-itself drifts lenient; a fresh context does not.
4. (Optional, final) Playwright screenshot of the site page to confirm
   OverlayRenderer parity — catches CSS cropping bugs, not spec bugs.

## QA without a human gate

After each photographer, write proofs/index.html — an <img> grid of all
composites. Nobody must look at it for the batch to proceed; anybody can.
