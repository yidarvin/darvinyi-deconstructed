verdict: approve

## Critique round — 2026-07-19

### Required

1. **02-waitress-bezuidenhout-park — redraw or remove `CHAIR DIAGONAL`.** The leading-line path `(0.395, 0.85) → (0.521, 0.353)` crosses the waitress's dress and torso and ends on blank wall; it does not trace either foreground chair. The current label therefore names a feature the proof does not show.
2. **05-woman-in-parlour-bezuidenhout — correct or remove `WALL-CEILING BAND`.** The horizontal line at `y: 0.35` runs through uninterrupted wall. The visible wall/ceiling boundary is substantially higher in the frame, so the line makes a false structural claim.
3. **08-watchman-balnagask-court — correct or remove `PAVEMENT BAND`.** The line at `y: 0.873` runs through the watchman's shoes and pavement without tracing a continuous horizontal band. It is not a visible compositional division.
4. **09-woman-shopping-hillbrow — replace the `symmetry_axis` primitive.** A `symmetry_axis` claims that the frame mirrors across `x: 0.525`, but the proof is markedly asymmetric: dark shopfront at left and the shopping bag/right field at right. This also conflicts with the chapter's explicit description of the frame's asymmetry. A facial-center annotation must use a primitive that does not claim frame symmetry.
5. **10-young-men-dompas-white-city — move the `DOMPAS` ellipse to the identity book.** The current ellipse (`cx: 0.47`, `cy: 0.68`) encloses the younger sitter's shirt pocket/forearm; the visible document is lower-right, held at approximately `x: 0.55–0.69`, `y: 0.76–0.89`.
6. **10-young-men-dompas-white-city — redraw or remove `LINKED ARMS`.** Its path terminates on the younger sitter's shirt/pocket rather than following the visible arm-and-hand chain to the document. This contradicts the chapter's stated route from faces and hands to the dompas.

### Advisory (non-blocking)

- The deterministic scorer reports 100/100 for every current spec. Its result supports coordinate validity but does not resolve the semantic failures above; no other material overlay, source, provenance, numeric, or camera-settings issue was found in this round.

## Builder resolution — 2026-07-19

Re-verified critique history: **2026-07-19, round 1** (the complete history for this slug).

1. Removed the unsupported `CHAIR DIAGONAL`; the waitress proof now limits its claim to the figure, lattice rail, and room structure (score 100).
2. Replaced the false mid-wall line with a polyline that follows the visible high `WALL-CEILING BOUNDARY` (score 100).
3. Removed the false `PAVEMENT BAND` and changed the watchman annotation from a claimed frame-symmetry axis to the visible figure spine and cane (score 94; the cane is visually verified despite the analyzer's non-blocking edge warning).
4. Removed the shopping portrait's `symmetry_axis`; the face ellipse remains and the prose now describes the frame's asymmetry without contradiction (score 100).
5. Moved the `DOMPAS` ellipse to the held identity book at lower right (score 97).
6. Removed the unsupported `LINKED ARMS` route; separate face and document annotations now support the chapter's revised descending attention claim (score 97; the scorer's three-ellipse warning is non-blocking and all three bounds are visually verified).

All affected proofs were re-analyzed, rendered, visually checked, and scored at or above 80. `scripts/check.sh` completed with `CHECK OK`; the mirrored chapter files are byte-identical.

## Critique round — 2026-07-19

### Required

None. All eleven current proofs were inspected against their current overlay specs and analysis files. The six required findings from the preceding round remain resolved: the unsupported waitress and watchman bands/diagonals are gone; the parlour boundary now follows the visible ceiling line; the shopping portrait no longer claims frame symmetry; and the dompas, faces, and described descending attention route now match the visible held document. Every spec scores at least 94/100 (the chapter's acceptance threshold is 80), and the chapter's reported tonal, edge-density, symmetry, size, source, and no-settings claims agree with the current records.

### Advisory (non-blocking)

- **08-watchman-balnagask-court:** the deterministic scorer's 94/100 result retains a non-blocking warning that the vertical `CANE` line does not coincide with a detected edge. Visual inspection confirms that it traces the visible cane; no change is required.
- **10-young-men-dompas-white-city:** the scorer's 97/100 output warns that three ellipses are usually more than necessary. Here they accurately distinguish the two faces from the held dompas and support the chapter's stated chain of attention; this is pedagogically justified, not a blocking defect.

The publicly accessible LensCulture project identifies all eleven displayed works with the stated titles, dates, and © David Goldblatt credit, and each linked public rendition was reachable as a JPEG during this review. The individual fair-use entries contain the required four-factor rationale. No camera settings are asserted.
