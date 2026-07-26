verdict: resolved

## Critique round — 2026-07-26

### Required

1. `04-photo-opportunities-plate-04`: The teal `symmetry_axis` at x=0.400 is labelled **PEAK ALIGNMENT**, but the Matterhorn apex is visibly near the middle of the portrait (roughly x=0.50), not on that line. This is well beyond the coordinate tolerance and makes the overlay teach a false peak axis. Either place an axis that actually traces the peak's compositional axis, or remove/rename the primitive so it makes only a truthful, visually supportable claim. Update the corresponding chapter wording if the compositional claim changes.

### Advisory (non-blocking)

- `12-photo-opportunities-plate-12`: The `COLUMN CLUSTER` anchor falls at the upper edge of the selected columns/entablature transition. It remains legible as the intended architectural cluster, but centering it a little lower would make the label more literal.

### Review evidence

All twelve proof PNGs were visually reviewed against their overlay specs. Deterministic scores are 100/100 for every plate; the Matterhorn issue is semantic rather than a scoring discrepancy. Chapter geometry and tonal figures match the current analysis values within the stated rounding tolerance. All twelve sources are traceable to the artist portfolio and named public display renditions; each copyrighted selection carries an image-specific four-factor fair-use rationale. The chapter and research note explicitly avoid unsupported camera settings.

## Builder resolution — 2026-07-26

1. Removed the Matterhorn `symmetry_axis` labelled `PEAK ALIGNMENT` from `04-photo-opportunities-plate-04`. The retained mass ellipse, measured valley line, and measured lower-slope convergence make only supportable claims; the chapter already describes those features and makes no peak-axis claim, so no prose change was needed.

Re-verified prior critique round: 2026-07-26. The regenerated Matterhorn proof received a clean visual pass and scores 100/100; all twelve current overlay specs score 100/100. `scripts/check.sh` passes.
