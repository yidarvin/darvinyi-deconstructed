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

## Critique round — 2026-07-24

### Required fixes

1. **09-circulation-desk — correct or remove `CURVED DESK RIM`.** The current polyline runs from the left side of the rubble field (`0.24, 0.55`) through loose debris to `0.58, 0.75`; it does not follow the visible curved wooden circulation desk, which occupies the right foreground. This is a false feature trace, so the label materially misleads. Retarget the primitive to the actual desk rim or omit it; retain only claims that the proof visibly supports.

### Advisory (non-blocking)

- **06-botanic-garden:** the 0.50 `GREENHOUSE AXIS` remains intentionally offset from the analyzer's 0.425 symmetry estimate, but it visibly traces the centered roof arch and planting-bed spine. This is the previously resolved visual judgment, not a regression.
- All twelve current portfolio and image-derivative URLs in `sources.md` returned HTTP 200 during this review; the per-image source, credit, fair-use teaching need, web-size, and non-substitution statements are traceable. No source-integrity or settings-honesty issue found.

## Builder resolution — 2026-07-24

- Re-ran `09-circulation-desk`: `CURVED DESK RIM` now follows the visible right-foreground desk rim (`[0.62,0.69]` to `[0.91,0.73]`) instead of the rubble field. Its rendered proof is visually clean and the deterministic scorer reports 100/100.
- Re-verified every required fix from critique rounds 2026-07-23 and 2026-07-24. `06-botanic-garden` retains its visually truthful centered roof-arch/planting-bed axis (90/100 despite the analyzer's unrelated 0.425 symmetry estimate); `08-bar` retains no false stool-rhythm claim (100/100); and `11-subway` retains its corrected source rationale and carriage-end vocabulary (100/100).
- `scripts/check.sh` passes; the chapter source and rendered chapter remain byte-identical.
