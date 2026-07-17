verdict: revise

## Critique round — 2026-07-17

### Required

1. **06-tempo-city-i — `CLOCK STEM` traces the wrong feature.** The proof places the vertical leading line at x 0.237–0.245, along the light storefront/sidewalk to the left of the clock pedestal; the clock's dark support is substantially farther right. This makes the overlay's claim false, and the chapter repeats it when it says the overlay “follows the stem down into the pedestrian field.” Reposition the primitive to the actual support or remove it, then make the corresponding sentence truthful to the revised overlay.
2. **09-advertisements-east-houston — `AD PANEL` does not frame the named panel.** The `frame_in_frame` box (`x: 0.298, y: 0, w: 0.486, h: 0.327`) is an axis-aligned crop through the Trommer's billboard: it excludes its left portion and ends well above its diagonal lower edge. It therefore does not trace an advertisement panel, while the chapter says that the large frame identifies the masthead as one panel. Replace it with a primitive that follows the actual panel boundary, or remove the claim and revise the prose to match.

### Advisory (non-blocking)

None.

### Review record

All ten proof PNGs were visually checked against their overlay specs and analyzer outputs. Each current overlay scores 100/100 against the deterministic scorer; the required findings above are semantic/visual mismatches that geometric scoring does not detect. The chapter's quantitative claims match the analyzer within the stated tolerance, no camera settings are asserted, and the source dossier provides a traceable open-use route and credit basis for all ten images.
