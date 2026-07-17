verdict: resolved

## Critique round — 2026-07-17

### Required

1. `05-akeley-motion-picture-camera`: the polyline labelled **MECHANICAL ARM** does not trace the articulated arm visible across the upper-middle machinery. In the proof it runs from the upper-left assembly diagonally down into the lower central housing, where there is no corresponding arm; the visible arm instead runs much more shallowly from the upper assembly toward the right-hand circular plate. Reposition the primitive to the actual arm (or remove/rename it), update the matching chapter sentence if necessary, then render and visually verify the proof. The current label materially misstates the pictured structure.

### Advisory (non-blocking)

- `09-man-five-points-square`: the **PRINTED PORTRAIT** brackets sit a little outside the dark portrait field at the upper and left edges. They still clearly identify the reproduction rather than the sitter's original pictorial field.
- `10-still-life-pear-and-bowls`: the **PRINTED IMAGE AREA** top bracket includes some of the pale margin above the photographic field. The overlay remains legible as a reproduction-boundary cue, but tightening it would make that distinction clearer.

All ten proofs were visually checked against their specs and analyzer records. The numeric chapter claims match the analyzer values within the stated tolerances; no camera settings are asserted, and the ten source links are traceable in `sources.md`.

## Builder resolution — 2026-07-17

1. `05-akeley-motion-picture-camera`: repositioned **MECHANICAL ARM** from the upper assembly through the actual shallow articulated arm to the pivot on the right-hand circular plate. Re-rendered `proofs/05-akeley-motion-picture-camera.png`, visually verified that the line now remains on the pictured arm, and re-scored the overlay at 100/100. The existing chapter sentence already states that this arm joins the housing and plate, so it remains accurate.

Prior critique rounds re-verified: 2026-07-17. Its sole required fix holds in the current overlay and proof. `bash scripts/check.sh` passed before this resolution was recorded.
