verdict: resolved

## Critique round — 2026-07-24

Reviewed all 12 current proof PNGs against their overlay specs, ingested-image analysis records, chapter, research note, manifest, and source record. The twelve artist project pages and the twelve direct display-image URLs in `sources.md` are currently reachable. The chapter's stated luminance, percentile, edge-density, and palette values agree with the corresponding analysis JSON within the stated rounding tolerance; the settings disclaimer is appropriately explicit. No prior critique round exists to re-litigate.

### Required fixes

1. **02-reflection-in-water — `CHURCH-TO-WATER DIAGONAL`:** the `leading_line` from `[0.038, 0.249]` to `[0.769, 0.826]` starts in the left cliff, cuts across the church and crouching figure, and continues into water without tracing a visible church or shore edge. It therefore does not support the feature named by its label. Replace it with a primitive that follows an observable structural edge, or remove it.
2. **03-po — `FERRY SILHOUETTE`:** the polyline at approximately `y=0.42` sits in the water/mist below the ferry rather than on the ferry's visible outline (which is around the upper water boundary). The label falsely identifies that water contour as the vessel silhouette. Reposition it onto the actual silhouette or remove it.
3. **04-bike-accident — `BANK EDGE`:** the line begins on the dirt/grass bank but then runs far across unbroken foreground grass to the lower-right corner. This is not a small endpoint overrun: much of the claimed bank edge is absent. Trace only the visible bank boundary or remove the primitive; revise the chapter wording if needed to match the corrected diagram.
4. **09-girls-by-motorway — `MEDIAN ROUTE`:** the line from `[0.167, 0.666]` to `[0.539, 0.176]` begins on the close foreground figure and crosses toward foliage above the bridge; it does not trace the motorway's median between the carriageways. Relabel/reposition it to the actual median or replace it with a truthful interpretive primitive.
5. **10-birdcage — `GARDEN EDGE`:** the line from `[0.428, 0.836]` to `[0.95, 0.169]` passes through the birdcage and open foliage rather than following a visible garden boundary. The label asserts an edge not present along the path. Replace it with a line on an identifiable edge or remove it.

### Advisory (non-blocking)

- The generic `Copyright © 2026` wording in the source-record introduction should be checked against the individual artist-page footer at the next source refresh: the currently reachable series page shows 2026 while at least the Floating in Harbour page shows 2025. This does not alter the credited author, copyrighted/fair-use route, or the per-image four-factor rationale.

## Builder resolution — 2026-07-24

Re-verified the complete critique history: the 2026-07-24 round above is the only prior round. Every required fix in that round still holds in the current overlays, proofs, and chapter.

1. **02-reflection-in-water:** Removed the unsupported `CHURCH-TO-WATER DIAGONAL`; revised the chapter to describe the visible vertical stacking instead. Rendered proof is visually clean; score 100/100.
2. **03-po:** Removed the misplaced `FERRY SILHOUETTE` polyline. Rendered proof is visually clean; score 100/100.
3. **04-bike-accident:** Removed the overextended `BANK EDGE`; revised the chapter so it no longer claims that route. Rendered proof is visually clean; score 100/100.
4. **09-girls-by-motorway:** Removed the unsupported `MEDIAN ROUTE`; revised the chapter to discuss only the visible right-hand lanes. Rendered proof is visually clean; score 100/100.
5. **10-birdcage:** Removed the unsupported `GARDEN EDGE`; revised the chapter so it no longer relies on that claim. Rendered proof is visually clean; score 100/100.

The chapter copies in `content/` and `src/chapters/` are byte-identical. The advisory source-footer observation is non-blocking and unchanged.

## Critique round — 2026-07-24

Re-reviewed all 12 current proof PNGs against their overlay specs, ingested-image analysis records, chapter, research note, manifest, and source record. All twelve artist project pages and all twelve recorded public display-image URLs return HTTP 200. The per-image fair-use records contain the required four-factor rationale, and the chapter's numerical tonal, percentile, edge-density, and palette claims agree with the analysis JSON within tolerance. The deterministic scorer returns 100/100 for every overlay; the required findings below are semantic visual errors that that scorer cannot measure.

### Required fixes

1. **04-bike-accident — `GRASS-ROAD EDGE`:** The full-width horizontal `horizon_line` at `y: 0.195` overlaps the grass/road boundary only briefly near the central tunnel approach. Across the left it crosses grass and the building forecourt; across the right it crosses grass and the bicycle. It therefore asserts a continuous edge that is not visible. This is a material regression after the prior 2026-07-24 round resolved `BANK EDGE`: that primitive was removed, but the replacement now names and traces the wrong feature. Remove it or replace it with a primitive that follows a genuine visible structure.
2. **07-broken-eggs — `DIAGONAL GARDEN AXIS`:** The arrowed line from `[0.213, 0.005]` to `[0.992, 0.994]` runs through unrelated trees, roofs, the reclining figure, and foreground plants rather than tracing a discernible garden axis. The named structure is not in the frame along that route. Remove it or replace it with a line on a visible edge; update the chapter sentence that currently relies on this claimed axis.
3. **11-torch-with-fox — `FOX-TO-TORCH PATH`:** The polyline ends at `[0.74, 0.45]`, on the woman's upper torso, while the handheld torch is roughly a tenth of the frame lower at her right hand. That endpoint is far outside the allowed endpoint margin, so the line does not reach the feature its label names. Extend/reposition it to the torch or relabel it truthfully; align the chapter wording with the correction.

### Advisory (non-blocking)

- None.

## Builder resolution — 2026-07-24

Re-verified both prior critique rounds from 2026-07-24 against the current overlays, proofs, and chapter: the first round's removals/replacements for **CHURCH-TO-WATER DIAGONAL**, **FERRY SILHOUETTE**, **BANK EDGE**, **MEDIAN ROUTE**, and **GARDEN EDGE** remain intact; their current truthful replacements were also visually checked. The second round's required fixes are resolved as follows.

1. **04-bike-accident:** Removed the false full-width `GRASS-ROAD EDGE` horizon line. The visible miniature-road edge and fallen-figure anchor remain; rendered proof is visually clean and scores 100/100.
2. **07-broken-eggs:** Removed the unsupported `DIAGONAL GARDEN AXIS` line and revised the chapter so it no longer claims that route. The roofline and egg ellipse remain; rendered proof is visually clean and scores 100/100.
3. **11-torch-with-fox:** Extended `FOX-TO-TORCH PATH` to the visible handheld torch at `[0.742, 0.572]`; the chapter's path wording now matches the actual endpoint. Rendered proof is visually clean and scores 100/100.

`scripts/check.sh` passes, and `content/julia-fullerton-batten/chapter.mdx` remains byte-identical to `src/chapters/julia-fullerton-batten.mdx`.
