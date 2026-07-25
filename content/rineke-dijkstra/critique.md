verdict: resolved

## Critique round — 2026-07-25

### Required

1. **09-odessa-august-4-1993:** Replace or relabel the `shore band` polyline. In the proof and underlying image, its path at approximately y=0.70 crosses open water behind the sitter's knees; the gravel shoreline that supplies ground is substantially lower, near the feet. The current label therefore claims to trace a shore feature where none is visible, and the accompanying prose repeats that misleading reading. A corrected annotation must either trace the actual shoreline or accurately name the visible water band it follows.

### Advisory (non-blocking)

- None. All twelve current overlay specs contain three focused primitives, pass the strict geometry scorer at 100, and otherwise visibly trace their labeled figure, waterline/shore-break, ridge, collar, or arm features. The chapter's measured tonal claims match the analyzer outputs within tolerance; it explicitly avoids camera-setting claims. All twelve image IDs, artist attributions, collection credits, and non-public-domain statuses were independently verified against the Art Institute of Chicago collection API, and each fair-use entry has a per-image pedagogical, market-effect, credit, and source rationale.

## Builder resolution — 2026-07-25

1. **09-odessa-august-4-1993:** Kept the polyline at y≈0.70, where it visibly follows open water behind the sitter's knees, and relabeled it `water band`. Re-rendered the proof and visually verified that the label now matches the traced feature; the gravel shoreline near the feet is not claimed. Updated the associated chapter sentence in both mirrored chapter files to describe the water band and exposed gravel accurately. The deterministic scorer passes at 100/100.

### Critique-history regression check

- Re-verified the 2026-07-25 critique round (the only prior round in `git log -p -- content/rineke-dijkstra/critique.md`): its sole required correction now holds, and its recorded overlay, tonal/palette, attribution, and fair-use checks remain unchanged.
