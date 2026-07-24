verdict: resolved

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
