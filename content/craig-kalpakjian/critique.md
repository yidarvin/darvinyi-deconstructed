verdict: resolved

## Critique round — 2026-07-24

### Required fixes

1. **08-dark-hall-ii — remove or replace the `symmetry_axis` primitive labelled “DARK FIELD BALANCE.”** The proof shows an asymmetric space: a near-black mass occupies the left while the receding wall and open floor release occupy the right. No mirrored structure exists across x=0.375, so this primitive’s symmetry claim misstates the image. Retain only primitives that trace the visible shadow threshold and actual wall/floor boundaries.
2. **09-stair — correct or remove the `symmetry_axis` labelled “FIXTURE AXIS.”** Its x=0.625 line sits materially left of the circular fixture’s visible centre and the `subject_anchor`/ellipse centre at x≈0.680 (a 0.055 normalized offset, beyond the 0.03 tolerance). It therefore does not trace the fixture axis it names.
3. **10-co — remove or replace the `symmetry_axis` primitive labelled “CROPPED CORNER BALANCE.”** The proof contains a single diagonal ceiling corner and an off-centre wall junction, not a mirrored arrangement across x=0.625. A symmetry-axis annotation therefore claims a structure not present in the frame.

### Advisory (non-blocking)

- All ten current overlay specs score 100/100 against their paired analyzer JSON. The remaining line, frame, anchor, ellipse, and tonal claims were visually consistent with the proofs, and all chapter statistics match the analyzer within the stated rounding tolerance.
- Every supplied artist-site image URL returned a public JPEG response at review; each source entry includes a traceable link, credit/rights notice, and concise four-factor fair-use rationale. No invented camera settings or unsupported limited-mode claims were found.

## Builder resolution — 2026-07-24

1. **08-dark-hall-ii:** Removed the false `symmetry_axis` claim. The refreshed proof now retains only the shadow threshold plus the visible receding wall and floor-edge boundaries.
2. **09-stair:** Removed the misaligned `symmetry_axis`; the round fixture remains located by its aligned `subject_anchor` and ellipse.
3. **10-co:** Removed the false `symmetry_axis`; the proof now limits its claim to the measured low wall seam and visible ceiling-corner diagonal.

Each refreshed overlay was rendered, visually checked, and scored 100/100 against its paired analysis JSON. Re-verified critique history: round dated 2026-07-24 (the only prior round); all three required fixes hold in the current overlays and proofs.

## Critique round — 2026-07-24

### Required fixes

1. **05-monitor — remove or replace the `horizon_line` labelled “CEILING-PANEL REGISTER.”** The horizontal line at y=0.298 crosses the upper portion of the reflective dome and unrelated diagonal ceiling-tile joints; no horizontal ceiling-panel register occupies that path. The analyzer’s luminance split is geometrically valid, but the current label makes a false architectural claim in the proof. Retain only an annotation that traces a visible panel edge or omit this primitive.

### Advisory (non-blocking)

- **02-hallway:** “NESTED DOORWAY” and “LIT THRESHOLD” labels are tightly stacked above the opening, though both remain legible and their geometry is truthful.
- All ten specs score 100/100 against their paired analyses. The earlier required-fix round remains resolved: 08 has no symmetry-axis claim, 09’s fixture is located by its aligned anchor and ellipse, and 10 has no symmetry-axis claim. All ten artist-site display-image URLs returned public JPEG responses during this review; each source entry retains a traceable link, rights notice, and per-image four-factor fair-use rationale. No camera data or limited-mode claims were invented.

## Builder resolution — 2026-07-24

1. **05-monitor:** Removed the false `horizon_line` claim labelled “CEILING-PANEL REGISTER.” The refreshed proof retains only the visible diagonal ceiling seam, the measured dome axis, and the reflective-dome ellipse; it no longer treats the analyzer’s luminance split as an architectural panel edge.

The refreshed `05-monitor` overlay was rendered, visually checked, and scored 100/100 against its paired analysis JSON. Re-verified critique history: the first 2026-07-24 critique round (08-dark-hall-ii, 09-stair, and 10-co) and this 2026-07-24 round (05-monitor). The three earlier proofs retain no symmetry-axis claim, and the current proof retains no false horizontal ceiling-panel claim.
