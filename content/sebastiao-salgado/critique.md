verdict: resolved

## Critique round — 2026-07-18

### Required

1. `03-guatemala` — The `frame_in_frame` labeled `WOMAN AT WINDOW` does not trace the framed opening it names. Its specified rectangle (`x: 0.646, y: 0.024, w: 0.250, h: 0.260`) starts on blank door paneling and ends across the portrait; the visible outer frame is materially narrower and extends lower. Tighten the box to the actual frame, or revise the primitive and its claim.
2. `06-three-coal-miners-india` — The polyline labeled `THREE FACES COMPRESS IN DEPTH` follows the upper headwrap/turban area (`[0.22, 0.32] → [0.47, 0.23] → [0.73, 0.20]`), not the three faces named by the label. Move it through the visible facial sequence or relabel it to the feature it actually traces.

### Advisory (non-blocking)

- `01-serra-pelada-east-slope` — The `PIT ROUTES CONVERGE` and `RIGHT-HAND CARRIERS` labels overlap at the vanishing-point/anchor area, though their geometry remains legible.
- `04-serra-pelada-ladder` — The polyline labeled `LADDER CLIMBING INTO THE FIGURE` reads as an ascent path more than a close trace of a ladder rail; it remains an intelligible compositional relation.
- `06-three-coal-miners-india` — The ellipse for `FOREMOST MINER'S FACE` favors the eyes and upper face; a slightly lower/larger ellipse would describe the full face more clearly.

## Resolution — 2026-07-18

Applied and visually verified every required fix from the full critique history:

1. **Round 2026-07-18, required 1 (`03-guatemala`):** tightened and renamed the `frame_in_frame` primitive to `WOMAN'S FRAMED OPENING` (`x: 0.724, y: 0.053, w: 0.170, h: 0.310`), which traces the visible outer frame rather than the surrounding door panel.
2. **Round 2026-07-18, required 2 (`06-three-coal-miners-india`):** moved `THREE FACES COMPRESS IN DEPTH` through the three visible faces (`[0.185, 0.505] → [0.425, 0.485] → [0.755, 0.525]`) rather than the headwraps.

Also applied the inexpensive advisory refinement to enlarge and lower the foremost miner's face ellipse. Re-rendered both proofs, performed a clean visual pass, and re-scored all seven current overlay specs at 100/100 (threshold 80). `scripts/check.sh` passed before this verdict was set.
