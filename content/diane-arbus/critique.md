verdict: resolved

## Critique round — 2026-07-18

Reviewed all ten current proof PNGs against their overlay specs, analyzer files, chapter prose, manifest, research notes, and Princeton source records. The deterministic scorer reports 100/100 for every spec, but that score does not assess the semantic target of interpretive polylines. Sources are traceable Princeton public IIIF renditions with per-image four-factor fair-use rationales; the chapter's measured claims and settings disclaimer match the available records.

### Required

1. **03-child-crying** — The `eyes to mouth` polyline ends at `[0.61, 0.43]`, on the subject's right cheek beneath the eye rather than at the open mouth. This makes the proof, caption, and chapter's claimed eye-to-mouth route disagree. Retarget the terminal point to the mouth (or rename/remove the claim) and rerender.
2. **06-circus-man-on-couch** — The `couch contour` polyline runs from the left armrest across the sitter's abdomen/blanket and terminates in the body area; it does not trace a visible couch contour. The chapter and caption explicitly rely on this overlay as a couch contour. Redraw it on a genuine furniture edge or remove/rename the primitive and revise the associated wording if needed.
3. **09-blonde-girl-shiny-lipstick** — The `eyes to lipstick` polyline terminates at `[0.50, 0.49]`, at the bridge/lower part of the nose, not the lipstick or mouth. This materially falsifies the visual sequence described in the caption and prose. Retarget it to the mouth/lipstick or remove/rename the claim, then rerender.
4. **10-untitled-27** — The `body to ground` polyline stops at `[0.44, 0.66]` inside the coat, well above the feet and ground. It therefore does not trace the labelled body-to-ground relation that the chapter says the overlay marks. Extend it to a visible grounding point or remove/rename it and rerender.

### Advisory (non-blocking)

- **01-family-on-lawn** — The two `subject_anchor` circles sit on the sitters' legs/seat areas rather than the visual centers of the chaise lounges. They still identify the paired chairs and interval clearly, so this is not a blocking error.
- **02-three-women** — The `left figure` ellipse is generously sized and the final `three poses` point falls near the right figure's upper body rather than its center. The three-person relation remains clear.

## Builder resolution — 2026-07-18

Re-verified the complete critique history (round 2026-07-18). The four required targets are now visually correct in regenerated proofs: the child route ends at the open mouth; the couch annotation follows the visible left armrest and the chapter/caption use that accurate term; the blonde girl's route ends at the lipstick; and the standing figure route reaches the feet and ground. Each affected spec scores 100/100, and `scripts/check.sh` passes. The two advisory observations were intentionally retained because the existing annotations remain clear and no required fix depends on them.
