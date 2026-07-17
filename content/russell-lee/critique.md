verdict: approve

## Critique round — 2026-07-16

### REQUIRED

1. **03-pecan-workers-union-hall-san-antonio** — `ROOM'S CENTER` uses a `symmetry_axis` for an uneven seated crowd and room. That primitive asserts mirror structure which the proof does not show; the chapter’s qualification does not change the overlay contract. Remove it or replace it with a primitive that traces a real central architectural feature without asserting symmetry.
2. **04-farmer-brother-making-music-pie-town** — `GUITAR NECK` descends across the guitar body and couch while the visible neck rises toward the right-hand headstock. Redraw it on the neck or remove it. `BETWEEN THE PLAYERS` is also a `symmetry_axis` despite the unmirrored scene; remove it or replace it with a truthful non-symmetry claim.
3. **06-faro-doris-caudill-pie-town** — `BETWEEN THE COUPLE` at x0.613 runs through Doris rather than the interval between the pair. Reposition it to the actual interval with a non-symmetry primitive, or remove it.
4. **08-mother-teaching-children-transylvania** — `BLACKBOARD TOP` crosses the board’s interior rather than its physical top edge, and the `LESSON BOARD` frame begins inside the board and extends substantially beyond it. Redraw both to the real board, or remove the unsupported claims; revise the matching chapter wording if the board is no longer the framed structure.
5. **09-schoolroom-san-augustine** — the `BLACKBOARD` frame encloses bookcase/shelving, not a blackboard; `BLACKBOARD BAND` likewise crosses the room rather than a board. `DESK RHYTHM` passes through pupils and the teacher instead of tracing desk planes. Remove or redraw these primitives on the features their labels name, and correct the matching chapter paragraph.
6. **10-people-leaving-church-pie-town** — `DARK DOORWAY` includes facade and misses the doorway’s actual left/top edges, and `DOORWAY CENTER` at x0.512 is not the center of the opening. Redraw the doorway frame and use a truthful primitive for its center, or remove the center claim; update the coordinate claim in the chapter if changed.
7. **12-children-teacher-yakima-camp** — `GROUND-TO-FENCE BREAK` at y0.75 lies on foreground ground and feet, not a fence transition. `PAIRED FIGURES` is a `symmetry_axis` over an asymmetric grouping, and `TEACHER'S ARM` starts in the skirt/ground instead of following the bent arm. Remove or redraw each claim; revise the corresponding chapter description.
8. **chapter.mdx, Faro and Doris Caudill paragraph** — “the darkest plate in the selection” is false: its analyzer mean is 0.321, while the Farm Bureau school plate is darker at 0.294. Remove or qualify the comparative claim; retain the correct 0.321 value if useful.

### Advisory (non-blocking)

- **01-relief-line-commodities-san-antonio** — `WAITING LINE` is a broad implied direction through the queue rather than a single clean contour. It remains understandable; consider anchoring it more closely to repeated shoulders if revising the batch.
- **02-mexican-mother-and-children-san-antonio** — `CHILDREN'S STACK` is visually busy but still identifies the cluster. A shorter path would teach the grouping more clearly.
- **11-school-farm-bureau-pie-town** — `ROAD INTO THE SCHOOL` is a very broad, low-contrast approach across dirt; tighten it to a visible track or soften the label if the composition is otherwise being revised.

All twelve proofs were visually reviewed against their overlay specs and analyzer JSON. The numerical tonal, palette, and geometry claims were checked; apart from the comparative mean-luminance statement above, they are within the stated tolerance. The chapter and research notes correctly avoid assigning historical camera or exposure settings.

## Builder resolution — 2026-07-16

Re-verified critique history: the only prior round, **2026-07-16**, including every required item. Removed the unsupported symmetry claims from 03, 04, 06, 10, and 12; redrew the guitar neck on the visible neck; replaced the inaccurate lesson-board and schoolroom claims with truthful board, window-band, and figure annotations; redrew the church doorway and the teacher's arm; and corrected the Faro and Doris comparative luminance claim. Chapter text and rendered chapter are byte-identical.

All twelve overlays score 100/100 against their current analysis JSON, the seven revised proofs received a clean visual pass, and `scripts/check.sh` passes.

## Critique round — 2026-07-16

### REQUIRED

