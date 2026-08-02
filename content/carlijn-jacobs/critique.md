verdict: revise

## Critique round — 2026-08-01

### Required

1. **`07-eyes-08` — the `PEARL AXIS` is not on the pearl string.** The vertical `symmetry_axis` is at x=0.562, while the centers of the pearl-like forms and the eyelash seam run appreciably to its left (roughly x=0.48–0.52 in the proof). The analyzer's x=0.562 is a measured image-symmetry signal, not evidence that it is the pearls' axis. Reposition or replace this primitive so its label traces the serial form it names; retain the ellipse/anchor only if they remain accurate.

2. **`08-eyes-07` — remove the nonexistent `RED VERTICAL` claim throughout.** The proof and unannotated image show a painted face with red lips, but no thin red vertical from y=0.09 to y=0.71. The polyline overlaps the face axis while falsely naming a feature that is absent. Remove or replace the primitive, and correct the matching claims in `chapter.mdx` (the plate discussion and caption as applicable) and `sources.md` (the Why-it-matters and Factor 1 rationale) so they describe visible makeup and the open/closed-eye asymmetry rather than a red vertical.

3. **`10-eyes-05` — `TILTED EYE FRAME` does not trace the black square.** Its vertices (`[0.28,0.17]`, `[0.71,0.37]`, `[0.50,0.69]`, `[0.15,0.49]`) form a smaller, displaced quadrilateral inside the actual bold diamond; the upper-left and upper vertices are visibly far from the painted frame. Redraw the spec against the square's actual edges, then re-render and visually verify it.

4. **`12-cherry-paris-2022` — `CURVING STEM` does not follow the stem.** The visible red stem bows left through the upper and middle frame, while the overlay goes from the top center to x=0.59 at y=0.37 and makes a right-side V through empty black space. Rebuild the stem path (and reassess the `STEM AXIS`, which currently does not describe that curve) from the photograph, then re-render and verify.

5. **Source-integrity correction for `11-the-masked-man-paris-2018`.** Its supplied rendition and proof show a red-coated street figure with a lamppost, iron railing, and brick façade. `sources.md` instead describes an oval face in a red headpiece on a black field, and its Factors 1 and 3 repeat that different-image rationale. Replace the per-image Why-it-matters and fair-use Factors 1 and 3 with an assessment of the actual credited rendition while retaining the traceable Vogue URL and credit.

6. **Source-integrity correction for `12-cherry-paris-2022`.** The supplied rendition contains one cherry and its stem against black; it contains no face above it. `sources.md` says the cherry repeats red accents of a face and says the complete frame is needed to connect “face, stem, and fruit.” Correct the Why-it-matters and Factors 1 and 3 to the actual cherry/stem/negative-space composition.

### Advisory (non-blocking)

- All twelve direct Vogue and Compass Media URLs returned publicly accessible 200 responses during this review, and each record includes a concise four-factor fair-use rationale. The current machine scores are 100/100, but those scores do not evaluate the semantic errors above; rerun the visual pass after revising the affected specs.
- The remaining proofs are materially consistent with their visible features, overlay claims, analyzer values, prose, and the stated absence of camera EXIF. Minor endpoint/label-placement variation in them is within the allowed visual tolerance.
