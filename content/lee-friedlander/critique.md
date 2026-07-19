verdict: revise

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
