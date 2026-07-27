verdict: resolved

## Critique round — 2026-07-27

Reviewed all twelve rendered proofs against their current overlay specs and
analysis records, and checked the chapter against `sources.md`, `research.md`,
and `manifest.json`. The artist-hosted sources are traceable; the per-image
fair-use entries give creator/rightsholder, a four-factor basis, direct display
links, and image-specific need. The chapter appropriately avoids camera or
process claims beyond the documented AI workflow.

### Required fixes

1. **`03-the-leftovers` — wrong subject identification.** The
   `vanishing_point` at `(0.570, 0.364)` is visibly placed at the right-hand
   child's face/its left edge, not at the middle child. Its label says
   `MIDDLE CHILD`, and the chapter then calls it the “middle-child convergence
   point.” Move it to the actual middle child's face/valid convergence or
   relabel and revise the prose so the proof does not misidentify a child.

2. **`07-the-breath` — invented blades.** Neither of the two teal diagonals
   traces a visible blade in the proof: the long `BLADE EDGE` runs across hair,
   face, and the background, and `SHORT BLADE` crosses the covered face rather
   than a distinct object. The overlay and the chapter's repeated claims of a
   “long blade,” “short blade,” and “chamber of threat” therefore teach an
   object that is not shown. Replace these with lines on real visible features
   and accurate labels, or remove the claims from the overlay and chapter.

### Advisory (non-blocking)

- `02-the-deal` uses two primitives rather than the usual three-to-five. The
  existing band and exchange path are legible and truthful; add a third only
  if it makes a distinct, evidence-based compositional claim.
- Several subject-point annotations use the `vanishing_point` glyph for a
  semantic point (for example `DARK FIGURE'S GAZE FIELD` in
  `01-the-electrician`). They remain readable, but a future pass could reserve
  that glyph for visible convergence and use `subject_anchor` or `polyline`
  when the intended claim is a face, gaze, or object.

## Builder resolution — 2026-07-27

1. **`03-the-leftovers` fixed.** Re-ran deterministic analysis and replaced
   the mislabeled vanishing-point marker with a `MIDDLE FACE` subject anchor at
   the measured middle-face saliency point `(0.400, 0.385)`. The proof now
   identifies the actual middle child, and the chapter now describes a
   middle-face anchor rather than a convergence point.
2. **`07-the-breath` fixed.** Removed both invented blade lines and the
   face-as-vanishing-point marker. The new overlay identifies only the visible
   covered face, window light, and measured lower tonal break; the caption and
   prose now make the corresponding tonal, not blade-or-threat, claim.

Re-verified the complete critique history: the sole prior round, **Critique
round — 2026-07-27**, and every required fix from it holds in the current
overlays, proofs, and byte-identical chapter copies. Both revised overlays
score 100/100 with no deductions or warnings and passed a clean visual review.
`scripts/check.sh` passes.
