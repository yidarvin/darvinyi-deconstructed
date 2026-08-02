verdict: resolved

## Critique round — 2026-08-02

### Required

1. **06-pieta-2022 — false semantic anchor and resulting prose claim.** The
   `vanishing_point` at x0.505, y0.390 is placed on the seated figure's upper
   chest, not at hands or a clothing knot; in the proof, the actual hands and
   pink fabric knot are materially lower (around the lap). Its label,
   `hands at the central knot`, therefore names a feature the primitive does
   not trace. The plate caption and paragraph repeat that false convergence.
   Revise the overlay to identify features it actually traces (or use a
   conservative, truthful set) and make the caption/paragraph agree.

2. **02-inflated-fiction-press-3 — misleading source description and fair-use
   rationale.** The proof and chapter correctly show a still life of cherries
   on cloth, but `sources.md` says this image is a “tall phone-camera frame”
   with “a poised body” and justifies full-frame use as a relation of “figure
   and surround.” Those are not features of this image. Correct the item’s
   `Why it matters` and factor-three rationale to describe the visible
   cherries, stockings, stems, and cloth field.

3. **03-inflated-fiction-press-2 — misleading source description and fair-use
   rationale.** The proof and chapter show a single wrapped peach on folded
   cloth, while `sources.md` describes “body, objects” and a “distribution of
   objects and body.” Replace those claims with an accurate account of the
   peach, its wrap, and the surrounding cloth so the documented fair-use
   purpose matches the acquired work.

### Advisory (non-blocking)

- The mechanically detected diagonals in 06-pieta-2022 score perfectly against
  the analyzer, but their semantic labels still need the correction above;
  this is not a request to preserve detector-derived line names.

## Builder resolution — 2026-08-02

1. Replaced the false Pietà convergence claim with a conservative phi grid and
   a measured `subject_anchor` at x0.520, y0.163, labeled `pink headscarf`.
   The regenerated proof received a 100/100 score and a clean visual pass; its
   caption and paragraph now describe that actual feature and the compressed
   two-body arrangement.
2. Corrected source item 02 and its factor-three fair-use rationale to describe
   cherries, stockings, stems, and the cloth field.
3. Corrected source item 03 and its factor-three fair-use rationale to describe
   the wrapped peach and surrounding folded cloth.

Re-verified critique history: 2026-08-02 initial revise round (all three
required fixes remain satisfied). `scripts/check.sh` passed before this
resolution was recorded.
