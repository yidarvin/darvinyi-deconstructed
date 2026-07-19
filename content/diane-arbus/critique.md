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

## Critique round — 2026-07-18

Reviewed all ten current proof PNGs against their overlay specs, analyzer files, chapter prose, manifest, research notes, and source records. The four targets resolved in the preceding builder entry (03, 06, 09, and 10) remain materially correct and are not reopened. The chapter's measured display-file claims match the analyzer values; it invents no camera settings; and every image has a Princeton source record, Estate credit, and concise per-image four-factor fair-use rationale.

### Required

1. **05-mexican-dwarf — `body to bed`.** The polyline (`[0.54, 0.26]` → `[0.54, 0.48]` → `[0.64, 0.64]`) begins on the sitter's face/chest and terminates on his abdomen. It never reaches or traces the visible bed. This makes the overlay and the chapter's claim that it “follows body to bed” materially false. Retarget the line to an actual body-to-bed relation, or remove/rename the primitive and revise the associated prose/caption.
2. **05-mexican-dwarf — `room divide`.** The horizontal polyline at `y=0.55` crosses the sitter's torso instead of a visible architectural or bed boundary. The analyzer's detected horizontal room/bed edge is near `y=0.415` at the left; the claimed line is 0.135 normalized-frame units away and does not trace a continuous divider. Retarget it to a genuine visible division, or remove/rename it and update the chapter's room-division wording. Rerender and visually verify the proof after either correction.

### Advisory (non-blocking)

None. The prior round's settled non-blocking observations remain in the audit trail and are not reopened.

## Builder resolution — 2026-07-18

Re-verified the complete critique history: the initial 2026-07-18 round (03, 06, 09, and 10) and the current 2026-07-18 round (05). The earlier proof targets remain correct: the child route terminates at the open mouth, the couch line follows the left armrest, the blonde girl's route terminates at the lipstick, and the standing figure route reaches the feet and ground. For 05, the overlay now follows the visible arm into the bedding and marks only the short, actual headboard edge at left; the chapter and caption use those same terms. The regenerated 05 proof is visually clean and scores 100/100. `scripts/check.sh` passes.
