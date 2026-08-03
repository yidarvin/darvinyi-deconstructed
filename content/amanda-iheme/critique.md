verdict: revise

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

## Critique round — 2026-08-02

### Required fixes

1. **06-old-secretariat-stagnation-02** — The vertical `symmetry_axis` at x=0.388 is labelled `CENTRAL ARCH AXIS`, but in the proof it falls well left of the central pavilion’s arched entrance and does not trace an arch axis. The analyzer does support a compositional symmetry axis at x=0.388; retain that geometry only if it is relabelled for the feature it actually describes, or move the axis to the pavilion’s real arch. Make the matching chapter passage precise if the intended reading changes.

### Advisory (non-blocking)

- All twelve proofs were visually inspected. Each contains three to five distinct compositional primitives, and every current spec scores 100/100 with no scorer deductions or warnings.
- The two fixes resolved in the prior round remain resolved: **04** now identifies the diagonally crossing utility cable, and **11** traces the low wall-and-ground boundary.
- Sources remain traceable and consistently credited; the chapter makes no undocumented camera-setting claim, and the chapter’s reported tonal values match the analyzer within tolerance.

## Builder resolution — 2026-08-02

- Resolved required fix 1: the 06 axis now lands on the actual central-pavilion arch at x=0.570 and is labelled `CENTRAL PAVILION ARCH`; both synchronized chapter copies now distinguish that local axis from the broader lateral sweep.
- Re-verified critique history: `f7cd3d84cb76a1d2a99c1c3cc96a510639799687` (required fixes for 04 and 11) and `1a3931998249b03ac2afe6d929dbf49deed75206` (the current 06 requirement). The 04 overlay/proof still identifies the diagonal `UTILITY CABLE`, and the 11 overlay/proof still traces the low `WALL-AND-GROUND BOUNDARY`.
- Fresh analysis and strict scoring: the revised 06 overlay scores 90/100 with a clean visual proof. Its only deduction is the analyzer’s alternative balance axis at x=0.388, intentionally not restored because it does not trace the annotated pavilion arch. The semantic correction remains the more truthful annotation. `scripts/check.sh` passes.

## Critique round — 2026-08-02

### Required fixes

1. **09-waterhouse-preservation-01** — The selected-work description in `sources.md` calls this view a study of “a historic residence and its well” in “a broad, balanced field.” The proof instead shows a narrow pedestrian route beside the tiled Waterhouse facade; no well is visible. Replace that description with one that identifies the route, facade, and foliage opening actually in the frame. The source link, credit, and fair-use rationale may remain as they are.
2. **11-waterhouse-preservation-05** — The selected-work description in `sources.md` calls this a panoramic, long-facade view with a controlled horizon. The proof is a close, nearly frontal view of two arched openings in a tiled wall, with a grille at left and an open doorway at right. Correct the source-note description to match the shown work; this is distinct from, and does not reopen, the already resolved low wall-and-ground-boundary overlay fix.

### Advisory (non-blocking)

- All twelve proofs were visually re-inspected. Each retains three to five pedagogically distinct primitives, and every overlay is semantically legible. The resolved **04**, **06**, and **11** overlay corrections remain intact.
- Strict re-scoring passes all overlays: eleven score 100/100; **06-old-secretariat-stagnation-02** scores 90/100 only because the analyzer proposes a broader balance axis at x=0.388. The annotated x=0.570 line visibly traces the central pavilion arch, so this is not a regression.
- Image links, artist credit, per-image fair-use rationales, and the chapter’s refusal to invent camera settings remain present and materially sound.

## Builder resolution — 2026-08-02

- Resolved required fix 1: the `09-waterhouse-preservation-01` selected-work note now identifies the narrow pedestrian route, tiled Waterhouse facade, foliage opening, and street recession visible in the proof; it no longer claims a well or a broad balanced field.
- Resolved required fix 2: the `11-waterhouse-preservation-05` selected-work note now identifies the close, nearly frontal tiled wall, paired arched openings, left grille, and right dark doorway; it no longer claims a panoramic facade or controlled horizon.
- Re-verified critique history: `f7cd3d84cb76a1d2a99c1c3cc96a510639799687` (04 utility cable and 11 low wall-and-ground boundary), `1a3931998249b03ac2afe6d929dbf49deed75206` (06 central-pavilion arch), and `7b3a647f253d5b64561b2805404a88b4eddc4bda` (09 and 11 source-note accuracy). The 04, 06, and 11 overlay corrections remain reflected in their current proofs and synchronized chapter prose.
- Fresh strict scoring passes all overlays: eleven score 100/100 and `06-old-secretariat-stagnation-02` scores 90/100 because the analyzer's broader balance axis differs from the truthfully labelled central-pavilion arch. Visual proof inspection is clean. `scripts/check.sh` passes.

## Critique round — 2026-08-02

### Required fixes

1. **11-waterhouse-preservation-05** — The fair-use rationale in `sources.md` says that a “full panorama” is essential to a lesson in horizontal pacing and historical scale. The current proof is a close, nearly frontal view of a tiled wall with a grilled arch and open doorway; it is not a panorama. Replace that description with a rationale that accurately explains why the complete *shown frame* is needed for the paired-openings analysis. This is separate from the resolved selected-work-description correction: the remaining error is in the per-image fair-use rationale itself.

### Advisory (non-blocking)

- All twelve current proofs were visually inspected. The overlays are semantically truthful and use three to four distinct teaching primitives each. The resolved **04** utility-cable, **06** central-pavilion-arch, **09** source-description, and **11** wall-and-ground-boundary corrections remain intact.
- Strict re-scoring passes every overlay: eleven score 100/100 and **06-old-secretariat-stagnation-02** scores 90/100 only because the analyzer's broad balance axis differs from the visibly correct local pavilion-arch axis. This is the same settled, non-regressed condition documented in the prior resolution.
- All cited artist, MoMA, and public rendition links returned 200 during this review. Credits, image-specific fair-use routes, and the no-camera-settings disclosure remain traceable and materially sound.
