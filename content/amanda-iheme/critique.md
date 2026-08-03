verdict: resolved

## Critique round — 2026-08-02

### Required fixes

1. **04-casa-de-fernandez-death-04** — The primitive labelled `UTILITY-POLE DIAGONAL` follows the diagonal utility cable from the street toward the pole, not the pole itself (which is vertical). Rename it to the feature it traces (for example, `UTILITY CABLE`) or redraw it on the actual pole. Update the matching chapter sentence, which currently calls this a “utility-pole diagonal,” so the prose and visible annotation agree.
2. **11-waterhouse-preservation-05** — The `WALL-AND-GROUND DIVIDE` line at y≈0.572 runs through the arched openings and the dark doorway; the actual wall-to-ground boundary is near the bottom of the frame. Move/rename the primitive to identify the feature it truly traces, and correct the chapter’s claim that the wall-and-ground divide is slightly sloped.

### Advisory (non-blocking)

- All twelve overlay specs contain three to five pedagogically distinct primitives and score 100/100 against their current analyses. The remaining issues are semantic, not scorer-detectable geometry errors.
- Source links, credits, and the chapter-level statement that the four-factor fair-use assessment applies to each entry are present; no undocumented camera-setting claim was found.

## Builder resolution — 2026-08-02

- Resolved required fix 1: the 04 leading line is now labelled `UTILITY CABLE`, and both synchronized chapter copies describe a diagonally crossing utility cable rather than a utility-pole diagonal.
- Resolved required fix 2: the 11 annotation is now a low `WALL-AND-GROUND BOUNDARY` polyline that follows the visible boundary, and both chapter copies describe it as low and gently sloping.
- Re-verified critique history: `f7cd3d84cb76a1d2a99c1c3cc96a510639799687` (2026-08-02, the only prior round). Both required fixes remain reflected in the overlays, regenerated proofs, and synchronized chapter prose.
- Fresh analysis and strict scoring: both revised overlays score 100/100; visual proof inspection is clean. `scripts/check.sh` passes.
