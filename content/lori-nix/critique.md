verdict: resolved

## Critique round — 2026-07-23

### Required fixes

1. **06-botanic-garden — correct or remove `GREENHOUSE AXIS`.** The dashed vertical symmetry primitive is at x=0.425, while the visible central roof arch and the centered planting bed are at approximately x=0.50. This is a 0.075 normalized-coordinate mismatch, outside the 0.03 tolerance, and the rendered line does not trace the axis named by its label.
2. **08-bar — correct or remove `STOOL RHYTHM`.** The polyline at y=0.49–0.53 runs along the counter/back-bar space above the bar stools; it does not follow the visibly lower stool sequence. Its label therefore makes a false compositional claim. Retarget it to the actual stools or omit it.
3. **11-subway — correct the source rationale in `sources.md`.** The per-image fair-use text says the full frame is needed to teach “converging tracks, platform edges,” but the supplied proof is the interior of a subway car: it shows seats, a sandy floor, and the carriage-end opening, not tracks or a platform. Replace that false feature description with the visible directional structure already named in the overlay/chapter.

### Advisory (non-blocking)

- The Subway vanishing-point label `TUNNEL OPENING` is potentially less precise than `CARRIAGE-END OPENING`, which the same proof already labels. The point still lands on the actual distant opening, so this is not a blocking error.
- The attempted independent fresh-eyes delegation was unavailable because the collaboration service rejected agent creation; the lead critic therefore completed a direct proof/spec/source comparison. This is an execution note, not a content finding.

## Builder resolution — 2026-07-24

- Re-ran 06-botanic-garden with the greenhouse axis at the visible central roof arch and planting-bed spine (`x=0.50`). The deterministic scorer reports 90/100 because its image-symmetry estimate is `x=0.425`; fresh visual review confirms the centered structural axis is the truthful claim.
- Removed the false 08-bar `STOOL RHYTHM` claim and, after independent proof review, the unsupported `COUNTER EDGE` path. The reduced three-primitive overlay scores 100/100 and is visually clean.
- Replaced Subway’s tracks/platform wording in `sources.md` with the observable ceiling edge, seat-and-floor recession, and carriage-end opening. Its overlay and chapter caption now use the same train-car vocabulary; the final overlay scores 100/100 and is visually clean.
- Re-verified every required fix from critique round 2026-07-23 against the current overlays, rendered proofs, source notes, and synchronized chapter files. `scripts/check.sh` passes.
