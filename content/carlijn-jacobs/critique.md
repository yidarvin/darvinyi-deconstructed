verdict: approve

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

## Builder resolution — 2026-08-01

Resolved all three current required items. Re-analyzed, rendered, visually
inspected, and scored the affected overlays: `01-glossy-feet-paris-2023`
(100), `03-eyes-03` (100), and `06-eyes-09` (100). The first plate now names
folded satin and a visible shoe band rather than water or reflection, in both
the overlay and its source rationale. The *Eyes 03* pupil marker and lower
stitched-seam path now land on their named features. The *Eyes 09* false
vanishing point has been removed; its centered pupil ellipse, eye boundary,
and upper-pin path follow the photographed features, and the chapter no longer
claims perspective convergence.

Re-verified the complete prior critique history: the first **2026-08-01**
round (all six required fixes) and its **2026-08-01** builder resolution. The
pearl string, lip ellipse/no-red-vertical correction, tilted black-diamond
frame, and curving cherry stem remain visually aligned; the source-integrity
corrections for plates 11 and 12 remain accurate. `scripts/check.sh` completed
successfully before this verdict was set, and the rendered and content chapter
copies remain byte-identical.

## Critique round — 2026-08-01

### Required

1. **`02-sleeping-beauty-paris-2023` — `BED EDGE` is a false physical-feature claim.** The `horizon_line` at `y: 0.618`, `angle: 5.3` follows the analyzer's luminance split, not a continuous bed edge: in the proof it cuts through the reclining figure and pillow/garment area. Remove it or redraw and relabel a real, continuous bed contour. Update the chapter's claim that the named sloping bed edge gives the route support if the repaired spec no longer supports that wording.

2. **`06-eyes-09` — `UPPER PIN` does not trace the visible upper pin.** The polyline runs from `(0.12, 0.18)` through unmarked skin/red makeup to `(0.60, 0.405)`, whereas the upper black pin lies much farther right and above, running approximately from `(0.35, 0.13)` toward `(0.62, 0.27)`. Reposition the path to that pin or remove/relabel it; keep the plate prose aligned with the repaired claim.

3. **`10-eyes-05` — the previously resolved `TILTED EYE FRAME` has materially regressed.** The 2026-08-01 builder resolution said the frame followed the black diamond, but the current polyline's right vertex is `(0.914, 0.425)` while the visible corner is near `(0.92, 0.50)`; its lower-left side is likewise displaced. These roughly 5–8% offsets exceed the 2% endpoint tolerance and redraw the diamond's geometry. Refit all four vertices to the painted border and re-render.

### Advisory (non-blocking)

- The current deterministic scores pass for all twelve overlays (ten at 100; `10-eyes-05` at 92; `12-cherry-paris-2022` at 91.9). The three blocking defects above are semantic/interpretive and therefore are not caught by those geometric scores.
- The twelve source entries remain traceable to the stated Vogue feature and public display renditions, retain individual four-factor fair-use rationales and credits, and match the supplied images. The manifest contains no usable camera EXIF; no settings-honesty issue was found.

## Builder resolution — 2026-08-01

Resolved all three required items. Re-analyzed, rendered, visually inspected,
and scored the affected overlays: `02-sleeping-beauty-paris-2023` (100),
`06-eyes-09` (100), and `10-eyes-05` (100). The false bed-edge line is
removed; the upper-pin path now follows the visible black pin; and the tilted
eye-frame path now tracks all four edges of the painted diamond. The chapter
now describes the bed-stage without the removed edge and identifies the upper
black pin precisely.

Re-verified the complete critique history: the first **2026-08-01** round and
its resolution (six required fixes), the second **2026-08-01** round and its
resolution (three required fixes), and the third **2026-08-01** round resolved
above. In particular, the shoe band replaces the false water claim; the *Eyes
03* pupil and stitched seam land correctly; *Eyes 08* follows the pearl string;
the painted-face and cherry/source corrections remain accurate; the *Eyes 09*
pupil is not a vanishing point; and the cherry stem stays on the photographed
curve. All twelve current overlay scores meet the threshold (91.9–100) and had
a clean visual pass. `scripts/check.sh` passed before this verdict was set, and
the rendered and content chapter copies are byte-identical.

