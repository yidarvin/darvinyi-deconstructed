verdict: revise

## Critique round — 2026-07-24

### Required fixes

1. **08-dark-hall-ii — remove or replace the `symmetry_axis` primitive labelled “DARK FIELD BALANCE.”** The proof shows an asymmetric space: a near-black mass occupies the left while the receding wall and open floor release occupy the right. No mirrored structure exists across x=0.375, so this primitive’s symmetry claim misstates the image. Retain only primitives that trace the visible shadow threshold and actual wall/floor boundaries.
2. **09-stair — correct or remove the `symmetry_axis` labelled “FIXTURE AXIS.”** Its x=0.625 line sits materially left of the circular fixture’s visible centre and the `subject_anchor`/ellipse centre at x≈0.680 (a 0.055 normalized offset, beyond the 0.03 tolerance). It therefore does not trace the fixture axis it names.
3. **10-co — remove or replace the `symmetry_axis` primitive labelled “CROPPED CORNER BALANCE.”** The proof contains a single diagonal ceiling corner and an off-centre wall junction, not a mirrored arrangement across x=0.625. A symmetry-axis annotation therefore claims a structure not present in the frame.

### Advisory (non-blocking)

- All ten current overlay specs score 100/100 against their paired analyzer JSON. The remaining line, frame, anchor, ellipse, and tonal claims were visually consistent with the proofs, and all chapter statistics match the analyzer within the stated rounding tolerance.
- Every supplied artist-site image URL returned a public JPEG response at review; each source entry includes a traceable link, credit/rights notice, and concise four-factor fair-use rationale. No invented camera settings or unsupported limited-mode claims were found.
