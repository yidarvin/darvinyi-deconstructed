verdict: revise

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
