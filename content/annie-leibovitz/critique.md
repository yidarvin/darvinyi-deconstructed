verdict: resolved

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
