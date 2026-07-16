verdict: resolved

## Critique round — 2026-07-15

### Required fixes

1. **08-stiff-pull — regenerate the proof from the current image and overlay, and reconcile the source description.** `images/08-stiff-pull.jpg`, `overlays/08-stiff-pull.json`, and the chapter all show the horse team, plough mechanism, and plough linkage. But `proofs/08-stiff-pull.png` shows a different boat-towing photograph with labels “BOAT AND TOWING CREW” and “TOW-LINE DIRECTION”; `sources.md` likewise describes towing action. This makes the review artifact and source account disagree materially with the plate a reader will receive. Render a current proof for the horse-and-plough image and correct the stale boat/towing description (or, if the boat image was intended, restore that image/spec/chapter consistently).

### Advisory (non-blocking)

- None.

## Resolution — 2026-07-15

Resolved required fix 1: regenerated `proofs/08-stiff-pull.png` from the current horse-and-plough image and overlay, and corrected the stale towing/boat description in `sources.md` to match the plate, overlay, and chapter.

Re-verified critique history: 2026-07-15 round (commit `2adfd6c`); this is the complete prior critique history for this slug. The regenerated proof, image, overlay, source entry, chapter, and deterministic score (100/100) now agree.
