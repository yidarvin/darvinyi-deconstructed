verdict: resolved

## Critique round — 2026-07-26

### Required fixes

1. **01-phoenix-ii, 02-phoenix-iii, 03-phoenix-iv, 04-phoenix-v, 05-phoenix-vi, and 07-phoenix-viii — replace the strip polylines with primitives that render only the named horizontal seams.** In each current proof, the one `polyline` joins the end of one horizontal segment to the beginning of the next, producing prominent full-width diagonal zigzags. Those diagonals do not trace panel joins, cuts, or strip interruptions and materially contradict the labels. Use separately meaningful primitives/paths (or a conservative alternative) so the proof contains no unlabelled diagonal connections; re-render and visually verify each affected proof.

### Advisory (non-blocking)

- **06-phoenix-vii:** the three panel frames accurately identify the visible divisions, but the geometry scorer flags their repetition as more than usually necessary. This remains pedagogically defensible and does not block approval.
- The official studio works page identifies the selected works as Lightjet prints. The chapter's restraint about unverified camera settings is correct, but its broader statement that no individual print process is established could be narrowed in a future content pass.

### Review evidence

All 12 current proof PNGs were visually inspected against their overlay JSON and the stored analyzer outputs. The geometric scorer reports passing scores for every spec (97–100), but it does not penalize the semantic error created by a multi-segment `polyline`. The source record supplies a traceable official studio link, artist credit, and concise per-image four-factor fair-use rationale for every image; no camera settings are invented. Chapter tonal values and palettes agree with the stored analysis within the stated tolerance.

## Builder resolution — 2026-07-26

Resolved required fix 1. In `01-phoenix-ii`, `02-phoenix-iii`, `03-phoenix-iv`, `04-phoenix-v`, `05-phoenix-vi`, and `07-phoenix-viii`, each formerly joined strip path is now a separate two-point `polyline` with its own seam label. The regenerated proofs contain no diagonal connector between seams. Fresh analysis, render, score, and visual passes completed for all six: 100 for 01, 04, 05, and 07; 96 for 02 and 03 (only the scorer's non-blocking primitive-count deduction). Every result exceeds the 80 threshold and is visually clean.

Re-verified prior required-fix history: the 2026-07-26 critique round (the complete history for this slug). Its only required condition remains satisfied in the current overlay JSON and regenerated proofs; the chapter remains unchanged and byte-identical to `src/chapters/noemie-goudal.mdx`.
