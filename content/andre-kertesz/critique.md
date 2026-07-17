verdict: revise

## Critique round — 2026-07-17

### Required

1. `04-shadows-paris`: correct the annotations that misname or miss the visible shadows. In the proof, `CENTRAL HEAD SHADOW` at `(0.397, 0.398)` is on the central visible person's head, rather than on a shadow head, and the `TALL SHADOW` polyline at approximately `x=0.37–0.39` runs in the pale pavement left of the tall dark shadow for much of its length. Retarget or remove these primitives and align the chapter wording if needed.

2. `12-under-the-eiffel-tower`: remove or retarget the `TOWER BRACE` leading line. Its path from `(0.617, 0.833)` to `(0.765, 0.348)` crosses the open plaza/road rather than a visible iron tower brace, while the caption and body characterize it as a diagonal brace leading to truss convergence. The label/spec and prose therefore make a materially false structural claim. Rebuild this teaching point around a visible architectural edge, or omit it.

3. `sources.md`: complete the concise four-factor fair-use rationale for every selected image. The current per-image entries document transformative educational purpose (factor one), why the whole frame is needed (factor three), and non-substitution/market effect (factor four), but omit factor two: the creative and published nature of the photographed work and its bearing on the analysis. Add that assessment per entry; retain the existing credited Art Institute record and IIIF route.

### Advisory (non-blocking)

- `05-distortion-102` uses a thirds grid although its analysis rates phi as the better fit (`0.214` versus `0.148`). The difference is within the scorer's 0.10 grid tolerance, so this is not a blocker.

All twelve current collection-record URLs resolve and their Art Institute API metadata matches the documented titles, dates, credit lines, and IIIF image identifiers. The remaining chapter metrics match the stored analyses, and no invented capture settings were found.

## Builder resolution — 2026-07-17

1. Rebuilt `04-shadows-paris` from the ingested image and replaced the misplaced tall-shadow line with three paths that follow the visible children's cast shadows. The anchor is now explicitly the visible central figure, and the edge follows the brick-pavement boundary. The final proof passed at 94/100 with a clean visual pass.
2. Rebuilt `12-under-the-eiffel-tower` around the visible overhead iron arch, left tower leg, and arched truss shadow. The ground-crossing "tower brace" and unsupported convergence claim were removed from the overlay, caption, and prose. The final proof passed at 100/100 with a clean visual pass.
3. Added a concise factor-two assessment to every selected-image fair-use rationale: each creative, published photograph weighs modestly against fair use, while the existing transformative, whole-frame-necessity, and non-substitution analyses retain the other three factors.

Full critique history re-verified: 2026-07-17 round (the sole prior round). All required fixes in that round are reflected in the current overlays, proofs, chapter, and source notes. `scripts/check.sh` passed before this resolution was recorded.

## Critique round — 2026-07-17

### Required

1. `01-chez-mondrian`: retarget or remove `STAIR RAIL`. The segment from `(0.480, 0.475)` to `(0.765, 0.369)` rises across the open doorway/stairwell and does not follow the photographed rail, which runs in the opposite diagonal from the upper-left of the stair opening toward the right. The label therefore makes a false directional claim.

2. `02-mondrians-glasses-and-pipe`: refit or relabel the `SPECTACLE LENSES` ellipse. Its bounds (`cx=0.371`, `cy=0.444`, `rx=0.125`, `ry=0.110`) cover only part of the upper lens while extending over empty tabletop and the ashtray; they do not trace the pair of spectacle lenses named by the label.

3. `06-satiric-dancer-paris`: correct the annotations that name structures they do not trace. `LEFT LEG` begins at the sitter's left hand and crosses the dress/cushion before it reaches the leg; `RIGHT LEG` likewise begins at the hand/arm and crosses the body and couch. The complete `COUCH BACK` ellipse also crosses the sitter's dress, thighs, and the open floor rather than tracing the couch back. Replace these with paths that follow the named limbs and couch edge, or relabel them to make the intended interpretive claim truthful. Update the caption/body only if the revised teaching claims change.

4. `11-paul-armas-hands`: correct two inaccurate labeled marks. The `SPECTACLE PAIR` ellipse (`x=0.350–0.760`, `y=0.355–0.535`) mostly encloses the left lens and bridge but leaves much of the right lens outside its bounds. The `WRIST EDGE` path from `(0.210, 0.120)` to `(0.110, 0.560)` starts in the background and cuts across the hand rather than following its wrist boundary. Refit, narrow, or relabel each primitive so its visible feature matches its label.

### Advisory (non-blocking)

- `07-quartet`: the `MUSIC STAND` brackets emphasize the score and right support more than the complete stand. It remains recognizable as the centered stand, so this is not a blocker; a tighter label or wider frame would be clearer.
- `08-the-dancing-faun`: `SHRUB HORIZON` is a useful low baseline but crosses foliage rather than the irregular sky/shrub edge continuously. This remains a legible compositional reading, not a materially false one.

The earlier required corrections for `04-shadows-paris` and `12-under-the-eiffel-tower` remain resolved in their current proofs and specs. All twelve current Art Institute collection-record URLs return 200, each selected image has an attributable fair-use rationale covering all four factors, and no invented capture settings were found. `python3 scripts/validate_pipeline.py` passes.
