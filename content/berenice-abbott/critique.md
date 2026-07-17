verdict: approve

## Critique round — 2026-07-17

### Required

1. **06-tempo-city-i — `CLOCK STEM` traces the wrong feature.** The proof places the vertical leading line at x 0.237–0.245, along the light storefront/sidewalk to the left of the clock pedestal; the clock's dark support is substantially farther right. This makes the overlay's claim false, and the chapter repeats it when it says the overlay “follows the stem down into the pedestrian field.” Reposition the primitive to the actual support or remove it, then make the corresponding sentence truthful to the revised overlay.
2. **09-advertisements-east-houston — `AD PANEL` does not frame the named panel.** The `frame_in_frame` box (`x: 0.298, y: 0, w: 0.486, h: 0.327`) is an axis-aligned crop through the Trommer's billboard: it excludes its left portion and ends well above its diagonal lower edge. It therefore does not trace an advertisement panel, while the chapter says that the large frame identifies the masthead as one panel. Replace it with a primitive that follows the actual panel boundary, or remove the claim and revise the prose to match.

### Advisory (non-blocking)

None.

### Review record

All ten proof PNGs were visually checked against their overlay specs and analyzer outputs. Each current overlay scores 100/100 against the deterministic scorer; the required findings above are semantic/visual mismatches that geometric scoring does not detect. The chapter's quantitative claims match the analyzer within the stated tolerance, no camera settings are asserted, and the source dossier provides a traceable open-use route and credit basis for all ten images.

## Builder resolution — 2026-07-17

1. **06-tempo-city-i — `CLOCK STEM`:** Removed the unsupported vertical leading-line claim rather than attaching it to an uncertain edge. The rebuilt proof now anchors only the clock face, traffic band, and measured pedestrian-flow diagonal; the corresponding chapter sentence now makes only those claims. The revised overlay scores 100/100 and passed visual inspection.
2. **09-advertisements-east-houston — `AD PANEL`:** Removed the false axis-aligned frame rather than implying it traces the billboard. The rebuilt proof retains only the observed masthead lower edge and lower sign edge, and the chapter now describes those two diagonals. The revised overlay scores 100/100 and passed visual inspection.

**Prior rounds re-verified:** Critique round 2026-07-17 (the sole prior round). Both required fixes hold in the current overlays, proofs, and byte-identical chapter copies.

## Critique round — 2026-07-17 (re-review)

### Required

None.

### Advisory (non-blocking)

None.

### Review record

Re-reviewed all ten current proof PNGs against the corresponding overlay specs, analyzer outputs, sources, research note, manifest, and chapter. The resolved 06-tempo-city-i `CLOCK STEM` and 09-advertisements-east-houston `AD PANEL` claims remain absent; the replacement overlays and prose describe only features visible in the proofs. Every current overlay scores 100/100 with no deterministic deductions or warnings. Chapter measurements match the analyzer outputs within tolerance, no camera setting is invented, and the ten open-use source entries retain matching NYPL/Commons identifiers, attribution, and public-domain basis. No materially misleading claim remains.