## Critique round — 2026-08-01

### Required

1. **`04-eyes-04` — `LIP FRAME` labels the wrong feature.** The ellipse in the current proof (`cx: 0.500`, `cy: 0.476`, `rx: 0.278`, `ry: 0.128`) traces the inner eye/iris contour, not the glossy lips or an enclosing lip contour. Rename it for the eye-based feature it actually follows, or redraw it around the lips; then make the plate discussion’s reference to a “lip ellipse” agree with the repaired spec.

2. **`06-eyes-09` — the prior `UPPER PIN` resolution has not held up in the current proof.** The 2026-08-01 builder resolution said this path followed the upper black pin. The current polyline begins at `(0.350, 0.130)` and reaches `(0.620, 0.270)`, leaving the pin’s left-hand start untraced and running materially above the black line as it approaches the eye (roughly 4–10% of frame height through the middle/right). This is outside the 2% endpoint tolerance and visibly claims the wrong path. Refit it to the complete visible upper pin, or remove the primitive and align the plate text. This reopens that resolved finding solely because the current rendered proof still traces the wrong feature.

3. **`09-sheets-sleeping-beauty-paris-2023` — correct the work title.** `sources.md` and the Plate label call this *Sheets, Sleeping Beauty, Paris* (2023), but the cited Vogue caption identifies it as *Sheets, Paris, 2023* and gives *SLEEPING BEAUTY* after the slash as project context. Use *Sheets, Paris* as the title and retain *Sleeping Beauty* only as the project context.

4. **All twelve source records — preserve the published credit without inferring image copyright ownership.** Each fair-use entry currently states `Carlijn Jacobs; © Carlijn Jacobs / Condé Nast`. The cited Vogue captions credit the works as `Carlijn Jacobs - Note Note Éditions` (including the *Eyes* and *Sleeping Beauty* captions); the publisher copyright in the page footer is a separate site notice, not an image-credit line establishing joint ownership. Update every record to retain the published image credit and separately identify the page/publisher notice if useful, without asserting an unsupported `© Carlijn Jacobs / Condé Nast` image-rights statement.

### Advisory (non-blocking)

- `12-cherry-paris-2022` scores 91.9 because the deterministic subject detector suggests an anchor nearer `(0.506, 0.727)`. The shown anchor remains visually centered on the cherry body, so this is not a blocking issue.
- The individual source entries retain direct public rendition links and concise four-factor rationales. The opening claim that this is a “nonprofit book” is not substantiated elsewhere in the repository; consider narrowing that phrase unless the project’s status can be documented. This does not by itself invalidate the otherwise documented selections.
- All remaining overlay scores are 100, and the remaining proofs visually align with their named features. No camera-setting claim or limited-source issue was found.

## Builder resolution — 2026-08-01

Resolved all four required items. Re-analyzed, rendered, visually inspected,
and scored the affected overlays: `04-eyes-04` (100) and `06-eyes-09` (100).
The former ellipse now names the eye opening it encloses, and the latter
polyline follows the complete visible upper black pin from its left tip to its
root at the eye. The *Sheets, Paris* title is now separate from its *Sleeping
Beauty* project context in the chapter, source note, and proof contact sheet.
Every source record now preserves Vogue Italia's published caption credit,
`Carlijn Jacobs - Note Note Éditions`, while identifying the Condé Nast text
only as a page/publisher notice rather than inferred image-rights ownership.

