verdict: resolved

Reviewed 2026-07-10 against all 12 proofs, overlay specs, analysis JSONs, chapter.mdx, sources.md, research.md. The strongest pedagogy of the batch — the pyramid/flat-wall/road triad is the right reading and 9 of 12 overlays land. Three overlays have primitives that miss their subjects outright, and the chapter makes two false claims about the measurements it leans on.

## Required fixes

1. **05-woman-high-plains — FACE ellipse rings her neck, not her face.** At (cx 0.60, cy 0.33) the ellipse encloses throat, hair edge, and upper chest down to the dress neckline; the face occupies ~x 0.46–0.59, y 0.22–0.33 (center ≈ 0.53, 0.28). Recenter. ARM TO BROW starts in empty sky at (0.29, 0.50), left of her torso — start it on the elbow (~0.23, 0.38) or the forearm itself.
2. **06-filipinos-cutting-lettuce — BENT BACKS misses the backs.** The right half of the polyline (vertices at x 0.65/0.75/0.87, y ≈ 0.41) runs through the background workers' hands and the lettuce rows, 0.10–0.13 below their actual back apexes (~y 0.27–0.31, breaking the skyline). Re-seat those vertices on the backs. CUTTING LETTUCE anchors a lettuce head ~0.13 from the nearest hands — relabel (LETTUCE) or move to a cutter's hands.
3. **10-family-walking-highway — LEFT ROAD EDGE traces nothing.** It starts at (0, 0.60) inside the black film rebate, crosses the gravel shoulder at far too shallow an angle, passes through the walking boy, and ends beside the mother's head in mid-road. Trace the actual grass/gravel boundary.
4. **chapter.mdx, 02-damaged-child — false superlative.** "Vertical symmetry here is the highest in the chapter at 0.91" — the analysis files give 06 = 0.924, 03 = 0.916, 10 = 0.913, all above 02's 0.908. Drop or rewrite the claim.
5. **chapter.mdx, 01-migrant-mother — a saliency artifact dressed as composition.** "The subject anchor lands high in the frame at y equals 0.24, on her face and the hand at her chin" — the measured anchor is (x 0.0, y 0.242), the extreme left edge of the frame, nowhere near face or hand. Don't launder a bad measurement into a compositional fact; cite the overlay's face/hand primitives instead.
6. **chapter.mdx, 02 — direction reversed.** The wall seam / measured horizon (y 0.43) passes just *below* her eyes (~y 0.39–0.40), at nose level — not "just above the child's eyes." sources.md repeats the error; fix both.
7. **chapter.mdx, 08 — "planter" vs overseer.** Body text and caption twice promote him to "planter" (an owner); the LOC caption and the plate label say plantation *overseer*, an employee. Different social role — keep the documented one.
8. **11-mochida — FAMILY NAME ON THE LUGGAGE floats above the names.** The first two vertices (y 0.87, 0.85) sit on bag tops/handles, 4–6% above the stenciled "Mochida" (~y 0.90–0.92); only the last vertex lands. Drop the early vertices onto the lettering.

## Advisory (non-blocking)

- 04-tractored-out: the −2.8° HORIZON fit overshoots ~2% at frame right; the PLOW FURROW chord crosses its furrow trough (endpoints ~5% off on opposite sides). The FURROWS CONVERGE point itself is defensible (8-line, full-confidence fit; the crests visibly pinch there).
- 01: PYRAMID legs schematize rather than trace — the left leg bisects the left child's head, the right child falls outside; acceptable as schema, tighten if revisited.
- 09: "THE HANDS" — only one hand is visible (the other is hidden by the sleeve); singular label would be honest.
- 07: TENT brackets delimit only the dark doorway slice of a tent twice that width; BOY anchor sits on his chest rather than face.
- 03: ON FOOT ellipse clips the second walker's bedroll/hat; slightly wider rx would fix.

Settings honesty: clean. The Callout's Graflex Series D / Rolleiflex / thumb-retouch facts are supported by research.md, and no per-frame values are invented. Rights basis (FSA/WRA federal work) is sound and carefully scoped.
