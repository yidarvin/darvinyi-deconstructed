verdict: resolved

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
