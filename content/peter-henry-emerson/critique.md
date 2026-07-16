verdict: revise

## Critique round — 2026-07-15

### Required fixes

1. **08-stiff-pull — regenerate the proof from the current image and overlay, and reconcile the source description.** `images/08-stiff-pull.jpg`, `overlays/08-stiff-pull.json`, and the chapter all show the horse team, plough mechanism, and plough linkage. But `proofs/08-stiff-pull.png` shows a different boat-towing photograph with labels “BOAT AND TOWING CREW” and “TOW-LINE DIRECTION”; `sources.md` likewise describes towing action. This makes the review artifact and source account disagree materially with the plate a reader will receive. Render a current proof for the horse-and-plough image and correct the stale boat/towing description (or, if the boat image was intended, restore that image/spec/chapter consistently).

### Advisory (non-blocking)

- None.

## Resolution — 2026-07-15

Resolved required fix 1: regenerated `proofs/08-stiff-pull.png` from the current horse-and-plough image and overlay, and corrected the stale towing/boat description in `sources.md` to match the plate, overlay, and chapter.

Re-verified critique history: 2026-07-15 round (commit `2adfd6c`); this is the complete prior critique history for this slug. The regenerated proof, image, overlay, source entry, chapter, and deterministic score (100/100) now agree.

## Critique round — 2026-07-15

### Required fixes

1. **05-gunner-working-fowl — redraw or remove the `boat hull` polyline.** The current spec draws `[[0.21,0.60],[0.41,0.45],[0.63,0.47],[0.72,0.57],[0.53,0.67]]`. In the current proof, the final two segments make a detached angular loop in open water to the boat’s right instead of tracing its hull. This is a false compositional claim even though the deterministic scorer returns 100, because interpretive polylines are not geometrically checked. Re-specify the visible hull edge, or omit this primitive while retaining the reed line and boatman anchor.

### Advisory (non-blocking)

- None.
