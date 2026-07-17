verdict: revise

## Critique round — 2026-07-17

### Required

1. **05-woman-fox-fur — correct the `DOG LEAD` primitive and its repeated prose claim.** In `proofs/05-woman-fox-fur.png`, the annotated straight segment from `(0.68, 0.53)` to `(0.37, 0.62)` does not trace the visible leash: the leash leaves the woman's hand farther left, curves down through the lower middle of the frame, and meets the dogs lower down. This is a semantic error, not a small endpoint margin. Replace it with a visually faithful polyline (or remove the lead claim) and make the caption/paragraph agree.

2. **09-rowe-twins — remove or correct the claimed paired center.** `overlays/09-rowe-twins.json` labels the vertical line at `x=0.45` `PAIRED CENTER`, and the chapter says that it falls between the twins. In `proofs/09-rowe-twins.png`, that line passes through the right sitter rather than between the two faces/figures. The analyzer's general mirror-correlation axis at `0.45` does not make it a truthful center for the pictured pair. Reposition and re-render the line to the actual paired center, or remove the symmetry-axis claim and revise the sentence.

3. **Document fair use fully for each image.** Each image entry identifies purpose/amount/market reasoning, but none states the second-factor reasoning about the nature/status of the specific work. Add a concise, per-image four-factor rationale for plates 01–10 (including the nature of the published historical photograph), rather than relying on the global assertion that the assessments cover all four factors.

4. **Repair the Getty research citation.** The Getty ULAN link in `sources.md` and relied on by `research.md` returns HTTP 400, so the asserted research context is not currently traceable. Replace it with a stable working ULAN record URL and retain the same source context.

### Advisory (non-blocking)

- Plates 01–04 and 06–10 otherwise have clear, limited three-primitive arguments; all ten current specs score 100 with the deterministic scorer. The score does not resolve the two visual-semantic issues above.
- The cited analyzer values in the chapter are within tolerance, and the chapter correctly declines to invent camera settings.
- The Art Institute record and public IIIF links trace all ten images; titles, dates, print status, and non-public-domain status checked against the current records agree with the source notes.
