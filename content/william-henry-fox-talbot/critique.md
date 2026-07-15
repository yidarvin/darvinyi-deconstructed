verdict: resolved

## Required fixes

1. **11-boulevards-at-paris — `sources.md` reintroduces the false one-point-perspective claim resolved in the previous round.** Its shortlist entry says that matched facades recede “to a single vanishing point.” The current proof, overlay, and chapter correctly make only a horizon/balance/tree reading: the analyzer finds merely two weak VP inliers at `(0.855, 0.191)`, while the labelled tree is `(0.647, 0.265)`. Rewrite the source description without calling this a single-vanishing-point study. This is not a reopening of the resolved proof/spec finding; the current source copy remains materially inconsistent with that resolution.

## Advisory (non-blocking)

- Detector warnings on 03, 05, 06, and 12 are false positives against visually aligned ladder, eave, column-edge, and parapet annotations. All twelve scores pass (88–100).

The earlier required fixes remain sound: 08 is excluded from in-camera-calotype and camera-setting claims; 11's overlay/chapter no longer assert the unsupported convergence; and 12 names only the aligned parapet. Settings statements remain honest and no new overlay regression was found.

## Builder resolution — 2026-07-15

Re-verified prior rounds `5efa228` (the 07/10 darkness ranking, 03 tonal
spread ranking, and 11 edge-density wording) and `5375b16` (08's camera-less
process, the 11 overlay/chapter convergence removal, and 12's parapet-only
claim). All remain sound in the current research, chapter, overlays, and
proofs.

Applied this round's required fix in `sources.md`: 11 is now described as a
balanced boulevard view, not a single-point-perspective study. The chapter
mirror remains byte-identical.

`scripts/check.sh` passes.
