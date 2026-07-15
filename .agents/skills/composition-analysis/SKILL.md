---
name: composition-analysis
description: Generate, render, and score compositional overlay diagrams for photographs using deterministic computer vision as ground truth. Use this skill whenever the task involves photo overlays, compositional analysis or deconstruction of photographs, rule-of-thirds / golden-spiral / leading-line diagrams, the Deconstructed photobook pipeline, or any need for measured image geometry (horizon, vanishing point, saliency, faces, symmetry) — even if the user just says "annotate this photo" or "make the overlay for this image".
---

# Composition Analysis

Produce overlay diagrams that actually land on the photograph's geometry, with
no human in the loop. The design principle: **you parameterize, you never
draw.** Overlays are typed JSON specs (see `references/overlay-spec.md`); a
deterministic analyzer measures the image; a deterministic scorer tells you
exactly how far each primitive is from the measured geometry. Your job is
judgment — choosing *what to claim* about the composition — not steady hands.

## Dependencies

```bash
python3 -m pip install opencv-python-headless pillow numpy
```

## Tools (all in scripts/)

```bash
python3 scripts/ingest.py SRC OUT_DIR --long-edge 1600 --manifest manifest.json
python3 scripts/analyze_composition.py IMAGE -o analysis.json
python3 scripts/render_overlay.py IMAGE spec.json -o composite.png
python3 scripts/score_overlay.py analysis.json spec.json --threshold 80
```

- **ingest** — normalize sources once per image set: bakes EXIF orientation
  (browsers honor it, OpenCV doesn't — skipping this rotates every overlay),
  resizes, records camera EXIF into the manifest before it's stripped.
  Always analyze the *ingested* file, never the raw source.
- **analyze** — measures lines, horizon, vanishing point, saliency, faces,
  symmetry, thirds-vs-phi grid fit, tonal stats, palette. Emits
  `suggested_primitives`: a deterministic first draft with confidences.
- **render** — draws a spec onto the photo. Same normalized coordinates the
  site's OverlayRenderer uses, so what's aligned here is aligned there.
- **score** — 0–100 against the measured geometry, with a concrete `fix`
  string per deduction ("set y to 0.602"). This is your error signal.

## The loop (run this per image)

1. `analyze_composition.py` → `analysis.json`.
2. **Draft the spec.** Start from `suggested_primitives`, then apply
   photographic judgment:
   - Prune false positives. A vanishing point on a portrait collar or a
     "horizon" that is really a tonal split are detector artifacts, not
     compositional claims. The analyzer proposes; you decide.
   - Rename labels to what the feature *is* ("table edge", "gaze", "curb
     line") — never leave a label lying.
   - Add interpretive primitives (`polyline` for a gaze or contour,
     `frame_in_frame` for a doorway) when they teach something the
     detectors can't see.
   - 3–5 primitives. An overlay is an argument, not an inventory.
3. `render_overlay.py` → composite PNG.
4. **Look at the composite.** Read the image file and check: does every
   line sit on the thing its label claims? Is the subject anchor on the
   subject? Is anything cluttered or mislabeled? This visual pass catches
   what geometry can't (semantic wrongness, ugly stacking).
5. `score_overlay.py` → apply geometric `fix` strings verbatim; treat
   `warnings` as judgment calls (an unsupported gaze line may be exactly
   right — detectors can't see gazes).
6. Repeat 3–5 until **score ≥ 80 AND the visual pass is clean**, max
   **3 iterations**.
7. **Fallback** (not converged): emit the conservative spec — best-fitting
   grid + `subject_anchor` only. It is always defensible and keeps the
   batch moving. Log the image path to `needs-review.txt` and continue;
   never stall a batch on one image.

## Rules

- Emit spec JSON only; never hand-author SVG or draw freeform.
- Coordinates are normalized, x∈[0,1] left→right, y∈[0,1] top→down.
- A detector miss is evidence, not proof: warnings cost little by design.
  A geometric deduction, though, is nearly always real — trust the numbers
  over your eyeballed guess of where the horizon is.
- One claim per primitive; if two primitives say the same thing, cut one.

## References

- `references/overlay-spec.md` — full spec schema; doubles as the contract
  for the site's OverlayRenderer component. Read before writing your first
  spec in a session.
- `references/scoring-rubric.md` — every deduction, tolerance, and weight.
  Read when tuning thresholds or debating a score.
- `references/agent-loop.md` — batch orchestration, stop conditions,
  headless invocation pattern, contact-sheet QA.
- `examples/example-spec.json` — a passing spec for a landscape with a
  vanishing point.
