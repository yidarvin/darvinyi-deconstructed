verdict: resolved

## Critique round — 2026-07-26

### Required

1. **01-253-rua-lisboa-itapecerica-da-serra — `BUTTERFLY GLITCH`:** the ellipse at `cx 0.49, cy 0.58, rx 0.06, ry 0.035` sits on empty pavement below the orange butterfly-shaped stitch artifact (centered around `y 0.49`). Move it to the artifact and re-render.
2. **01-253-rua-lisboa-itapecerica-da-serra — `ROAD'S TURN`:** the vanishing-point marker at `(0.331, 0.229)` falls in the distant settlement/sky rather than on the road turn it names. Relocate it to the actual convergence/turn or remove/rename the claim.
3. **02-nacozari-de-garcia-montezuma — `LEFT TRUNK DIAGONAL`:** the leading line from `(0.011, 0.074)` to `(0.401, 0.676)` crosses foliage and ends at the Street View-arrow area; it does not trace a visible trunk. Redraw it on an actual trunk or remove it.
4. **06-214-9th-avenue-new-york — `RAISED-ARM FIGURE`:** the ellipse begins at about `y 0.39`, omitting the subject's raised hands and forearms above it. Expand/recenter the mark so the named raised-arm gesture and figure are actually identified.
5. **08-calle-de-osona-santa-perpetua — `HITCHHIKER`:** the ellipse at `(0.47, 0.57)` encloses the truck-door/wheel-area figure and only clips the outstretched hitchhiker at left. Recenter and resize it on the outstretched figure named by the chapter and source note.
6. **12-wujie-township-yilan — `STREET EDGE`:** the nearly level polyline at `y 0.82–0.86` crosses pavement, cyclist, and gate threshold rather than the visible road/curb edge, which slopes markedly down to the right. Redraw it on that edge or remove it.

### Advisory (non-blocking)

- **03-d52-blaru — `UTILITY-BIN FRAME`:** the frame begins above the bin and cuts off its lower portion; it still reads as the relevant bin/child area, but a tighter frame would clarify the claim. The `STAIR STRUCTURE` U-shape also reads more like the underside/landing than the diagonal stair run.
- **07-9-rua-pereira-da-costa-rio — `WITNESS WALL`:** the broad frame is legible as the facade and witness area, though an anchor or a more precise label would make the witness claim clearer.
- **08-calle-de-osona-santa-perpetua — `ROAD DIAGONAL`:** the final segment crosses the truck/figures rather than a road edge; reconsider it after correcting the hitchhiker anchor.
- **10-eje-3-sur-av-baja-california — `SPECTATOR ARC`:** the polyline cuts through central figures instead of following the crowd perimeter; the enclosing ellipse already carries the teaching point.

All twelve documented JPEG routes and the three supporting public records were reachable during this review. The per-image fair-use rationale is present, the chapter does not invent camera settings, and every overlay passes the deterministic scorer at 100/100; the required items above are visual/semantic mismatches that scorer does not measure.

## Builder resolution — 2026-07-26

Re-ran the composition-analysis loop (analyze → render → visual pass → score) for every required image. The regenerated overlays score 100/100 and visually place each retained claim on the named feature.

1. `01-253-rua-lisboa-itapecerica-da-serra`: moved `BUTTERFLY GLITCH` onto the orange artifact and removed the unsupported `ROAD'S TURN` vanishing-point claim.
2. `02-nacozari-de-garcia-montezuma`: removed the false `LEFT TRUNK DIAGONAL` rather than assert a non-existent structural line.
3. `06-214-9th-avenue-new-york`: expanded and recentered `RAISED-ARM FIGURE` to include the hands, forearms, torso, and legs.
4. `08-calle-de-osona-santa-perpetua`: recentered `HITCHHIKER` on the outstretched figure and removed the advisory `ROAD DIAGONAL` line that crossed the truck.
5. `12-wujie-township-yilan`: redrew `STREET EDGE` along the visibly descending curb/road boundary.

Full critique-history re-verification: reviewed the sole prior round, **Critique round — 2026-07-26**, and confirmed all six of its required fixes remain present in the current overlays and proofs. No earlier critique rounds exist in the Git history for this slug. `scripts/check.sh` passed before this resolution.
