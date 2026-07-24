verdict: resolved

## Critique round — 2026-07-24

### Required

1. **03-last-supper — `left table diagonal` traces the wrong feature.** The teal leading line runs from the lower-left foreground across a seated figure to the central figure's head; it does not follow a visible edge of the table. This makes the overlay's claimed table structure materially misleading. Replace it with a line that follows an actual table edge, or remove the primitive and revise the matching chapter sentence if necessary.

### Advisory (non-blocking)

None.

### Review evidence

All twelve current proof PNGs were visually reviewed against their overlay specs and analyzer JSON. Every deterministic overlay score is 100/100. Chapter tonal, palette, and geometry values agree with the analyzer within the stated tolerance. The twelve official-record and public display-image source URLs returned HTTP 200; every image has a credited, linked per-image fair-use rationale, and the research text confines camera information to file-level embedded metadata.

## Resolution — 2026-07-24

1. Removed `03-last-supper`'s unsupported `left table diagonal`, regenerated the proof, and revised the matching plate caption and prose in both byte-identical chapter files. The retained table edge follows the visible front tabletop; the remaining convergence and balance claims are unchanged.
2. Re-verified critique round 2026-07-24 in full. Its sole required fix remains satisfied: no overlay primitive or chapter sentence now claims that the foreground diagonal is a table edge.

The revised overlay scores 100/100 in both standard and strict scoring, has a clean visual pass, and `scripts/check.sh` passes.

## Critique round — 2026-07-24

### Required

1. **01-deluge — `right-hand rescue cluster` marks the wrong subject.** The `subject_anchor` at `(0.992, 0.966)` lands on a tiny, frame-clipped lower-right highlight/object rather than the visible rescuers at right. Retarget it to the actual rescue group or relabel it to the feature it reaches.

2. **02-intercession — `group balance` is not a symmetry axis.** The `symmetry_axis` at `x=0.4` cuts through the central figure, while the poster wall and woman at left are counterweighted by officers and street space at right; they do not mirror. Remove or replace this primitive with a truthful, non-mirroring claim.

3. **04-loaves-fishes — `crowd balance` is not a symmetry axis.** The left-side figures and right-side counter/workers make a deliberate counterweight, not reflection across `x=0.512`. Remove or replace the `symmetry_axis` primitive.

4. **05-anointing — `ceremonial balance` makes an unsupported mirror claim.** The reclining figure and dark appliance at left do not mirror the seated figure and cabinetry at right across `x=0.512`. Remove or replace the `symmetry_axis` primitive; the chapter may still discuss imbalance without a symmetry primitive.

5. **05-anointing — `floor threshold` does not trace a visible threshold.** The `horizon_line` at `y=0.774` crosses open floor and the figures rather than a continuous floor boundary. Remove it or replace it with a primitive that follows an actual visible structural edge.

6. **06-late-summer — three primitives overstate unsupported structure.** The `symmetry_axis` at `x=0.5` labels an asymmetric skull/fruit/floral arrangement as a mirror; the `rising flower stem` leading line crosses disconnected flowers rather than one stem; and the `tabletop edge` line at `y=0.732` crosses the still-life objects rather than a visible tabletop edge. Remove or replace each with a primitive that traces the named feature, then revise the matching prose as needed.

7. **08-the-lovers — `central floral pivot` is not a vanishing point.** The marker at `(0.546, 0.547)` is a floral focal area, not the convergence of perspectival diagonals required by `vanishing_point`. Replace it with an appropriate focal/subject primitive or remove it.

8. **09-land-scape-pacific-sunset — `right foreground detail` does not identify a coherent subject.** The anchor at `(0.648, 0.989)` targets a clipped bottom-edge highlight rather than a readable foreground detail. Remove it or retarget a real subject.

9. **11-land-scape-luna-park — two labels claim features absent from the frame.** The refinery is not mirror-structured around `x=0.562`, so `tower-field balance` cannot use `symmetry_axis`; and the `lower shoreline` line at `y=0.761`, `-4°` passes through the industrial assemblage rather than a visible shoreline. Remove or replace both with primitives that trace actual features.

10. **12-gas-shell — `pump stage` is not a frame-in-frame.** The rectangular box cuts through open canopy/foliage instead of following a real internal architectural frame or the pump supports. Replace it with a primitive that traces the actual structure.

### Advisory (non-blocking)

- **01-deluge:** `flooded lateral route` is a broad interpretive route through water and figures rather than a single continuous edge. Its label remains understandable, but tightening it to a continuous route would improve clarity.
- **04-loaves-fishes:** `sidewalk recession` is visually understandable but could name the pictured shop-floor/interior recession more precisely.
- **09-land-scape-pacific-sunset** and **12-gas-shell:** each uses only two primitives. The retained claims are useful; adding a third is optional if it can be truthful and clarifying, not merely an inventory.

### Review evidence

All twelve current proof PNGs were visually reviewed against their overlay JSON and analyzer output, including an independent fresh-eyes pass for each proof group. Every deterministic score is 100/100, but the listed findings are semantic failures that the scorer cannot measure. The resolved 2026-07-24 `03-last-supper` table-edge finding remains resolved: the current line follows the visible front tabletop, and no earlier cosmetic issue was reopened. Chapter geometry, tonal, and palette figures are within the stated tolerance of the analyzer. All twelve artist-record URLs returned HTTP 200; each image has a credited, linked fair-use record with a per-image application of the documented four-factor rationale. No undocumented camera settings or source-integrity defect was found.

## Resolution — 2026-07-24

1. `01-deluge`: replaced the clipped lower-right saliency anchor with an ellipse that encloses the visible rescue group at right.
2. `02-intercession` and `04-loaves-fishes`: removed the unsupported symmetry-axis claims; their remaining overlays describe the actual recession, arms, storefront band, and figure cluster.
3. `05-anointing`: replaced the false floor threshold and mirror claim with the continuous kitchen-counter edge; revised the caption and prose accordingly.
4. `06-late-summer`: replaced the false mirror, disconnected stem, and tabletop claims with a central flower mass and the visible hanging tulip stems; revised the matching caption and prose.
5. `08-the-lovers`: replaced the false vanishing point with a central floral-cluster ellipse.
6. `09-land-scape-pacific-sunset`: removed the clipped foreground subject anchor and its matching prose claim.
7. `11-land-scape-luna-park`: removed the unsupported shoreline and mirror-axis claims; revised the matching caption and prose.
8. `12-gas-shell`: replaced the false frame-in-frame with an ellipse enclosing the actual pump bank; revised the matching caption and prose.
9. Re-verified both prior critique rounds from 2026-07-24. The `03-last-supper` resolution remains intact: no overlay primitive or chapter text calls the foreground diagonal a table edge, and the retained line follows the visible front tabletop.

All nine affected overlays were freshly analyzed, rendered, visually inspected, and scored 100/100 in both standard and strict mode. The two chapter copies are byte-identical.