1. **05-negro-boys-easter-morning-chicago** — `STREET RECESSION` is a `vanishing_point` at `(0.572, 0.507)`, but that marker lands on the foreground car/boy cluster. The visible curb and street narrow behind the car toward roughly `y0.39`, not at the marked point. Move the claim to the visible convergence or remove it, and revise the matching chapter sentence (which repeats these coordinates).
2. **07-schoolchildren-circular-swing-san-augustine** — `MAST CONVERGENCE` uses a `vanishing_point` at `(0.484, 0.317)`, where the proof shows only the vertical center mast. The support cables continue upward and do not converge at that point. Remove or replace the false convergence claim, and correct the matching chapter wording that calls it a convergence.
3. **09-schoolroom-san-augustine** — the plate caption says “The board, teacher, and repeated desks,” although the current overlay frames `REAR WINDOW BAND` and the proof has no corresponding blackboard structure. Revise the caption to match the rear windows, teacher, and desks.

### Advisory (non-blocking)

- **01-relief-line-commodities-san-antonio** — `SERVICE-WINDOW FIELD` is a broad, useful grouping but its lower frame bound does not land on a continuous architectural edge. It remains legible as a field; tighten or re-type it if the overlay is otherwise revised.
- **08-mother-teaching-children-transylvania** — `LESSON BOARD` is slightly loose on the left and `CHILDREN AT THE LESSON` begins at chair/lap level. Both still identify the intended lesson relationship.
- **11-school-farm-bureau-pie-town** — `FARM BUREAU SCHOOL` brackets a broad portion of the building rather than a literal internal frame. The label identifies the correct building, but a tighter structural annotation would teach the rectangle more cleanly.

All twelve current proofs were visually reviewed against their overlay specs and analysis JSON. The surviving numeric tonal and coordinate claims are within the stated tolerance, and the chapter/research material does not invent historical camera or exposure settings.

## Builder resolution — 2026-07-16

Re-verified critique history: both prior rounds dated **2026-07-16**, including every required item. Removed the false Chicago street-recession and circular-swing convergence claims; corrected the schoolroom caption to name the rear windows; rechecked the earlier symmetry, board, doorway, guitar-neck, teacher-arm, and Faro luminance fixes; and tightened the surviving guitar, doorway, and Farm Bureau roof claims where visual review found drift. Chapter and rendered chapter are byte-identical. Source and research notes now distinguish LOC’s historical medium metadata from later derivative-file EXIF rather than inventing capture settings.

All twelve overlays score 100/100 against their current analysis JSON, changed proofs received a clean visual pass, and `scripts/check.sh` passes.

## Critique round — 2026-07-16

### REQUIRED

1. **05-negro-boys-easter-morning-chicago** — `CAR CENTERLINE` is typed as a `symmetry_axis`. That primitive claims mirror structure, but the proof is an unequal group around a car, not a mirrored frame. The line correctly reaches the car’s grille center, but its primitive type makes the wrong compositional claim. Replace it with a non-symmetry primitive that traces the grille/centerline, or remove it.
2. **07-schoolchildren-circular-swing-san-augustine** — `CENTER MAST` is also typed as a `symmetry_axis`. It accurately follows the mast, but the crowd, support cables, and frame do not mirror across it. Use a non-symmetry primitive for the mast or remove the axis claim. This is distinct from, and does not reopen, the prior resolved `MAST CONVERGENCE` finding.
3. **chapter.mdx, schoolroom paragraph** — “This is the most edge-dense image here at 0.104” is false. The Farm Bureau school’s analysis records `edge_density` 0.123, above the schoolroom’s 0.104. Qualify the claim as the highest black-and-white value, or remove the superlative.
4. **sources.md, entries 06 and 12** — both visual descriptions claim structures absent from their proofs: entry 06 calls the outdoor Caudill portrait a “low, rough interior” lit by a window; entry 12 calls the outdoor Yakima scene a teacher-centered pyramid against a rough wall. Correct these scene descriptions to the visible exterior/ground settings, without adding unsupported historical details.

### Advisory (non-blocking)

- **10-people-leaving-church-pie-town** — `CROWD SPILL` is an understandable interpretive movement path, but it is broader than the visible bodily contour.
- **12-children-teacher-yakima-camp** — `CHILD` centers on the partly obscured middle child rather than the more prominent boy at right. The label remains defensible, but a more specific label would reduce ambiguity.

All twelve current proofs were visually checked against their specs and analysis. The two earlier revision rounds remain resolved except for the new, independently verified issues above; no historical camera or exposure settings are invented. The deterministic scorer returns 100/100 for every current overlay, which does not validate the semantic misuse of a symmetry primitive.

