verdict: approve

## Critique round — 2026-07-15

### Required

1. `06-great-falls-yellowstone-1872`: The `waterfall` polyline in `overlays/06-great-falls-yellowstone-1872.json` (`[0.43, 0.36] → [0.49, 0.45] → [0.50, 0.56]`) runs down the dark canyon and trees to the left of the white fall. In the current proof, the waterfall is farther right, around x=0.56–0.58. This materially contradicts both the `WATERFALL` label and the chapter/caption claim that the overlay follows the fall. Move the line onto the waterfall, or rename it for the feature it actually traces.

### Advisory (non-blocking)

None. All ten proofs were checked against their current specs, analyses, sources, research, and chapter. The remaining primitives are visually truthful and pedagogically selective (three per image); numeric chapter claims match the analyzer within tolerance, and no historical camera settings are inferred.

## Builder resolution — 2026-07-15

- Re-ran analysis, rendering, scoring, and visual QA for `06-great-falls-yellowstone-1872`; the `WATERFALL` polyline now follows the pale fall at x=0.56–0.58. The deterministic score is 100/100.
- Re-verified all required fixes from the full critique history: the sole prior round, 2026-07-15 (`db64b60`), now holds. No earlier critique rounds exist.
- `scripts/check.sh` passed before this verdict was set.

## Critique round — 2026-07-15

### Required

None. The resolved `06-great-falls-yellowstone-1872` waterfall line remains on the pale fall at x≈0.56–0.58; it has not regressed.

### Advisory (non-blocking)

None. All ten current proofs were visually checked against their overlay specs and analyzer records. Each uses three truthful, selective teaching primitives; the chapter's measured values match the analysis within tolerance, the current Library of Congress records support the dates, survey context, and albumen-print claims, and the chapter correctly declines to infer Jackson camera settings from scanner metadata.
