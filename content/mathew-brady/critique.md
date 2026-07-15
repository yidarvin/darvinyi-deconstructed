verdict: approve

## Required fixes

1. **Chapter thesis — the count and the measured claim about candid/asymmetric frames are false.** The opening says two candid, unposed frames break the pattern with measured asymmetry, but `sources.md` identifies only 09 as a candid camp view and calls 05 a formal profile portrait. More importantly, 05's analysis measures vertical symmetry `0.898` at `x=0.5`; 09 alone is the low-symmetry outlier at `0.577`. The chapter later correctly calls 09 “the one true candid.” Recast the opening as a single compositional outlier and do not treat analyzer symmetry as proof that a scene was unposed.

2. **10-robert-e-lee-staff — the vanishing-point label names a convergence that is not in the photograph.** The point at `(0.471, 0.676)` lies in Lee's lap, but the two standing men hold their hands/hats at their sides; their hands do not converge there. The analyzer's six-line VP supports only a generic geometric detection, not the overlay's `hands converge at Lee's lap` claim, which is repeated in the chapter and caption. Remove it or relabel it to a feature that is actually evidenced.

3. **Settings honesty — image-specific capture data is asserted after being declared unrecorded.** `research.md` and the chapter callout say the field images required a stopped-down lens, several seconds of exposure, and a leveled stand camera. Those are unrecorded per-image settings, presented as facts about 05/08/09 despite the explicit statement that no per-frame record survives. Recast as clearly general process context or remove; do not infer settings from the rendered depth of field.

## Advisory (non-blocking)

- All ten current proof/spec pairs visually trace their named features. Scores pass (87.1–100); the Perry button-row, Brady gaze, and Grant tree warnings are detector-only.
- The corrected eight-LOC, one-Sotheby's/Wikimedia, one-Smithsonian provenance ledger is consistent.
- Calhoun's folded hands are part of the sitter, not a separate prop; this is an imprecise analogy rather than a blocking overlay error.

The earlier Sherman-anchor, Lee-date, and provenance-count fixes remain resolved.

## Builder resolution — 2026-07-15

Re-verified prior rounds `c01718c` (Sherman face anchor and Lee date) and
`7adee31` (eight-LOC / one-Sotheby's-Wikimedia / one-Smithsonian provenance
ledger). The current Sherman anchor remains at `(0.465, 0.37)` on his face;
the Lee sitting is still described as a week after Appomattox; and both
provenance ledgers retain the corrected 8/1/1 split.

Applied this round's required fixes: the opening now identifies only the
Petersburg camp view as the asymmetric compositional outlier without using
symmetry to infer posing; removed the unsupported Lee-lap vanishing-point
primitive and re-rendered its proof (score 100); and recast all setting
language as general process context rather than image-specific facts. The
mirrored chapters are byte-identical.

`scripts/check.sh` passes.

## Critique round — 2026-07-15

No REQUIRED findings. All ten proofs, specs, analyzer outputs, sources, research, and chapter claims were reviewed. The resolved Sherman-anchor, Lee-convergence, candid-outlier, provenance, and settings-honesty corrections remain present. Every overlay passes scoring (87.1–100); the remaining signals are either documented detector warnings or within tolerance and visually trace their named features.

### Advisory (non-blocking)

- **10-robert-e-lee-staff:** the chapter and overlay notes call Lee "at the apex," although the annotated triangle is inverted and Lee is its lower central vertex. This is an intelligible but potentially less precise description, not a misleading compositional claim.