## Builder resolution — 2026-07-16

Re-verified critique history: all three prior rounds dated **2026-07-16**, including every required item. The resolved first-round fixes remain in place for the union-hall seated rank, guitar neck, Caudill portrait, Transylvania lesson board, schoolroom rear windows, church doorway, Yakima arm, and Faro luminance statement. The resolved second-round removals of the Chicago street-recession and swing convergence claims remain in place, as does the schoolroom caption correction. For this round, replaced the false Chicago symmetry axis with a traced car-grille centerline, replaced the swing symmetry axis with a traced center mast, corrected the schoolroom edge-density comparison to the highest black-and-white value, and corrected the two exterior scene descriptions in the source shortlist. Chapter and rendered chapter are byte-identical.

All twelve overlays score 100/100 against their current analysis JSON; the revised Chicago and swing proofs, plus every earlier required-fix proof, received a clean visual pass. `scripts/check.sh` passes.

## Critique round — 2026-07-16

### REQUIRED

1. **03-pecan-workers-union-hall-san-antonio** — this spec now has only two primitives, below the required 3–5 teaching claims. In addition, `UPPER WALL BREAK` at `y0.111` crosses heads and unbroken wall/stair detail rather than a continuous horizontal architectural break. Remove or replace that false line and add only truthful, useful primitives (for example, a trace of an actual room feature or the seated rank) so the revised overlay teaches the photograph without inventing a structure.
2. **06-faro-doris-caudill-pie-town** — the two figure ellipses are readable, but they are the whole spec. Add at least one truthful, non-redundant primitive so this plate meets the 3–5-primitive pedagogy requirement; do not restore the previously removed false symmetry or interval claim.
3. **09-schoolroom-san-augustine** — `REAR WINDOW BAND` and `TEACHER` are visually truthful, but they are only two primitives. Add a truthful third teaching claim, preferably one that makes the visible desk rhythm named in the caption concrete, without reopening the resolved blackboard misidentification.
4. **11-school-farm-bureau-pie-town** — `ROOF EDGE` and `CHILDREN AT THE DOOR` are truthful, but the spec has only two primitives. Add a truthful third teaching claim to satisfy the 3–5-primitive requirement; do not substitute the earlier broad road or unsupported internal-frame claims.
5. **12-children-teacher-yakima-camp** — the repaired `TEACHER'S ARM` and the child ellipse are truthful, but the spec has only two primitives. Add a truthful third teaching claim while retaining the resolved removal of the false fence-break and symmetry assertions.

### Advisory (non-blocking)

- **01-relief-line-commodities-san-antonio** — `SERVICE-WINDOW FIELD` still has a broad lower bound that does not follow a single continuous architectural edge, but it remains legible as a field.
- **02-mexican-mother-and-children-san-antonio** — `CHILDREN'S STACK` remains visually busy while still correctly identifying the cluster.
- **07-schoolchildren-circular-swing-san-augustine** — `CENTER MAST` is slightly right of the mast's visual midline, within the stated placement tolerance and still clearly tracing the mast.
- **08-mother-teaching-children-transylvania** — the lower end of `TEACHING GESTURE` is loose at the woman's torso; the path nevertheless clearly teaches the arm and pointer. The lesson-board and child-group advisories from the prior round also remain non-blocking.
- **10-people-leaving-church-pie-town** — `CROWD SPILL` remains a broad interpretive path rather than a precise bodily contour, as previously noted.
- **12-children-teacher-yakima-camp** — `CHILD` remains centered on the partly obscured middle child; the label is defensible but could be more specific.

All twelve proofs were visually reviewed against their current overlay and analysis files, including the prior resolved fixes. The deterministic scorer returns 100/100 for every overlay, but it does not enforce the 3–5-primitive pedagogy requirement or determine whether a semantic label traces a real feature. Chapter tonal, coordinate, and palette claims match the current analysis values within tolerance; the chapter and research material continue to avoid invented historical camera or exposure settings.

## Builder resolution — 2026-07-16

Re-verified the full critique history: the three previously resolved rounds dated **2026-07-16** and this current 3–5-primitive round. The first-round removals of false symmetry, the guitar-neck, lesson-board, schoolroom, doorway, Yakima-arm, and Faro-luminance repairs remain in place. The second-round removals of the Chicago street-recession and swing convergence claims, plus the schoolroom caption correction, remain in place. The third-round car-grille and center-mast traces, the black-and-white edge-density qualification, and the corrected Caudill/Yakima exterior source descriptions remain in place.

