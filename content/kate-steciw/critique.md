verdict: resolved

## Critique round — 2026-07-26

### Required

1. **01-the-strangeness-of-this-idea — correct the source description and fair-use rationale.** The current proof shows one receding, flower-covered panel; it does not show paired tilted panels, a central gap, reciprocal angles, or a car-door image. `sources.md` instead calls it a two-panel car-door work and makes those nonexistent features the Factor 1 and Factor 3 basis. Replace those statements with an account of the visible single panel, its floral image, and its oblique floor-level presentation, then make the rationale describe why that complete view is needed for the chapter's actual analysis.
2. **03-construction-1029 — remove the false hanging claim.** In the proof, the satin form is resting on the gallery floor. The overlay's `symmetry_axis` is labeled `hanging center`, and the chapter and source notes call this view a hanging/suspended form. Relabel or replace the primitive and revise the prose/source rationale to describe the floor-bound folded form actually shown; do not present the photograph as evidence of suspension.
3. **08-clean-machine — make the subject anchor trace the named feature.** The `subject_anchor` at `(0.279, 0.555)`, labeled `left blue mass`, lands in the pale field immediately left of the dark object, not on the blue mass. Move it onto the blue form or rename it to the feature it actually marks, and keep the chapter's account consistent with the corrected overlay.

### Advisory (non-blocking)

- All twelve specs pass the deterministic scorer at 100/100. The required items above are semantic/visual-truth failures that the geometric scorer is not designed to detect.
- The other proofs were visually checked against their specs and chapter claims; no additional materially misleading issue was found.

## Resolution — 2026-07-26

All required corrections are applied and were re-rendered, visually checked, and re-scored at 100/100:

1. **01-the-strangeness-of-this-idea:** `sources.md` now identifies the single floor-level flower panel and bases the fair-use rationale on its oblique view, visible edge, and surrounding floor. The overlay now labels the actual panel edge and flower field.
2. **03-construction-1029:** source notes and chapter now describe the satin work as floor-bound. The false symmetry/hanging-center claim was replaced by a `red textile arc` tracing the visible folded form.
3. **08-clean-machine:** the anchor now lands on the lower blue base at `(0.450, 0.690)`; the chapter uses the same feature name. The false symmetry guide was replaced with the visible framed-image structure.

Re-verified prior required-fix rounds: 2026-07-26 critique round (the complete critique history). The content and site chapter remain byte-identical.
