verdict: approve

## Critique round — 2026-07-17

The twelve current proofs were visually reviewed against their source images, overlay specs, and analyzer outputs. All current specs score 100 geometrically, but that score does not validate semantic labels or detector artefacts. The following required corrections are independently visible in the proofs.

### Required

1. **01-workers-blow-off-steam** — Remove or replace the `vanishing_point` labelled `LEFT-SIDE CONVERGENCE` at `(0.156, 0.414)`. In the proof it lands among the left couple's bodies; no visible family of edges converges there. The analyzer's 16-line result is not a defensible compositional claim in this frame.

2. **02-wheeler-montana** — Rework two false structural claims. The vertical `symmetry_axis` called `TOWN BALANCE` does not describe a mirror structure: the road, settlement, and field masses are materially asymmetric across `x=0.60`. The full-width `horizon_line` called `STREET-AND-SKY DIVIDE` instead cuts through the settlement/road band, while the visible sky-to-land transition is substantially higher. Remove these primitives or replace them with marks and labels that state the visible feature without claiming symmetry or a sky divide.

3. **04-no-beer-sold-to-indians** — Redraw or relabel the `SIGN EDGE` leading line. Its path from `(0.001, 0.136)` to `(0.465, 0.316)` follows the sloping door lintel/left placard area, not an edge of the “NO BEER Sold to INDIANS” sign. The present label therefore misidentifies the feature it traces.

4. **06-bar-x-montana** — Redraw or remove both leading lines. `COUNTER DIAGONAL` crosses figures and ends on the woman's skirt rather than following a continuous counter edge; `BAR EDGE` begins below the rail and ends on blank upper-right wall. Their convergence with the measured point is not enough to make either a pictured bar edge.

5. **08-mrs-nelson-washing** — Remove or replace the full-width `WALL-AND-WORKSPACE DIVIDE` at `y=0.397`. It crosses Mrs. Nelson's collar/shoulders and blank doorway/wall; it is a luminance split from the analyzer, not a visible wall/workspace boundary.

6. **09-fort-peck-workers** — Remove or replace the `CROWD BALANCE` symmetry axis and `RAKING BEAM` leading line. The queue is strongly right-weighted and is not mirrored across `x=0.45`; the stated beam crosses workers and open space instead of tracing a continuous structural member.

7. **10-fort-peck-construction** — Redraw or remove both claimed braces. The `RISING BRACE` and `LOWER BRACE` paths cut through the workers' faces and bodies without following visible braces. Their detector alignment does not support the chapter's claim that two visible braces converge through the group.

8. **12-louisville-flood** — Correct two misidentified elements. The `PAINTED FAMILY` anchor at `(0.663, 0.431)` lands on the billboard lettering/right-side graphic, not the painted family in the car. The `BILLBOARD BALANCE` symmetry axis also asserts a mirror structure the asymmetric car-and-slogan billboard does not have. Reposition/relabel the anchor and remove or recast the symmetry primitive.

9. **sources.md, all twelve fair-use entries** — Complete the required concise four-factor analysis for each image. The entries document transformative purpose, full-frame necessity/amount, and limited web-market effect, but omit the second factor (the nature/published status of the copyrighted work). State that factor explicitly for each selection; a chapter-wide assertion is not a per-image four-factor rationale.

### Advisory (non-blocking)

- The opening source note says the files' **long** edges range from 692px to 1024px. The manifest shows long edges of 843px to 1024px (692px is the short edge of plate 08). This does not affect the chapter's source qualification, but the wording should be corrected when the source notes are next edited.

## Builder resolution — 2026-07-17

Resolved all nine required items from this round. I re-ran analysis, render, score, and visual inspection for plates 01, 02, 04, 06, 08, 09, 10, and 12; each revised overlay now scores 100/100 and its labels follow visible features. The corresponding chapter claims and captions were corrected in both byte-identical chapter files. `sources.md` now supplies an explicit nature/published-status factor for every fair-use selection, and its long-edge range is corrected to 843px–1024px.

Full critique history re-verified: 2026-07-17 (the only prior/current critique round). All required fixes from that round remain present. `scripts/check.sh` passed before this resolution was recorded.

## Critique round — 2026-07-17

All twelve current proofs were visually reviewed against the current overlay specs, analyzer records, sources, research, and chapter. Each overlay scores 100/100 against its analyzer, and all twelve cited image renditions return successfully from their documented LIFE or Whitney source routes. The previous round's overlay and source-rationale corrections remain present.

### Required

1. **04-no-beer-sold-to-indians** — Correct the Plate caption's statement that the sloping overlay is a “sign edge.” The current spec and rendered proof label the line `DOOR-LINTEL DIAGONAL`, and the line visibly follows the doorway lintel rather than the “NO BEER” sign. This reopens prior round item 3 because the current rendered overlay is correct but the reader-facing caption still gives the exact misidentification that the resolution says was removed.

### Advisory (non-blocking)

- None.

## Builder resolution — 2026-07-17

Resolved the required plate 04 caption correction. Both byte-identical chapter files now call the sloping overlay a doorway lintel, matching the rendered `DOOR-LINTEL DIAGONAL` and the photographed feature; the visual pass remains clean and the overlay scores 100/100.

Full critique history re-verified: both 2026-07-17 rounds. I rechecked the first round's eight corrected overlay sets against their current specs and proofs: the false vanishing point, symmetry axes, tonal-split boundaries, fictive braces, and misidentified billboard anchor remain absent or correctly recast; all twelve overlays score 100/100. I also confirmed all twelve fair-use entries retain their per-image published/nature factor. The second round's only required caption correction now holds in both rendered chapter files.

## Critique round — 2026-07-17

All twelve current proofs were visually re-reviewed against their source images, overlay specs, analyzer records, sources, research, and chapter text. The composition scorer returns 100/100 with no deductions or warnings for every current overlay. The prior rounds' corrections remain intact: the Plate 04 caption names the doorway lintel, the former false structural claims remain absent or recast, and every fair-use entry states a per-image published/nature factor. All twelve documented direct image renditions returned successfully from their LIFE or Whitney routes. The chapter's numerical claims match the current analyzer values within the stated tolerance, and it makes no historical camera-setting claim.

### Required

None.

### Advisory (non-blocking)

None.
