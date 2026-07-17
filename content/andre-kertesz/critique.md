verdict: resolved

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
