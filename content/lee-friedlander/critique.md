verdict: resolved

## Critique round — 2026-07-18

### Required fixes

1. **10-mount-rushmore-south-dakota — mislabeled subject anchor.** The `tourist camera` anchor is at `(0.367, 0.724)`, on the lower torso/bag area between the two central visitors, not on either visible camera. Move it to a camera or relabel it to the feature actually marked. This is material because the caption and chapter use the raised cameras to explain the panelled acts of looking.
2. **12-new-york-city-1974 — mislabeled subject anchor.** The `colonial statue` anchor is at `(0.304, 0.631)`, on the advertising-letter/fence area left of the statue; the statue itself stands near the centre of the frame. Move the anchor to the statue (or change the label and corresponding prose). The chapter explicitly says the overlay anchors the statue, so the current proof misstates its composition.

### Advisory (non-blocking)

- None.

### Audit notes

- All twelve proofs were visually checked against their overlay specs and analysis files. The remaining overlays are materially legible and their stated features are present.
- The chapter's quoted tonal values and grid comparisons match the analysis data within the allowed tolerance. It makes no camera-setting claims.
- Each image is traceable to its stated Art Institute of Chicago record and IIIF rendition. The record metadata confirms the listed title, date, artist, collection credit, non-public-domain status, and image identifier; the per-image fair-use rationales state transformative purpose, creative nature, whole-frame necessity, and non-substitutive web-sized use.

## Resolution — 2026-07-18

1. **10-mount-rushmore-south-dakota:** replaced the torso/bag anchor with a precisely placed ellipse around the raised left tourist camera, labeled `left tourist's camera`. This makes the annotation's claim match the visible feature rather than treating the camera as a saliency-detected subject. The regenerated proof was visually checked and scores 100/100.
2. **12-new-york-city-1974:** retained the measured anchor position but relabeled it `billboard lettering`; revised the corresponding chapter sentence so it no longer claims the statue is anchored. The regenerated proof was visually checked and scores 88/100.

Re-verified required fixes from the full critique history: 2026-07-18 round (the only prior round). `scripts/check.sh` passed after the corrections, and the rendered chapter copies remain byte-identical.

## Critique round — 2026-07-18

### Required fixes

1. **02-new-york-city-1963-b — false vanishing-point claim.** The overlay uses a `vanishing_point` primitive at `(0.546, 0.516)` but labels that point `screened car`. The two marked `mesh diagonal` lines are effectively parallel (their endpoint slopes are both about `-0.485`) and do not converge at the car. This falsely teaches convergence where the image instead presents an all-over screen. Replace the primitive with a `subject_anchor` for the car, or redraw only genuinely convergent lines and label their actual vanishing point; make the chapter's “toward the measured center” wording agree with the corrected overlay.
2. **08-colorado — Kennedy anchor is on the wrong feature.** The `Kennedy portrait` anchor at `(0.731, 0.166)` lands on the white notice/reflection in the right-hand door. The Kennedy portrait is in the left-hand window near `(0.28, 0.11)`. Move the anchor to the portrait or relabel it to the feature actually marked, and keep the chapter sentence consistent. This is materially misleading because the chapter explicitly says the anchor stays on the Kennedy portrait.

### Advisory (non-blocking)

- The registry's broad provenance label says `Artist / Fraenkel Gallery`, while the chapter's actual per-image sources are Art Institute of Chicago records and IIIF renditions. The chapter itself is traceable and accurate; this is a non-blocking future-audit clarity issue.

### Audit notes

- All twelve current proofs were visually reviewed against their overlay specs and analysis. The two requirements above are semantic/structural defects that the geometric score does not catch; all twelve specs currently meet the 80-point score threshold.
- The two requirements resolved in the preceding round remain resolved: the Mount Rushmore ellipse marks the left tourist's camera, and the New York 1974 anchor marks billboard lettering rather than the statue.
- Source review confirmed each Art Institute record, title/date/print-date where stated, credit, non-public-domain status, IIIF identifier, local dimension/hash, and individual four-factor fair-use rationale. No camera-setting or unsupported historical claims were found; chapter numeric claims are within the stated analysis tolerances.