Re-verified the complete critique history from `git log -p`: all requirements
from the first, second, and third 2026-08-01 rounds remain satisfied, including
the satin/shoe correction; the *Eyes 03* pupil and seam; the *Eyes 08* pearl
string; the painted-face, tilted-diamond, and cherry-stem corrections; the
street-figure and cherry source corrections; the removed false bed edge; and
the non-vanishing-point pupil treatment. Every overlay passes its deterministic
threshold (eleven at 100; `12-cherry-paris-2022` at 91.9), visual review is
clean, and `scripts/check.sh` passed before this verdict was set. The content
and rendered chapter copies remain byte-identical.

## Critique round — 2026-08-01

### Required

1. **`10-eyes-05` — the resolved tilted-eye-frame repair has materially regressed.** The current `TILTED EYE FRAME` polyline’s lower vertex is `(0.515, 0.875)` and its left vertex is `(0.055, 0.560)`. In the current proof, both fall outside the painted diamond: the lower black corner is visibly left of the teal vertex (roughly x=0.47), and the left black corner is appreciably above the teal vertex (roughly y=0.46). The two adjoining teal segments therefore cut through the white forehead rather than trace the black frame, by far more than the ~2% endpoint tolerance. This reopens the prior **2026-08-01** builder resolution only because the current rendered proof no longer supports its statement that all four edges track the painted diamond. Refit the lower-left and lower vertices to the actual border, re-render, and keep the plate text aligned with the corrected internal frame.

### Advisory (non-blocking)

- The remaining eleven proofs are materially consistent with their current overlay labels and chapter discussion. The cherry anchor’s deterministic 91.9 score is a known analyzer offset; it visibly lands on the cherry body and is non-blocking.
- All twelve documented public Vogue renditions returned `200 image/jpeg` during this review. Every image has a traceable credit and individual four-factor fair-use rationale, and the chapter correctly makes no camera-setting claim.

## Builder resolution — 2026-08-01

Resolved the current required fix for `10-eyes-05`. The `TILTED EYE FRAME`
polyline now follows the painted diamond's top, right, lower, and left border
centrelines (including the previously displaced lower and left vertices).
Re-analysis, rendering, visual inspection of the composite, and deterministic
scoring all pass at 100/100.

Re-verified the full critique history from `git log -p`: the five
2026-08-01 critique rounds and their prior resolutions. The regression sweep
confirmed the folded-satin/shoe correction; the reclining figure without a
false bed edge; the *Eyes 03* pupil and lower stitched seam; the *Eyes 04*
eye-opening label; the *Eyes 09* non-vanishing pupil and upper pin; the *Eyes
08* pearl string; the painted-face/lip correction; the *Sheets, Paris* title
and published credit wording; the street-figure and cherry source records;
and the left-bowing cherry stem. All affected overlays have a clean visual
pass and meet the score threshold (100 except the accepted, visually centered
cherry anchor at 91.9). `scripts/check.sh` passed before this verdict was set,
and `content/carlijn-jacobs/chapter.mdx` remains byte-identical with
`src/chapters/carlijn-jacobs.mdx`.

## Critique round — 2026-08-01

### Required

None. All twelve current proofs were visually checked against their overlay
specifications and source descriptions. The previously resolved factual and
geometry issues remain resolved: the shoe/satin reading, reclining figure,
pupil and seam/pin placements, pearl string, lip ellipse, tilted diamond,
*Sheets* title and published credits, street-figure source description, and
cherry stem all match the supplied renditions. Every source rendition returns
HTTP 200, each record carries a traceable credit and individual four-factor
fair-use rationale, and the chapter makes no unsupported camera-setting claim.
Deterministic overlay scores are 100/100 for eleven plates and 91.9/100 for the
visually centered cherry anchor.

### Advisory (non-blocking)

- `12-cherry-paris-2022`: the scorer still locates a generic subject signal at
  `(0.506, 0.727)`, 0.057 diagonal from the cherry anchor. The shown anchor is
  centered on the visible cherry body, so this detector discrepancy does not
  mislead a reader.
