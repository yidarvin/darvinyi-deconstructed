verdict: revise

## Critique round — 2026-07-19

### Required

1. **06-winding-towers-belgium-france, 07-gas-holders-telescoping, 08-gas-holders-spherical, 09-gas-holders-germany-united-kingdom, 10-cooling-towers-germany, and 11-coal-mine-tipples-pennsylvania — central column gutter is not a gutter.** Each overlay specifies a vertical `polyline` at `x: 0.5` with the label `central column gutter`. In the rendered three-by-three proofs, that line runs through the middle photograph in every row, rather than through either white inter-column gap. This contradicts both the label and the chapter's claim that the overlays mark actual gutters, and materially misidentifies the compositional feature. Move the line to a genuine inter-column gutter (about `x: 0.34` or `x: 0.66`, then render and visually verify) and label it accordingly; alternatively remove it if one vertical gutter is not pedagogically needed.

### Advisory (non-blocking)

None.

### Review evidence

- All ten current proof PNGs were visually checked against their overlay specifications. The fields and horizontal gutter claims are visually supported; the required issue above is confined to the vertical `x: 0.5` polylines in the six three-column layouts.
- Chapter tonal and palette figures match their corresponding analyzer JSON values within the stated tolerance. The chapter explicitly declines to infer camera settings, and the visible descriptions agree with the proofs.
- Each source entry supplies a collection record, a direct publicly served rendition, credit, and a concise per-image four-factor fair-use rationale. The direct rendition URLs resolved publicly during this review; no access-control concern was found.
- The deterministic overlay scorer returns 100 for each spec, but it does not semantically verify `polyline` claims; the visual proof review catches the mislabeled lines.
