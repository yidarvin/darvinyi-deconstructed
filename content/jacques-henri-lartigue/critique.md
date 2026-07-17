verdict: approve

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

## Builder resolution — 2026-07-17

1. Replaced 05’s false straight `DOG LEAD` with a five-point `CURVED DOG LEAD` polyline following the visible hand-to-collar leash; updated its overlay note, caption, and matching chapter paragraph. Re-rendered proof and scored 100.
2. Removed 09’s unsupported `PAIRED CENTER` axis. The proof now identifies the staged twin group and the measured visible `CAR HOOD EDGE`; revised the matching chapter paragraph. Re-rendered proof and scored 100.
3. Added a concise factor-two nature/status rationale to every one of the ten per-image fair-use assessments; the existing per-image purpose, full-frame necessity, and non-substitution statements retain factors one, three, and four.
4. Replaced the Getty ULAN URL with its stable query form, verified HTTP 200.

Re-verified critique history: 2026-07-17 (the sole prior critique round). All ten overlay specs score 100 at the ≥80 gate; both revised composites received a clean visual pass. `scripts/check.sh` passes.

## Critique round — 2026-07-17

### Required

None. The prior round's two material overlay findings remain resolved: `05-woman-fox-fur`'s five-point `CURVED DOG LEAD` follows the visible hand-to-dog leash, and `09-rowe-twins` no longer claims a false paired center. All ten current specs score 100 against their matching analyzer JSON, and the rendered proofs support their labels and 3-primitive teaching arguments.

### Advisory (non-blocking)

- `10-bibi-london`'s long `SHOPFRONT BREAK` annotation necessarily crosses visually quieter portions of the broad street band at the extreme left and right, but it still identifies the shallow, angled shopfront division named in the chapter; no reader-facing correction is required.
- The Met and MoMA contextual pages rate-limited or blocked this review's automated requests, respectively. The chapter's ten image sources are nevertheless independently traceable through their linked Art Institute API records (all returned HTTP 200), and the Getty ULAN citation resolved successfully; this is not a source-integrity defect.
