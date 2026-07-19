verdict: approve

## Critique round — 2026-07-18

### Required

1. **05-us-285-new-mexico — the road-convergence explanation is false as rendered.** The chapter says that the two traced road edges converge at the analyzer point `(0.412, 0.446)`, but the two overlay `leading_line` segments cross one another around `(0.495, 0.545)` and neither terminates at the marked `vanishing_point`. The proof therefore teaches a different geometry from the prose and the `ROAD CONVERGENCE` marker. Re-trace the actual road edges and make the text/spec agree with the measured relationship.
2. **09-cafeteria-san-francisco — `SEAT-BACK DIAGONAL` does not trace a seat-back edge.** In the proof, the segment from `(0.17, 0.08)` to `(0.45, 0.30)` runs through the unstructured dark area at upper left and does not follow a visible seat-back contour. The label names a structure the mark does not identify. Remove it or replace it with a line on an actual visible edge.
3. **Research date contradiction — `Movie Usherettes, Los Angeles` is assigned two different years.** `research.md` lists the work once among the 1955 photographs and again among the 1956 photographs, while the cited source record and the chapter both identify it as 1956. Correct the research note so the documented date is stated once and consistently.

### Advisory (non-blocking)

No separate advisory findings. The remaining proofs visibly support their labels; chapter measurements match the corresponding analyzer values within tolerance; the chapter avoids unsupported camera settings; and all twelve works have record-linked, credited per-image fair-use rationales in `sources.md`.

## Resolution — 2026-07-18

Re-verified prior critique round `2026-07-18` in full. For 05, the false analyzer vanishing-point claim was removed: the proof now traces the visible left and right road edges plus the broken center markings toward the upper crest, and the chapter makes the same non-convergent claim. For 09, the unsupported `SEAT-BACK DIAGONAL` primitive and matching prose were removed. The dating note now records *Movie Usherettes, Los Angeles* once, as 1956, matching the cited source and chapter. Both revised overlay specs score 100/100 and their regenerated proofs passed visual review; `scripts/check.sh` passed.

## Critique round — 2026-07-18

### Required

1. **07-restaurant-us-1-south-carolina — `TELEVISION SCREEN` frames the television set, not its screen.** The frame from `(0.16, 0.08)` to `(0.49, 0.45)` encloses the casing and adjacent cabinet area; the visible CRT screen is the much smaller bright rectangle within it. This changes the chapter's claimed "picture inside the picture" from the screen to the appliance. Trace the CRT screen or rename the primitive to `TELEVISION SET` and make the chapter's wording match.
2. **09-cafeteria-san-francisco — `DINER'S FACE` does not isolate the face it names.** The ellipse `(0.60, 0.41, rx 0.17, ry 0.16)` omits the sitter's upper head while extending well over the collar and chest. It marks an upper body, not the face, so the chapter's claim that the overlay isolates the face is false as rendered. Resize and reposition it around the actual face, or relabel it and revise the prose accordingly.

### Advisory (non-blocking)

- **09-cafeteria-san-francisco — `NEAR COUNTER`.** The long diagonal reads more as a route across the foreground tableware than a clearly bounded counter edge. Consider shortening it to a visible boundary or naming the foreground plane more precisely.

The earlier 05 road-convergence, 09 seat-back, and *Movie Usherettes* date findings remain resolved: no material regression was found. All twelve source records and public-display rendition links returned successfully, each image retains its credited per-image fair-use rationale, the cited analyzer measurements match the chapter within tolerance, and no camera settings are asserted.

## Resolution — 2026-07-18

Re-verified the full prior critique round dated `2026-07-18`: 05 still traces the visible left and right road edges plus the broken center markings toward the upper crest without claiming a false measured convergence; 09 has no `SEAT-BACK DIAGONAL`; and *Movie Usherettes, Los Angeles* remains dated once, as 1956, in `research.md` and the chapter. The 05 and 09 specs score 100/100 and their proofs passed visual review.

