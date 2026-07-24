verdict: revise

## Critique round — 2026-07-24

### Required fixes

1. **`02-living-together-12` — correct `WALL EDGE`.** The line from `(0.254, 0.438)` to `(0.317, 0.256)` follows the left figure's hair/head contour, not a wall edge. The analyzer only proposed it as an unlabeled, low-confidence (`0.23`) line. Relabel it to the feature it actually traces or remove it.

2. **`05-brud-5` and `06-brud-2` — correct `SHARED HEADLINE`.** In each proof the short V-shaped polyline sits between/through the faces rather than tracing a shared head line; the heads are visibly at different heights. Remove it or replace it with a plainly visible, truthfully named relationship.

3. **`07-brud-7` — remove or correct `PAIRED CENTER`.** The vertical symmetry primitive at `x=0.388` passes through the bride, not the midpoint of the pair, and the image is not mirror-symmetric about it. The analyzer's correlation is not grounds for a semantic symmetry claim here.

4. **`09-living-together-4` — correct `FLOOR EDGE`.** The labelled diagonal crosses the foreground figure/tabletop area and does not trace a visible floor edge. Remove it or anchor a line to an actual named edge.

5. **`10-living-together-6` — correct `FLOOR DIVIDE`.** The horizontal at `y=0.765` falls on the bedding/bed boundary; no floor is visible at that position. Relabel it to the feature it traces or remove it. Align the plate caption and prose if the intended reading changes.

6. **`12-old-man-staircase-82` — correct both architectural claims.** The `STAIR RAIL` line runs from the left rail across empty space and blank wall to `(0.91, 0.41)`, rather than following the visible rail. The `STAIRWELL AXIS` symmetry primitive also asserts bilateral structure the window-and-wall stairwell does not have. Replace these with primitives that trace actual rail/stair features, or remove them.

7. **`sources.md`, *Old Man Cowboy #05* — correct the visible description and fair-use necessity statement.** The proof shows a centered, frame-dominant horse-and-rider silhouette in smoke, not a small rider in an open landscape with a low horizon. Revise the image description and factor-three explanation to the actual visible smoke field and scale relationship; the existing overlay and chapter correctly describe the centered mass.

8. **`sources.md`, *Old Man Going Up and Down a Staircase #79* and `#82` — correct the asserted direction.** The source notes call #79 “ascending” and #82 an “ascent,” while the proofs and `chapter.mdx` describe the staged movement as descent. Use descent/descending where supported, or neutral directional wording, consistently in the descriptions and fair-use rationales.

### Advisory (non-blocking)

- `01-living-together-15`: the scorer cannot detect the `TABLE EDGE`, but the proof visibly follows the tabletop edge; no change is required.
- `11-old-man-staircase-79`: the scorer gives 88 and cannot detect the two diagonal lines, but both broadly follow the visible rail and stair run. This is acceptable as rendered.
