verdict: approve

## Critique round — 2026-07-23

### Required

1. **05-untitled-253-2014 — `BENT FISHING ROD` traces the wrong path.** The polyline in `overlays/05-untitled-253-2014.json` starts at `(0.340, 0.610)` and then runs through open ground/water before reaching the seated figure. In the proof, the visible rod begins higher, near the pond-side bend, and stays around the figure's lap level as it crosses the frame. Redraw the primitive to follow the literal rod, or rename it to the specific feature it actually traces. The chapter's statement that the rod “supplies the route” should then be checked against the corrected proof.

2. **08-untitled-227-2008 — `HOUSING-BLOCK BASELINE` is not on the housing blocks.** The horizontal primitive at `y=0.554` sits well below the distant blocks, crossing the foreground terrain and cardboard cluster rather than their base. Move it to the actual block baseline or rename it for the terrain break it visibly follows; the current label makes a false spatial claim.

3. **10-untitled-215-2007 — `SLEEPING BODY` does not follow the body.** Its polyline runs increasingly below the reclining figure, through books and then empty ground, rather than tracing the body's visible diagonal. Correct or replace the primitive. This also makes the chapter's claim that the overlay follows the literal body's diagonal presently inaccurate.

4. **11-untitled-208-2004 — `LOWER BRANCH SWEEP` crosses empty snow.** The polyline from `(0.370, 0.780)` to `(0.570, 0.500)` does not trace the loose branch at lower left or a continuous branch in the carried bundle; it makes a diagonal through blank snow. Reposition it on the named branch feature or remove it.

### Advisory (non-blocking)

None.

## Resolution — 2026-07-23

Re-verified required fixes from all prior critique rounds: 2026-07-23 (the sole prior round).

1. **05-untitled-253-2014:** Replotted `BENT FISHING ROD` from the pond-side bend across the literal rod at the fisherman's lap level; rendered proof is visually clean and scores 100.
2. **08-untitled-227-2008:** Renamed the measured y=0.554 primitive `TERRAIN BREAK`, matching the feature it follows rather than claiming a housing-block baseline; rendered proof is visually clean and scores 100.
3. **10-untitled-215-2007:** Removed the unsupported `SLEEPING BODY` polyline and revised the chapter to state that the overlay follows the literal ridge and moon; rendered proof is visually clean and scores 100.
4. **11-untitled-208-2004:** Removed the unsupported `LOWER BRANCH SWEEP`; the remaining snowfield edge and branch-bundle anchor are visually clean and score 100.

The research callout now treats downloaded image metadata as unreliable for original capture settings, consistent with the cited artist/estate and museum records.

## Critique round — 2026-07-23

### Required

1. **01-untitled-2006 — `WATERING CAN` and `POURING WATER` trace the wrong features.** The anchor at `(0.601, 0.520)` lands on the figure's forearm/torso rather than on the can, whose visible body is lower and left. The nearly vertical `POURING WATER` polyline at about `x=0.59` likewise runs to the right of the falling stream. Reposition both primitives to the literal can and water stream, or rename them for the features they actually trace. The chapter's literal description of both props should be rechecked after rendering.

2. **06-untitled-255-2015 — `LEFT HAND` is anchored on the submerged sleeve/water, not the raised hand.** The anchor at `(0.382, 0.685)` is below and to the right of the hand holding the wine glass. Move it to the visible hand or relabel it accurately; as rendered, it makes a false feature claim.

### Advisory (non-blocking)

None.

The four issues in the 2026-07-23 prior round remain resolved: 05's rod now follows the rod, 08 labels the terrain break rather than the housing blocks, and the unsupported body/branch polylines in 10 and 11 remain absent. All twelve current specs score 100/100 with no geometric deductions or warnings; the required findings above are semantic visual failures that the score cannot detect. The chapter's tonal figures agree with the matching analyzer JSON, the camera-settings caution is intact, and every selected image remains traceable to the public artist/estate page with a per-image fair-use rationale.

## Resolution — 2026-07-23

Re-verified required fixes from every prior critique round: the first 2026-07-23 round (05, 08, 10, and 11) and the subsequent 2026-07-23 round (01 and 06).

1. **01-untitled-2006:** Repositioned `WATERING CAN` on the can body at `(0.540, 0.588)` and replotted `POURING WATER` from the spout to the stream at `(0.483, 0.616) → (0.474, 0.838)`. The new proof is visually clean and scores 89.9; the analyzer's saliency peak remains on the suited figure, so its geometric anchor deduction does not change the literal prop placement.
2. **06-untitled-255-2015:** Moved the anchor to the visible hand holding the wine glass at `(0.335, 0.565)` and renamed it `WINE-GLASS HAND`. The proof is visually clean and scores 86.8; the detector's saliency target is the submerged sleeve/water, so that geometric deduction does not override the literal visual feature.
3. **05-untitled-253-2014:** Confirmed `BENT FISHING ROD` remains on the visible rod and the chapter's route claim matches the proof (100).
4. **08-untitled-227-2008:** Confirmed the y=0.554 line remains accurately labelled `TERRAIN BREAK`, not a housing-block baseline (100).
5. **10-untitled-215-2007:** Confirmed the unsupported sleeping-body line remains absent and the chapter correctly describes the ridge and moon overlay (100).
6. **11-untitled-208-2004:** Confirmed the unsupported lower-branch line remains absent; only the snowfield edge and branch-bundle anchor remain (100).

All twelve overlay specs pass the 80-point deterministic threshold; 01 and 06 each carry one documented saliency-only deduction, while the remaining ten score 100. The chapter's existing literal descriptions of the can, water stream, and raised wine-glass hand match the corrected proofs, so no chapter text changed.

## Critique round — 2026-07-23

### Required

None.

The twelve current proofs were visually rechecked against their overlay specs and analyzer output. The six prior required findings remain resolved: 01's can and water trace the literal prop and stream; 05's line follows the rod; 06's anchor is on the wine-glass hand; 08's measured line is accurately named `TERRAIN BREAK`; and the unsupported body/branch polylines remain absent in 10 and 11. All specs pass the deterministic threshold (01: 89.9; 06: 86.8; all others: 100); the two deductions are saliency-only and do not contradict the visually named features. The chapter's tonal figures match the analyzer values within tolerance, the camera-setting caveat does not present downloaded metadata as original capture evidence, and each selected image is traceable to the official artist/estate page with its per-image four-factor fair-use rationale.

### Advisory (non-blocking)

None.