For this round, 07 now frames the visible CRT picture area rather than the television casing, so the chapter's "picture inside the picture" claim is true as rendered. The 09 `DINER'S FACE` ellipse now encloses the head from hairline through chin without extending over the torso; its matching chapter claim remains accurate. Both revised specs score 100/100, the regenerated proofs passed visual review, and `scripts/check.sh` passed.

## Critique round — 2026-07-18

### Required

1. **03-political-rally-chicago — `FLAGSTAFF` stops tracing the flagstaff.** The overlay follows the staff at `x≈0.51` from the top to `y=0.23`, then its final segment jogs to `(0.55, 0.36)` across the flag fabric. The actual staff continues essentially vertically beside the flag. This is a materially false structural trace, not a small endpoint overshoot. Re-trace that final segment on the staff or remove the primitive; keep the chapter's flagstaff language consistent with the resulting spec.
2. **03-political-rally-chicago — the source note describes an absent subject/action.** The image's `sources.md` “Why it matters” entry says “A speaker's gesture rises,” but the pictured central figure is a tuba player obscured by the bell; no speaker or gesture is identifiable. Replace that sentence with an account of the visible tuba, flag, and vertical stack.
3. **07-restaurant-us-1-south-carolina — `WINDOW` does not frame the window it names.** The `frame_in_frame` runs from `y=0.05` to `y=0.38`, so its lower corners sit across the bright pane rather than on the visible sill, which is substantially lower (about `y=0.50`). It therefore marks an arbitrary portion of the window rather than its frame. Extend it to the actual window boundary, or relabel it as the specific bounded substructure and revise the prose if necessary.

### Advisory (non-blocking)

- **09-cafeteria-san-francisco — `NEAR COUNTER`.** The polyline reads more as a route through foreground tableware than a sharply bounded counter edge. This remains the previously noted interpretive, non-blocking concern; it does not contradict the chapter's central face-and-crowding reading.
- **02-trolley-new-orleans — duplicated frames.** The three window-bay `frame_in_frame` annotations are visibly truthful and pedagogically useful, though the scorer's 97/100 duplicate-type warning suggests a possible future simplification.

The prior 05 road-convergence and 09 seat-back/date findings remain resolved. The current 05 proof still truthfully traces the road and markings without claiming a measured convergence; the 07 CRT screen and 09 diner-face corrections remain materially accurate. All twelve current per-image Art Institute record and IIIF links returned successfully, their credited four-factor fair-use rationales remain present, the chapter's analyzer-derived numerical values are within tolerance, and no camera settings are asserted.

## Resolution — 2026-07-18

Re-verified every required fix from the prior critique rounds dated 2026-07-18: 05 continues to trace the two road edges and broken center markings without asserting a false single convergence; 09 has no `SEAT-BACK DIAGONAL`, and its `DINER'S FACE` ellipse encloses the face rather than the torso; *Movie Usherettes, Los Angeles* is dated once as 1956 in `research.md`; and 07 continues to frame the CRT picture area rather than the television casing.

For the current round, 03's `FLAGSTAFF` now follows the visible vertical staff through its lower endpoint, and its source note identifies the tuba player, bell, flag, and vertical stack without inventing a speaker or gesture. The 07 `WINDOW` frame now reaches the visible sill, so the chapter's bright-window reading matches the proof. Both revised overlay specs score 100/100 and their regenerated proofs passed visual review. `scripts/check.sh` passed.

## Critique round — 2026-07-18

### Required

No required findings. All twelve current proofs were visually checked against their overlay specs and analyzer evidence. The resolved 03 flagstaff, 07 CRT-screen/window, 09 face/seat-back, 05 road, and *Movie Usherettes* date corrections remain materially accurate. The chapter's reported analyzer measurements match the current analysis files within tolerance, no camera settings are asserted, and all twelve credited Art Institute object/IIIF sources and per-image four-factor fair-use rationales are present and traceable.

### Advisory (non-blocking)

- **04-drugstore-detroit — `COUNTER RECESSION`.** The 94/100 scorer result retains a detector warning that the long leading line does not cleanly track a single measured edge. In the proof it still reads as the counter's visible receding route and does not mislabel the scene, so this is non-blocking; a future pass could tighten it to a more discrete counter contour.
