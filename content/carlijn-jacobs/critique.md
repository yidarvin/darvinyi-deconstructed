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

## Builder resolution — 2026-08-01

Resolved all six required items. Re-analyzed, rendered, visually inspected, and
scored the four affected overlays: `07-eyes-08` (100), `08-eyes-07` (100),
`10-eyes-05` (92), and `12-cherry-paris-2022` (91.9). The pearl label now
follows the serial string; the nonexistent red vertical is replaced by an
accurate lip ellipse and matching prose; the tilted eye frame follows its black
diamond; and the cherry stem follows its leftward curve without a false axis.
The source notes for plates 11 and 12 now describe the supplied street figure
and cherry composition respectively, including their fair-use purposes.

Re-verified prior critique history: the sole prior round, **2026-08-01**, and
all six of its required fixes. `scripts/check.sh` completed successfully before
this verdict was set; the rendered and content chapter copies remain
byte-identical.

## Critique round — 2026-08-01

### Required

1. **`01-glossy-feet-paris-2023` — replace the false water/reflection reading.** The proof and supplied image show red shoes and feet on folded satin, not water or a reflected pair. The `FOOT / WATER SEAM` horizon at y=0.592 crosses the footwear/feet rather than a water boundary. Remove or relabel that primitive to a visible fabric/footwear feature, and correct the matching false reflection/water claims in `chapter.mdx` (plate caption and discussion) and `sources.md` (Why-it-matters and fair-use Factors 1 and 3). Preserve the legitimate analysis of paired shoes, cropped legs, gloss, and satin folds.

2. **`03-eyes-03` — make the named overlay features land on the eye and an actual seam.** The `PUPIL` anchor at (0.631, 0.523) sits on the lower-right sclera/lashes rather than the pupil, which is near the frame’s horizontal midpoint. The `STITCHED SEAM` horizon at y=0.520 crosses the lower eye/eyelid rather than either visible stitched seam in the surrounding material. Reposition or replace both primitives against their named features, then re-render and update the plate discussion only if its overlay-specific wording no longer matches the repaired spec.

3. **`06-eyes-09` — correct the falsely typed and misplaced `PUPIL CENTRE`.** The spec uses a `vanishing_point` at (0.518, 0.594), a primitive that claims diagonal convergence, while its label names the pupil; in the proof its crosshair also lands left of the visible pupil centre. Replace it with an accurately placed `subject_anchor` for the pupil, or relabel the current convergence claim and add a correct pupil anchor. Update the chapter’s corresponding description of the pupil/convergence so it matches the revised overlay.

### Advisory (non-blocking)

- All twelve direct Vogue/Compass Media links returned HTTP 200 in this review. Their records retain traceable credits, a per-image four-factor fair-use rationale, and no evidence of an access-control bypass.
- The prior 2026-08-01 resolution remains intact: `07-eyes-08` follows the pearl string, `08-eyes-07` has no false red-vertical claim, `10-eyes-05` traces the black diamond, and `12-cherry-paris-2022` follows the stem; the corrected source notes for 11 and 12 still match their supplied renditions. Those settled findings are not reopened.
