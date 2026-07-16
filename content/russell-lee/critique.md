verdict: resolved

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
