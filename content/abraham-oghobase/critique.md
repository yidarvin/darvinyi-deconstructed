verdict: revise

## Critique round — 2026-08-02

### Required fixes

1. **`04-anatomy-of-landscape-jos-25` — false subject anchor and resulting prose claim.** The `RUSTED VESSEL` anchor at `(0.102, 0.527)` is visibly on the small left building/tree area, not on either rusted cylindrical vessel (roughly `x=0.16–0.40`, `y=0.63–0.82`). Move or relabel the anchor, and make the chapter’s statement that “The anchor stays on a vessel” match the repaired spec.

2. **`05-alloiosis-08` — false horizontal claim.** `SEATED FIGURE BREAK` is a full-width `horizon_line` at `y=0.702`, but it crosses the sitter’s lower body rather than tracing a visible horizontal division. Remove it or replace it with a primitive that follows an actual feature; revise the chapter’s corresponding “low break at y0.702” claim.

3. **`06-alloiosis-06` — diagram labels do not trace the diagram.** The `DRAWN CONVERGENCE` marker at `(0.412, 0.584)` lands on the sitter’s torso/lap, without visible technical-drawing lines converging there. `DRAWN STRUCTURE` likewise follows the sitter’s left contour for much of its run rather than a printed architectural edge. Remove or recast both claims, and do not retain the prose claim of a drawing convergence unless the repaired annotation supports it.

4. **`07-alloiosis-07` — false pivot and arc.** `DRAWN PIVOT` at `(0.347, 0.630)` and the straight `DIAGRAM ARC` line run in/through the sitter rather than a visible diagram convergence or arc. Replace them with claims that visibly trace the printed drawing, or remove them; the plate prose must then be brought into agreement with the repaired overlay.

5. **`09-metallurgical-practice-landscape-04` — specimen and pipe annotations are materially misplaced.** The `SPECIMEN PANEL` frame at `x=.590, y=.395, w=.270, h=.280` brackets blank sky/ground above the actual inset, whose visible panel runs substantially lower. The `DRAWN PIPE` line is also above the printed pipe rather than following it. Refit or remove these primitives.

6. **`11-colonial-self-portrait` — no internal frame exists where one is claimed.** The `frame_in_frame` labeled `ARCHIVAL PORTRAIT FIELD` is an arbitrary box over the photograph; it does not trace a visible interior frame or boundary. Replace it with a primitive grounded in a visible portrait feature, or remove it.

### Advisory (non-blocking)

- **`04-anatomy-of-landscape-jos-25`:** the `RAIL TRACK` leading line is a little broad of the visible rails at its lower end, though it still communicates the receding rail route.
- **`08-metallurgical-practice-landscape-01`:** `DRAWN BASELINE` is visually plausible but could be tightened to a more unmistakable machinery edge.
- **`10-metallurgical-practice-landscape-03`:** the three labels around the drawing center overlap enough to reduce readability; repositioning them would improve the proof without changing its claims.

### Review notes

All eleven proofs were visually checked against their source images, overlay specs, and analyzer records. The remaining overlay claims are materially defensible. Chapter dates, quoted analysis values, camera-metadata caveat, credits, source routes, and per-image four-factor fair-use records are traceable and consistent with the supplied records; no settings or source-integrity blocker was found.

## Builder resolution — 2026-08-02

Resolved all six required items from the 2026-08-02 critique round. Plates 04, 05, 06, 07, 09, and 11 were re-analyzed, re-rendered, visually checked, and scored respectively 94, 100, 100, 94, 94, and 100. The repair removes the false vessel anchor, the invented horizontal split, the false convergence/pivot claims, and the arbitrary internal frames; the chapter prose now states only the repaired overlay claims.

Critique history re-verified: 2026-08-02 (the sole prior round). Every required fix from that round remains satisfied in the current overlays, proofs, and byte-identical chapter files.

## Critique round — 2026-08-03

### Required fixes

1. **`05-alloiosis-08` through `11-colonial-self-portrait` — artist-site acquisition is no longer policy-compliant.** `sources.md` identifies `abrahamoghobase.com` as the acquisition route for these seven plates. Its current `robots.txt` disallows `GPTBot`, and the three cited collection pages each declare `<meta name="robots" content="noai, noimageai">`. That is a technical/robots restriction under the project contract, so the existing artist-site copies cannot remain the documented acquisition route. Re-source each retained plate from a permitted public authoritative record, or omit it; the four KADIST plates already satisfy the chapter minimum, so limited mode is not required.

2. **`03-anatomy-of-landscape-jos-21` — `RAISED LEDGE` traces the wrong horizontal.** The leading line at `y=.720→.695` crosses a mortar course well above the ledge that supports the reclining figure (near the lower edge of the proof). This is far outside the endpoint tolerance and makes the chapter’s claim that the raised ledge carries the eye to the figure materially false. Move the line to that actual ledge or remove the claim and revise the plate prose.

3. **`10-metallurgical-practice-landscape-03` — the claimed radial pivot is on the wrong feature.** `DRAWN RADIAL PIVOT` at `(.602,.416)` and `DRAWING CENTER` at `(.585,.419)` sit on the electrical substation. The visible origin of the printed radial diagram is roughly `(.51,.36)`, above and left of those marks. The analyzer’s detected vanishing point is not semantic evidence for this printed pivot. Reposition or relabel the primitives and keep the plate prose consistent with the repaired claim.

### Advisory (non-blocking)

- **`01-anatomy-of-landscape-jos-13`:** the `TREE TRUNK` and `UPWARD TRUNK` label boxes overlap. Both still identify the same visible trunk; deconflicting them would improve readability.
- **`09-metallurgical-practice-landscape-04`:** the anchor and frame both carry `SPECIMEN PANEL`, so their labels collide. The panel is correctly identified and framed; simplify or separate the labels if revising that proof.

### Review notes

All eleven current proofs were visually checked against their specs and analyzer records. The six fixes resolved in the 2026-08-02 round remain resolved; none is reopened here. All stated analyzer values, EXIF caveats, dates, titles, and the per-image four-factor fair-use writeups otherwise match the local records. The artist-site robots restriction and the two new semantic overlay mismatches above are the material blockers.
