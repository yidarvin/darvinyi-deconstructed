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

## Critique round — 2026-08-02

### Required

1. **01-self-portrait-2013 — inaccurate feature in the documented fair-use
   rationale.** The rendered proof and chapter show a laptop as the lower
   mediating screen; no phone is visible. In `sources.md`, factor three says
   the complete frame is needed to analyze the relation of “face, body, phone,
   and room.” Replace `phone` with the visible laptop (and retain the actual
   face/body/room rationale) so the per-image necessity explanation accurately
   describes the acquired work.

### Advisory (non-blocking)

- **06-pieta-2022:** The resolved conservative headscarf anchor remains true
  and precisely placed, but it is a deliberately minimal one-primitive lesson.
  Adding further truthful compositional cues could enrich the pedagogy; it is
  not a blocker because the existing overlay and matching prose do not make a
  false claim.

All previously required corrections remain resolved: the current Pietà anchor
is on the pink headscarf, and source entries 02 and 03 accurately describe the
visible still lifes. All ten current specs pass the deterministic scorer at
100/100, and each linked source page and public-display JPEG returned HTTP 200
during this review.

## Builder resolution — 2026-08-02

1. Corrected the *Self Portrait* factor-three rationale to name the visible
   laptop, retaining the accurate face, body, and room relationship that makes
   the complete frame pedagogically necessary.

Re-verified critique history: the initial 2026-08-02 revise round (Pietà,
*Arvida Byström 3*, and *Arvida Byström 2*) and the subsequent 2026-08-02
*Self Portrait* revise round. The Pietà proof and conservative headscarf
anchor remain visually truthful and score 100/100; source records 02 and 03
remain accurate to the visible cherries/stockings/cloth and wrapped
peach/folded-cloth images; the *Self Portrait* proof visibly contains a laptop,
not a phone. Full `scripts/check.sh` verification passed for this resolution.

## Critique round — 2026-08-02

### Required

1. **09-crushing-2025 — the `screen inset` frame does not trace the visible
   display.** The proof's `frame_in_frame` has bounds x0.390–0.610 and
   y0.090–0.220, while the white display it names is approximately
   x0.475–0.666 and y0.129–0.224. Its left edge therefore brackets empty wall
   and its right edge stops inside the display by about 0.056 of the frame,
   outside the ~2% endpoint tolerance. Revise this primitive's bounds (or
   remove it); regenerate the proof and keep the chapter's screen-inset
   discussion consistent with the resulting truthful overlay.

### Advisory (non-blocking)

- **06-pieta-2022:** The previously resolved, one-primitive headscarf overlay
  remains semantically and geometrically true. Its deliberately minimal
  pedagogy is not a regression and does not block approval.

All other current overlays were visually checked against their proofs and
scored 100/100 independently. The prior rounds' source corrections remain
present: each image has a traceable credited source and a per-image four-factor
fair-use rationale, and no historical camera setting is asserted as established
fact.

## Builder resolution — 2026-08-02

1. Tightened the *Crushing* `screen inset` frame to the visible display bounds:
   x0.475–0.666 and y0.129–0.224. The regenerated proof now traces the display
   rather than adjacent wall; the existing screen-inset caption and paragraph
   remain accurate.

Re-verified critique history: the 2026-08-02 round correcting *Pietà* and the
two *Inflated Fiction* still-life source records; the subsequent 2026-08-02
*Self Portrait* laptop correction; and the current 2026-08-02 *Crushing*
inset correction. The Pietà anchor remains on the pink headscarf, the two
still-life source records retain accurate visible descriptions and fair-use
rationales, the *Self Portrait* names its visible laptop, and the revised
*Crushing* frame cleanly follows the display. All ten overlays score 100/100,
and `scripts/check.sh` passed before this resolution was recorded.
