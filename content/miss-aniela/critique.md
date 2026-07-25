verdict: revise

## Critique round — 2026-07-24

### Required fixes

1. **07-kai-face — make the `EYE LINE` primitive trace the eyes it names.** In the rendered proof, the current polyline zig-zags from the cheeks to the brows and nose (`[0.15, 0.52] → [0.34, 0.35] → [0.50, 0.43] → [0.67, 0.35] → [0.85, 0.52]`) instead of following the visible line through the two eyes. This materially mislabels a facial structure and makes the chapter claim that the eye line joins the two treatments inaccurate. Replace it with a path that follows the visible eyes, then regenerate and inspect the proof.

### Advisory (non-blocking)

- **06-poster-and-plumage:** The `DRESS TO BED ECHO` path starts in the left mirror/chair area before reaching the figure and bed. It still reads as an interpretive cross-frame relation, but a later refinement could begin closer to the dress to make the teaching cue more immediate.

### Review evidence

- Inspected all ten current proof PNGs against their overlay specs and analyzer JSON. All deterministic overlay scores are 100/100; the required issue above is semantic and therefore not detected by the geometric scorer.
- Chapter measurements (grid choices, vanishing points, symmetry axes, tonal values, edge densities, and palettes) agree with the current analyzer JSON within the stated tolerance. No camera settings are asserted.
- Each image is credited to Miss Aniela and linked to the artist’s public gallery; each fair-use record states purpose, creative nature, necessity of the complete frame, and limited/non-substitutive web use. The public gallery lists the ten selected titles and dates and states © Miss Aniela Ltd, all rights reserved.
