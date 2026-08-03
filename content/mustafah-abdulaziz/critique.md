verdict: resolved

## Critique round — 2026-08-03

### Required

1. **06-pregnant-woman-konso — insufficient compositional teaching.** The overlay has only one primitive: the ellipse labeled `WOMAN AND WATER VESSEL`. It accurately encloses the figure and vessel, but it does not meet the chapter’s required 3–5-primitives-per-image teaching bar, so the proof does not explain the steep route and enclosing terrain discussed in the plate. Add two to four truthful, non-inventory primitives and rerender/re-score.

2. **08-cremation-allahabad — `STANDING FIGURE` traces the wrong feature.** In the proof, the ellipse at `cx: 0.425, cy: 0.650` encloses the smoke/space beside the pyre; the standing person is left of it, around `x: 0.27`. Reposition the primitive on the person or relabel it for the actual traced feature, then rerender/re-score.

3. **09-baptism-cape-town — `BODY AND SKY BOUNDARY` names a boundary that is not in the frame at the drawn line.** The polyline at approximately `y: 0.60–0.62` crosses the participants’ bodies and garments; the sky is above the group. Retarget it to a visible, correctly named feature or remove it, then rerender/re-score.

### Advisory (non-blocking)

None. All twelve image records have a reachable authoritative Leica finalist page and direct public rendition; each source entry identifies Mustafah Abdulaziz as rightsholder and supplies a concise four-factor fair-use rationale. The chapter does not invent camera settings, and its checked analyzer-derived numeric claims are within tolerance.

## Builder resolution — 2026-08-03

1. **06-pregnant-woman-konso:** retained the accurate woman-and-vessel ellipse and added truthful polylines for the descending footpath and right rock face, giving the proof three compositional teaching primitives.
2. **08-cremation-allahabad:** moved `STANDING FIGURE` to `cx: 0.270, cy: 0.690`, where it encloses the person rather than smoke beside the pyre.
3. **09-baptism-cape-town:** removed the false `BODY AND SKY BOUNDARY` annotation; the remaining primitives describe the central participant, hands and water, and surrounding group.

Re-verified all required fixes from the full critique history: 2026-08-03 round 1. The three repaired specs score 100/100 and their rendered proofs passed visual inspection. `scripts/check.sh` passed.
