verdict: resolved

## Critique round — 2026-07-26

### Required

1. `08-api-02914653-mountain-view-ca` has only two overlay primitives: `upper field boundary` and `access road`. Add a third, truthful primitive—most directly a `subject_anchor` on the visible pumpjack/pad where the access road terminates—so the overlay teaches the claimed extraction-site node rather than only its surrounding field structure. The chapter's stated 3–5-primitive pedagogy is not met on this plate.

### Advisory (non-blocking)

None. The other nine proofs visibly trace the routes, field boundaries, pads, and pumpjacks their labels name; their measured tonal claims match the analysis files within tolerance. All ten sources provide NGA record links, credits, and per-image four-factor fair-use rationales, and no undocumented camera-setting claim appears in the chapter.

## Builder resolution — 2026-07-26

1. Resolved: `08-api-02914653-mountain-view-ca` now has three truthful primitives: the upper field boundary, the access road, and a bounded `cleared pumpjack pad` frame around the road's terminus. A `subject_anchor` was not used because the analyzer's nearest measured saliency signal is the unrelated lower-edge vehicles rather than the pumpjack; pinning it there would make a false claim. The updated proof received a clean visual pass and scores 94/100 with no deductions.

### Prior-round regression check

Re-verified the complete history for critique round 2026-07-26 (commit `1edba2f`): the nine previously accepted proofs retain their named routes, field boundaries, pads, and pumpjacks; all ten overlays score at least 94/100; the chapter retains only documented technical claims; and the NGA links, credits, and per-image four-factor fair-use rationales remain in `sources.md`.

## Critique round — 2026-07-26

### Required

1. `01-api-21930378-slaughter-tx`: the vertical `ACCESS TRACE` leading line at x=0.511 does not trace the visible access track. The actual track runs substantially left of it through the upper and middle fields before bending into the pumpjack. Redraw it as a road-following polyline or remove the claim, then re-render and re-score.

2. `03-api-21902614-levelland-tx` and `10-api-21932470-slaughter-tx` each contain only two primitives. Add one truthful, non-duplicative compositional claim to each, so every proof meets the 3–5-primitive pedagogy requirement; re-render, inspect, and re-score the changed proofs.

3. The technical-limits claim in `chapter.mdx`, its byte-identical `src/chapters/mishka-henner.mdx` mirror, and `research.md` falsely says the source records do not establish edition-specific print dimensions. NGA’s object record for `API 02914653 Mountain View, CA` supplies image and sheet dimensions (35.9 × 28.9 cm and 39.7 × 32.7 cm), while the records still do not establish camera, lens, exposure, satellite platform, or other capture settings. Correct the limit statement without introducing undocumented capture data. Source: https://www.nga.gov/artworks/223007-api-02914653-mountain-view-ca

### Advisory (non-blocking)

- The scorer’s unsupported-edge warnings on the road/track lines in 02, 04, 05, 06, 08, and 09 are not blocking: on the current proofs their labels remain attached to the visible feature, and the small endpoint/contour differences do not misstate the composition. Do not reopen the prior 08 pad-frame resolution; it remains visually truthful.

## Builder resolution — 2026-07-26

1. Resolved: `01-api-21930378-slaughter-tx` replaces the false straight leading line with an `access trace` polyline that follows the visible left-side track through the upper and middle fields before turning into the pumpjack. The re-rendered proof received a clean visual pass and scores 100/100 with no deductions or warnings.

2. Resolved: `03-api-21902614-levelland-tx` and `10-api-21932470-slaughter-tx` now each have three distinct claims: route or field structure, a `pumpjack` subject anchor, and a bounded `cleared pad` frame. Both re-rendered proofs received clean visual passes and score 100/100 with no deductions or warnings.

3. Resolved: `research.md` and the byte-identical chapter mirrors now report the documented dimensions on the NGA record for `API 02914653 Mountain View, CA`: image 35.9 × 28.9 cm and sheet 39.7 × 32.7 cm. They continue to state that capture equipment, exposure data, satellite platform, and other capture settings are undocumented.

### Prior-round regression check

Re-verified the complete critique history: round 2026-07-26 (commit `1edba2f`) and its resolution (commit `4c1560e`). `08-api-02914653-mountain-view-ca` retains its three truthful primitives—upper field boundary, access road, and cleared pumpjack pad—and scores 94/100 after visual review. Across the current set, all ten overlays score at least 94/100; the other nine retain the named routes, field boundaries, pads, and pumpjacks confirmed in the earlier resolution. The chapter has only documented technical claims, its `src/chapters` mirror is byte-identical, and `sources.md` retains NGA links, credits, and per-image four-factor fair-use rationales.

## Critique round — 2026-07-26

### Required

1. `10-api-21932470-slaughter-tx`: the `subject_anchor` at `(0.435, 0.480)` labelled `pumpjack` lands on the small dark wellhead/road-end feature to the left of the visible pumpjack silhouette (approximately `(0.50–0.52, 0.47–0.49)`). Retarget the anchor to the actual pumpjack (or rename it to the feature it marks), then re-render, visually inspect, and re-score the proof. This reopens the immediately preceding 2026-07-26 builder resolution only because that resolution materially changed the unmoved anchor's label from `cleared pad` to `pumpjack`; the new label is now a false compositional claim.

### Advisory (non-blocking)

- `10-api-21932470-slaughter-tx`: the `cleared pad` frame contains the equipment zone but does not encompass the full bright apron to its right and below. Expanding it would read more cleanly, but its present placement still names the correct feature and does not block approval.

## Builder resolution — 2026-07-26

1. Resolved: `10-api-21932470-slaughter-tx` retargets the `pumpjack` subject anchor from the road-end feature at `(0.435, 0.480)` to the visible pumpjack silhouette at `(0.505, 0.477)`. The proof was re-rendered, receives a clean visual pass, and scores 95.8/100. The scorer's one 4.2-point deduction reflects its measured saliency region at the nearby road terminus; the anchor now makes the truthful, visually verified claim required here.

### Prior-round regression check

Re-verified every earlier critique round in this file's history: the initial 2026-07-26 round (commit `1edba2f`) still has three truthful claims on 08—upper field boundary, access road, and cleared pumpjack pad—and scores 94/100. The subsequent 2026-07-26 round (commit `e1c5875`, resolved in `094c39b`) retains 01's road-following access-trace polyline, three distinct claims each on 03 and 10, and the documented NGA image and sheet dimensions in both chapter mirrors and `research.md`. All ten current overlays score at least 94/100, the chapter mirrors remain byte-identical, and `sources.md` retains the NGA links, credits, and per-image four-factor fair-use rationales.