For this round, replaced the false union-hall wall break with a real stair rail and foreground figure; added a fence-post annotation; added a specific schoolroom desk top and tightened the teacher; added the Farm Bureau sign and corrected the roof eave and children trace; and added the teacher’s face in Yakima. No rejected symmetry, convergence, blackboard, road, or fence-break claim was restored. Chapter and rendered chapter are byte-identical.

All twelve overlays score 100/100 against their current analysis JSON, each revised proof received a clean visual pass, and `scripts/check.sh` passes under the test fixture’s isolated Git configuration.

## Critique round — 2026-07-16

### REQUIRED

1. **06-faro-doris-caudill-pie-town** — `FENCE POST` is a `frame_in_frame` at `x0.92, y0.58, w0.04, h0.32`, but the proof shows a single vertical fence post, not an enclosing internal frame. The brackets identify the post, while the primitive type asserts a door-, window-, or arch-like frame that is absent. Replace it with a truthful contour/path annotation (or another truthful third claim) without restoring the previously removed symmetry/interval assertion.
2. **11-school-farm-bureau-pie-town** — `FARM BUREAU SIGN` is a `frame_in_frame` at `x0.36, y0.44, w0.15, h0.045`, but its brackets begin above and left of the physical sign, terminate through its upper portion, and miss the sign’s lower and right edges. Redraw the frame tightly around the actual sign, or replace it with a truthful primitive. This is a new sign-placement error, not a reopening of the earlier resolved broad-building-frame issue.

### Advisory (non-blocking)

No new advisories. The prior advisory observations remain within tolerance or are interpretive but still legible; they do not block revision of the two required issues above.

All twelve current proofs were visually reviewed against their overlay specs and analysis files. The surviving chapter numbers and geometry claims match the analyzer within tolerance, and the chapter, research notes, and source list do not invent historical camera or exposure settings.

## Builder resolution — 2026-07-16

Re-verified the full critique history: the four previously resolved rounds and this current round, all dated **2026-07-16**, including every required item. The resolved removals of false symmetry and convergence claims remain in place, as do the repaired guitar neck, lesson board, schoolroom windows and desk, church doorway, Yakima arm, Chicago grille centerline, source descriptions, and tonal-comparison wording. Each current spec retains three to five truthful teaching claims without restoring the rejected blackboard, road, fence-break, or broad-building-frame assertions.

For this round, replaced the Caudill portrait's false `frame_in_frame` fence-post claim with a polyline that follows the visible post, and redrew the Farm Bureau sign frame tightly around the physical sign. The chapter did not require a wording change and remains byte-identical with the rendered chapter.

All twelve overlays score 100/100 against their current analysis JSON. The two revised proofs and the full twelve-proof set received a clean visual pass; `scripts/check.sh` passes.

## Critique round — 2026-07-16

### REQUIRED

None.

### Advisory (non-blocking)

- **01-relief-line-commodities-san-antonio** — `SERVICE-WINDOW FIELD` remains a broad grouping rather than a precise, continuous internal-frame boundary; `WAITING LINE` is an implied queue direction rather than one contour. Both claims remain legible and materially truthful.
- **02-mexican-mother-and-children-san-antonio** — `CHILDREN'S STACK` is visually busy, though it still identifies the clustered children.
- **08-mother-teaching-children-transylvania** — the lower end of `TEACHING GESTURE` is slightly loose at the woman’s torso; the pointer, board, and teaching action remain clear.
- **10-people-leaving-church-pie-town** — `CROWD SPILL` is an intentionally broad movement path rather than a literal shared contour.
- **12-children-teacher-yakima-camp** — `CHILD` identifies the partly obscured middle child rather than the more prominent boy; the label is still defensible.

All twelve current proofs were visually reviewed against their paired specs and analysis. The prior resolved findings remain resolved: no false symmetry, convergence, blackboard, doorway, fence-post, or sign-frame assertion has returned. Every spec contains three to five pedagogically useful primitives and scores 100/100 against its paired analysis JSON. Chapter tonal, palette, and coordinate claims are within tolerance, and the chapter, research notes, and source list do not invent historical camera or exposure settings. With no required issue remaining, this chapter is approved.
