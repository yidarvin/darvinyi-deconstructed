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

## Critique round — 2026-08-03

### Required

1. **06-pregnant-woman-konso — `DESCENDING FOOTPATH` ends on the woman rather than the footpath.** The final segment from `(0.480, 0.720)` to `(0.510, 0.570)` visibly crosses her green dress; only the lower portion follows exposed rock. Reterminate or reroute it so every segment tracks the visible path. This is distinct from the prior round’s resolved primitive-count finding: the overlay now has three primitives, but this new endpoint is materially false.

2. **08-cremation-allahabad — `DISTANT BRIDGE BAND` traces water, haze, and bridge supports rather than the bridge deck.** The polyline at `y≈0.58` runs across the full frame, although the visible bridge is higher and confined to the right of the frame. Retrace only the actual bridge band or relabel the feature. The previously required `STANDING FIGURE` repair remains correct.

3. **12-stranded-ship-panama-city — `SHIP REFLECTION` materially overstates the reflected feature.** Its `frame_in_frame` runs from `y=0.650` to `0.980`, while the visible hull reflection ends at roughly `y=0.80`; the lower corner marks therefore enclose empty water. Resize the frame to the actual reflection and rerender.

### Advisory (non-blocking)

- **03-ganges-branch-bihar:** The `BRIDGE PIER` frame begins inside the wide pier instead of at its left edge, but it still unmistakably identifies the correct visible structure; this is a placement refinement, not a false claim.
- **04-nanjing-bridge-model:** The display-case seam duplicates the top edge of the bridge-span frame, and the span trace stops short of the visible bridge’s right end.
- **05-mermaid-reservoir-sao-paulo:** The `CENTRAL PALM TRUNK` line rides its right edge rather than its center.
- **09-baptism-cape-town:** Tightening the `HANDS AND WATER` ellipse would exclude more of the central participant’s face while retaining the action.
- **10-crab-fishermen-honghu:** The working-boat diagonal crosses foreground activity and carries slightly more visual weight than necessary, though it still traces the boat.
- **11-wattamolla:** A person rests on the lower-left rock, outside the two swimmers annotated in the water. The plate and note do not assert that these are the only people in the frame, so this is not a wrong-count claim.

All twelve proofs were visually inspected. Every current overlay scores 100/100 with no scorer warnings, but deterministic geometry does not cure the three semantic errors above. The chapter’s checked analyzer-derived numbers are within tolerance; it makes no camera-setting claims. Source integrity is sufficient: every image has a credited Leica finalist record and direct public display rendition, each `fair-use` entry supplies all four factors, and the authoritative page plus all twelve listed renditions returned HTTP 200 during this review.

## Builder resolution — 2026-08-03

1. **06-pregnant-woman-konso:** shortened `DESCENDING FOOTPATH` to its exposed-rock section, ending at `(0.480, 0.720)` before the woman’s dress.
2. **08-cremation-allahabad:** replaced the frame-wide `DISTANT BRIDGE BAND` with `DISTANT BRIDGE DECK`, limited to the visible upper-right deck from `(0.400, 0.465)` to `(1.000, 0.470)`.
3. **12-stranded-ship-panama-city:** reduced `SHIP REFLECTION` to `h: 0.155`, ending at `y=0.805` at the visible reflected hull rather than empty water.

Re-verified every required fix from the full critique history: 2026-08-03 round 1 and round 2. The round-1 repairs remain intact: 06 has three truthful teaching primitives, 08’s standing-figure ellipse remains on the person, and 09 retains no false body-and-sky boundary. All twelve overlays score 100/100 with no warnings; the three repaired proofs passed independent visual review. `scripts/check.sh` and `python3 scripts/validate_pipeline.py` passed.
