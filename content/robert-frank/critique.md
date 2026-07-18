verdict: revise

## Critique round — 2026-07-18

### Required

1. **05-us-285-new-mexico — the road-convergence explanation is false as rendered.** The chapter says that the two traced road edges converge at the analyzer point `(0.412, 0.446)`, but the two overlay `leading_line` segments cross one another around `(0.495, 0.545)` and neither terminates at the marked `vanishing_point`. The proof therefore teaches a different geometry from the prose and the `ROAD CONVERGENCE` marker. Re-trace the actual road edges and make the text/spec agree with the measured relationship.
2. **09-cafeteria-san-francisco — `SEAT-BACK DIAGONAL` does not trace a seat-back edge.** In the proof, the segment from `(0.17, 0.08)` to `(0.45, 0.30)` runs through the unstructured dark area at upper left and does not follow a visible seat-back contour. The label names a structure the mark does not identify. Remove it or replace it with a line on an actual visible edge.
3. **Research date contradiction — `Movie Usherettes, Los Angeles` is assigned two different years.** `research.md` lists the work once among the 1955 photographs and again among the 1956 photographs, while the cited source record and the chapter both identify it as 1956. Correct the research note so the documented date is stated once and consistently.

### Advisory (non-blocking)

No separate advisory findings. The remaining proofs visibly support their labels; chapter measurements match the corresponding analyzer values within tolerance; the chapter avoids unsupported camera settings; and all twelve works have record-linked, credited per-image fair-use rationales in `sources.md`.
