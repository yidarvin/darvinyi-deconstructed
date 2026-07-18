verdict: revise

## Critique round — 2026-07-18

### Required fixes

1. `03-whoopi-goldberg`: The `face above the water` ellipse is centered substantially to the left of Goldberg’s visible face and encloses mostly empty bath water. Move or redraw it so that it actually traces the face; the chapter’s claim that the overlay holds the face otherwise misdescribes the proof.
2. `11-john-lennon-new-york`: The `jacket and guitar strap` polyline runs from Lennon’s face into the collar area rather than along the visible jacket/strap. Replace it with a line that follows the named feature, or remove the claim.
3. `11-john-lennon-new-york`: The `printed portrait border` frame is inset through the portrait rather than aligned to the photograph’s visible black printed border. Align the frame to that border or remove the primitive; as rendered, the label names a feature the box does not trace.

### Advisory (non-blocking)

- No advisory findings. The remaining proofs read cleanly at the chapter’s materially truthful standard. All eleven overlay specs score 100 with the deterministic scorer; this round’s required items are semantic visual-pass failures, not scorer regressions.

### Evidence checked

- Reviewed all eleven proof PNGs, their overlay specs, analyses, chapter, research, manifest, and source records.
- The quoted tonal, edge-density, and palette measurements match the analyzer values within the stated tolerance; camera and process data are explicitly disclaimed rather than invented.
- Each image has a public source record and an image-specific four-factor fair-use rationale. The linked Sotheby’s and High Museum records responded successfully during this review; the Hauser & Wirth corroboration rate-limited (429), a transient access response that does not make the primary Sotheby’s source untraceable.

## Builder resolution — 2026-07-18

- `03-whoopi-goldberg`: re-ran analysis, moved and resized the `face above the water` ellipse to trace Goldberg’s visible face, rendered a fresh proof, and confirmed a clean visual pass (score 100).
- `11-john-lennon-new-york`: re-ran analysis, replaced the face-crossing `jacket and guitar strap` path with a `guitar strap` path that follows the visible diagonal, aligned the border frame to the black printed edge, rendered a fresh proof, and confirmed a clean visual pass (score 100). The corresponding chapter wording now names only the strap.
- Source-note verification: corrected the Cindy Crawford setting to its visible outdoor foliage and snake, and replaced Patti Smith’s stale catalogue URL with the live Sotheby’s lot record (HTTP 200).
- Critique history re-verified: round dated 2026-07-18 (commit `169eee9`, the complete available history). All three required fixes hold in the current overlays, proofs, and chapter.
- Validation: `scripts/check.sh` passed; `content/annie-leibovitz/chapter.mdx` and `src/chapters/annie-leibovitz.mdx` are byte-identical.

## Critique round — 2026-07-18

### Required fixes

1. `05-r2-d2`: The `open crate` frame does not trace the visible open crate: its top brackets run through background above the crate, its left side begins inside the open door, and its right side cuts through the crate/R2-D2 area. The `crate center` axis at `x: 0.5` likewise falls at the door/interior seam rather than the open crate's center. Rebuild these claims around the actual crate geometry, or relabel/remove them.
2. `06-keith-haring`: The `all-over wall field` frame extends into the white scan margin above and below the photograph instead of tracing the pictured mural/wall field. Align it to that field or remove the boundary claim.
3. `09-bruce-springsteen`: The `backstage work table` frame brackets nearly the whole photograph, including equipment cases and the background. The visible paper-covered table is only the lower foreground. Align the primitive to the table or relabel it as the broader workspace.

### Advisory (non-blocking)

- `08-dan-aykroyd-john-belushi`: The `joined dark suits` polyline is a loose interpretive path through the paired figures rather than a continuous suit contour. It still conveys the intended paired mass, so it does not block approval.

### Evidence checked

- Reviewed every current proof PNG, overlay spec, analysis record, manifest, chapter, research note, and source record. The prior `03-whoopi-goldberg` and `11-john-lennon-new-york` fixes remain intact; this round raises no regression of those resolved items.
- All eleven overlays score 100/80 with the deterministic scorer. The chapter's measured luminance, edge-density, tonal-spread, and palette statements match the analyzer values within tolerance; it does not invent camera or process settings.
- Every primary Sotheby's source returned HTTP 200 during this review. The Hauser & Wirth Patti Smith corroboration returned HTTP 429, a transient response that does not affect the traceable primary Sotheby's source or its documented per-image fair-use rationale.

## Builder resolution — 2026-07-18

- `05-r2-d2`: re-ran analysis, removed the misleading `crate center` axis, and rebuilt the `open crate` frame around the visible right-hand crate bay. The fresh proof cleanly follows its top, side, and bottom edges (score 100).
- `06-keith-haring`: re-ran analysis and moved the `all-over wall field` frame from the white scan margins to the pictured mural's printed boundary. The fresh proof is visually clean (score 100).
- `09-bruce-springsteen`: re-ran analysis and restricted the frame to the lower `paper-covered table`, rather than calling the broader workspace a table. The fresh proof is visually clean (score 100).
- Corresponding chapter language now describes the open right-hand crate, mural boundary, and paper-covered foreground table without carrying forward the removed axis or broader-frame claims.
- Critique history re-verified: the required fixes from round `169eee9` (2026-07-18: Goldberg face; Lennon strap and printed border) and round `926ca62` (2026-07-18: R2-D2 crate; Haring wall field; Springsteen table) all hold in the current overlays, proofs, and chapter. The prior Goldberg and Lennon proofs received a fresh visual verification; all eleven current overlay specs score 100/80.
- Validation: `scripts/check.sh` passed; `content/annie-leibovitz/chapter.mdx` and `src/chapters/annie-leibovitz.mdx` are byte-identical.

## Critique round — 2026-07-18

### Required fixes

1. `02-john-lennon-yoko-ono`: The `joined heads` subject anchor is centered on the raised hand/hair above the pair, not on Lennon’s and Ono’s faces. The analyzer’s saliency peak at `(0.429, 0.211)` explains the placement, but it is not semantic evidence for the label. Move the anchor to the joined heads or relabel/remove it; the chapter currently calls this a head anchor and the proof does not support that claim.

### Advisory (non-blocking)

- No additional advisory findings. The previously resolved `03-whoopi-goldberg`, `05-r2-d2`, `06-keith-haring`, `09-bruce-springsteen`, and `11-john-lennon-new-york` items remain materially corrected in the current proofs and specs.

### Evidence checked

- Visually reviewed all eleven current proof PNGs against their overlay specs and analyzer records. All specs score 100/80 with no deterministic deductions or warnings; the Lennon–Ono defect is a semantic visual-pass failure.
- The chapter’s stated mean luminance, edge-density, tonal-spread, and palette measurements match the current analyzer outputs within tolerance. It disclaims unavailable camera and process settings rather than inventing them.
- Every listed Sotheby’s primary source returned HTTP 200 during this review. Each image has a traceable credit and an image-specific four-factor fair-use rationale; this is not a limited-source chapter.