## Resolution — 2026-07-18

1. **02-new-york-city-1963-b:** replaced the false `vanishing_point` claim with a `screened car` subject anchor on the car's visible front edge. The chapter now identifies the mesh runs as nearly parallel rather than as lines that converge at a measured centre. The rebuilt proof was visually checked and scores 88.6/100.
2. **08-colorado:** relabeled the measured right-door anchor as `right-door notice` and added a precise ellipse around the Kennedy portrait in the left window. The chapter now makes the same distinction. The unsupported sidewalk-seam line was removed as a clean, non-regressive simplification; the rebuilt proof was visually checked and scores 100/100.

Re-verified every required fix in the full critique history: the first 2026-07-18 round (Mount Rushmore's ellipse remains on the left tourist's raised camera; New York 1974's anchor remains on billboard lettering, not the statue) and the subsequent 2026-07-18 round (the two corrections above). The earlier proofs were visually rechecked; their current scores are 100/100 and 88/100 respectively. All twelve Lee Friedlander overlays score at least 80, `scripts/check.sh` passed, and the rendered chapter copies remain byte-identical.

## Critique round — 2026-07-18

### Required fixes

1. **03-new-york-city-1964 — two false line claims.** The `reflected roofline` line from `(0.00, 0.09)` to `(0.99, 0.00)` crosses the blank upper field for most of its length rather than a continuous roofline. The `window seam` line from `(0.00, 0.29)` to `(0.99, 0.23)` likewise runs above the visible sloping division between the reflected buildings/window band and the blank field. The current proof therefore labels structure that is not where the lines lie; the strict scorer independently flags both as tracking no edge. Remove these lines or redraw them on the actual features, and revise the chapter's claim that the overlay follows “two true seams” if the corrected annotation no longer supports it.

### Advisory (non-blocking)

- **02-new-york-city-1963-b:** the deterministic scorer's nearest-subject signal lies away from the `screened car` anchor, but direct visual inspection confirms that the anchor lands on the car's front edge. This remains a detector limitation, not a misleading annotation.

### Audit notes

- All twelve current proofs were visually checked against their overlay specs and the source images. The previously resolved fixes remain resolved: the Mount Rushmore ellipse encloses the left tourist's camera, the New York 1974 anchor identifies billboard lettering rather than the statue, the New York 1963 mesh uses a car anchor rather than a false vanishing point, and Colorado distinguishes the right-door notice from the Kennedy portrait.
- Non-strict overlay scores remain at least 80. The `03-new-york-city-1964` strict-score failure is corroborating evidence for the required visual finding above, not a separate scoring-only requirement.
- All twelve Art Institute object records were rechecked against the documented titles, dates/print dates, artist, collection credits, non-public-domain status, and IIIF ids. Each image retains an individual four-factor fair-use rationale. The chapter's quoted analysis values match the current analyzer data within tolerance, and it expressly avoids inventing camera settings.

## Resolution — 2026-07-18

1. **03-new-york-city-1964:** removed the two full-width false line claims. The replacement retains the sleeping-figure frame and traces only the measured, visibly continuous reflected-building band from `(0.33452, 0.39789)` to `(0.83155, 0.33451)`; the broad blank field is intentionally unannotated. The paired chapter copies now make the same limited claim. The regenerated proof was visually checked and scores 100/100.

Re-verified every required fix from the complete critique history: the first 2026-07-18 round (Mount Rushmore's ellipse still encloses the raised left tourist camera; New York 1974's anchor still identifies billboard lettering rather than the statue); the second round (New York 1963's car is a subject anchor rather than a false vanishing point; Colorado's Kennedy portrait is the left-window ellipse while the right-door notice is separately labeled); and this third round (the New York 1964 overlay has no false full-width roofline or window-seam claim). The four earlier corrected proofs were visually rechecked; their current non-strict scores are 100/100, 88/100, 100/100, and 88/100 respectively. The rendered chapter copies remain byte-identical.

## Critique round — 2026-07-18

### Required fixes

1. **01-new-york-city-1963-a — false `door rail` leading line.** The line from `(0.00, 0.76)` to `(0.99, 0.94)` bridges distinct, interrupted lower-door rails through the man's body and the threshold; it does not trace one visible rail across the frame. Remove it or replace it with a contour that follows a single real rail. The strict scorer independently gives this line a 12-point unsupported-edge deduction.
2. **02-new-york-city-1963-b — nonexistent `fence opening`.** The `frame_in_frame` at `x=0.34, y=0.24, w=0.36, h=0.45` encloses the sign/car region, but uninterrupted chain-link mesh crosses it; there is no opening or internal frame. Remove or recast the primitive, and revise the chapter's claims of a “small inner frame” and “narrow opening” accordingly.
3. **03-new-york-city-1964 — sleeping-figure frame does not trace the inset.** Its top is at `y=0.55`, roughly 0.05 normalized frame height above the visible inset's top (about `y=0.60`), across blank field. Move the top edge down and reduce the height so the frame bounds the photographic inset.
4. **04-new-york-city-1966 — two false claims.** The `camera shadow` anchor at `(0.632, 0.439)` falls on the bright street-side sign/traffic area beyond the woman's shoulder, not on the photographer's dark silhouette on her coat. Also, the `street recession` line from `(0.61, 0.55)` to `(0.99, 0.37)` floats across vehicles and pavement rather than a real receding edge (strict scorer: 12-point unsupported-edge deduction). Move or relabel the anchor and remove or redraw the line on a visible structural edge.
5. **06-madison-wisconsin — portrait overlays misstate their features.** The `framed portrait` bracket begins at `y=0.38`, well below the actual outer frame top (about `y=0.31`), while the `portrait oval` ellipse is visibly left and low of the oval it names (approximately `.04` normalized in each direction). Refit both primitives to the actual outer frame and inner oval; the chapter explicitly relies on this distinction.
6. **07-route-9w-new-york — mirror frame cuts through the mirror.** The `rear-view mirror` box ends at `x=0.23`, through the reflected face/camera, although the mirror's right boundary is near `x=0.33`. Extend it to the true boundary or rename it to the smaller region actually marked.
7. **08-colorado — false left boundary for `window reflection`.** The `frame_in_frame` begins at `x=0.11`, where the proof has no window edge; the continuous left pane begins at the image edge and ends near `x=0.58`. Refit it to the pane (approximately `x=0.00, w=0.58`) or use a primitive whose claim matches the intended region.
8. **10-mount-rushmore-south-dakota — window-panel frames cross mullions.** The `left window panel` box (`x=0.02–0.25`) crosses a mullion around `x=0.15`; the `center window panel` box (`x=0.51–0.74`) likewise starts and ends across multiple pane/mullion regions. Refit each to a single actual pane or relabel them as broader reflected zones.
9. **12-new-york-city-1974 — two false full-width advertising lines.** The `billboard band` at `y=0.42` and `advertising band` at `y=0.73` do not trace continuous edges across the frame. Remove them or replace them with only local, visible contours. Strict score is 76 because each line receives a 12-point unsupported-edge deduction (the non-strict 88 score treats these as warnings).
10. **Record/technique statement is false by omission.** `research.md` and the chapter's process-and-settings section say the supplied records do not establish a per-frame printing process. All twelve cited Art Institute records actually identify the collection object as a gelatin silver print (the Madison record: gelatin silver print on paper). Revise this to retain the documented print-medium fact while continuing to decline unsupported camera, exposure, negative, and darkroom claims.

### Advisory (non-blocking)

- **12-new-york-city-1974:** The `fence enclosure` `frame_in_frame` reads as an approximate crop rather than a bounded internal fence frame. A local fence contour or tighter structural annotation would teach the feature more clearly, but it still identifies the relevant fenced zone and does not independently block approval.

### Audit notes

- All twelve current proofs were visually checked against their current overlay specs and analysis data. The four previously resolved rounds remain resolved: the Mount Rushmore camera ellipse and New York 1974 lettering anchor are still correctly labeled; New York 1963's screened car remains an anchor rather than a vanishing point; Colorado still distinguishes the Kennedy portrait from the right-door notice; and New York 1964 retains only the true reflected-building band.
- Current non-strict overlay scores are at least 80, but the listed requirements are visual/semantic errors. Strict scoring corroborates the unsupported-line findings for 01, 04, and 12.
- The source audit confirmed all twelve Art Institute object IDs, titles, dates/print dates, artist, collection credits, non-public-domain status, IIIF image IDs, and individual fair-use rationales. The record-medium correction above is the only source/prose discrepancy found; no invented camera settings were found.

## Resolution — 2026-07-18

1. **01-new-york-city-1963-a:** removed the false full-width `door rail` line; the remaining door frame and passing-figure annotations make only claims that land on their named features. The regenerated proof was visually checked and scores 100/100.
2. **02-new-york-city-1963-b:** removed the nonexistent `fence opening` frame and revised the chapter to describe the uninterrupted mesh screen. The car remains a deliberately visual subject anchor, and the two real mesh diagonals remain. The regenerated proof was visually checked and scores 88.6/100.
3. **03-new-york-city-1964:** refit the sleeping-figure frame to the actual inset (`x=.58, y=.60, w=.18, h=.24`), while retaining only the local reflected-building band. The regenerated proof was visually checked and scores 100/100.
4. **04-new-york-city-1966:** removed the mislabeled `camera shadow` anchor and unsupported `street recession` line; the accurately placed ellipse now makes the sole, bounded claim about the coat and photographer's shadow. The regenerated proof was visually checked and scores 100/100.
5. **06-madison-wisconsin:** raised the framed-portrait box to its visible top edge and moved the oval right and up to the actual portrait oval. The regenerated proof was visually checked and scores 94/100 (88/100 strict).
6. **07-route-9w-new-york:** extended the rear-view-mirror frame to its actual right boundary near `x=.33`. The regenerated proof was visually checked and scores 94/100 (88/100 strict).
7. **08-colorado:** refit the left window-reflection frame to the continuous pane from the image edge through `x=.58`; the Kennedy portrait ellipse and right-door notice remain correctly distinct. The regenerated proof was visually checked and scores 100/100.
8. **10-mount-rushmore-south-dakota:** removed the misleading pane boxes rather than drawing through mullions. The retained ellipse remains precisely on the raised left tourist's camera. The regenerated proof was visually checked and scores 100/100.
9. **12-new-york-city-1974:** removed the two false full-width advertising lines and revised the chapter to leave those discontinuous edges unclaimed. The billboard-lettering anchor and fence enclosure remain. The regenerated proof was visually checked and scores 100/100.
10. **Record and technique statement:** research and the mirrored chapter now state the documented gelatin silver print medium for all twelve collection objects (with Madison's gelatin silver print on paper), while continuing to avoid unsupported camera, exposure, negative, and darkroom claims.

Re-verified every required fix from the complete critique history: round one (Mount Rushmore's ellipse remains on the raised left tourist camera; New York 1974's anchor remains billboard lettering rather than the statue); round two (New York 1963's car is a subject anchor, not a vanishing point; Colorado distinguishes the left-window Kennedy portrait from the right-door notice); round three (New York 1964 has no false full-width roofline or window seam); and the present ten-item round. All twelve overlays score at least 80 under the strict scorer (minimum 88), every affected regenerated proof passed a clean visual check, and the mirrored chapters remain byte-identical.
