verdict: resolved

## Critique round — 2026-07-17

### Required fixes

1. **01-pond-moonlight — the `REFLECTED FIELD` symmetry primitive makes the wrong kind of claim.** The vertical `symmetry_axis` at x=0.5 implies a left/right mirror, but the visible correspondence is the trees reflected across the pond's horizontal bank/water division. The proof does not support a vertical mirror axis. Revise the primitive and the associated prose so the diagram teaches the actual reflection relationship.
2. **03-rodin-le-penseur — both labelled leading lines miss their named subjects.** In the proof, `RODIN'S LEAN` and `THINKER'S SILHOUETTE` run diagonally through the light background from the upper left to the lower right; neither traces Rodin's dark figure at left nor the Thinker's dark mass at right. Replace or remove the false contour claims.
3. **04-rodin — `FIGURE BALANCE` is not a symmetry axis.** The vertical axis at x=0.388 lies in the empty left field, while Rodin's figure is at the right; the frame is not mirrored across that line. Remove it or use a primitive that truthfully names the actual figure/ground relationship.
4. **07-on-houseboat-log-cabin — `REFLECTED SHORE` identifies a feature that is not in the image.** The lower polyline crosses the occupants' clothing/deck area; this houseboat photograph contains no reflected shore. Correct the overlay and remove the matching false “reflection” claims from the plate caption and `sources.md`.
5. **09-eleanora-duse — the annotated subject is not a profile.** The supplied reproduction shows Duse facing near-frontally/three-quarter toward the camera, not in profile. Correct `DUSE'S PROFILE` and the corresponding “profile” descriptions in the chapter and `sources.md`.
6. **10-richard-strauss — `LIT FACE` does not trace Strauss's face.** Its polyline descends through the dark area to the left of the head and then the torso rather than following the illuminated face. Redraw it as a truthful facial contour or remove it.
7. **11-brancusis-studio — `STACKED PLINTHS` traces the wrong object.** The vertical polyline follows the tall central sculpture; the plinths are the horizontal supporting blocks below. Relabel/redraw the primitive so it names what it actually traces.

### Advisory (non-blocking)

None.

## Builder resolution — 2026-07-17

1. Replaced the false vertical reflection axis on *The Pond—Moonlight* with a traced tree-reflection path, and revised the associated chapter language.
2. Removed the two false contour lines on *Rodin—Le Penseur*; measured subject anchors now identify Rodin and *The Thinker*.
3. Removed the unsupported `FIGURE BALANCE` symmetry axis from *Rodin*.
4. Removed the nonexistent reflected shore from *On the House Boat—“The Log Cabin”* and revised the overlay, source note, chapter prose, and caption to describe the visible window band and figure group.
5. Replaced Duse's false profile contour with a three-quarter-face ellipse and corrected the source and chapter descriptions.
6. Replaced Strauss's false face contour with a face ellipse that encloses the illuminated head.
7. Replaced the Brancusi studio's false vertical plinth line with horizontal upper-plinth and lower-platform annotations.

Re-verified required fixes from critique round 2026-07-17 (the complete critique history). All seven revised overlays were re-analyzed, rendered, visually inspected, and scored 100/100. `scripts/check.sh` passes, and `content/edward-steichen/chapter.mdx` remains byte-identical to `src/chapters/edward-steichen.mdx`.

## Critique round — 2026-07-17

### Required fixes

1. **02-flatiron — `BUILDING APEX` and `FLATIRON EDGE` trace branches, not the Flatiron.** The vanishing-point crosshair at `(0.273, 0.225)` sits in the bare-branch cluster, well left of the building's visible summit, and the accompanying polyline follows that same branch area. Remove or replace these claims with primitives that land on the actual building. Revise the related chapter sentence that calls the overlay's apex and edge evidentiary.
2. **03-rodin-le-penseur — `FIGURE PAIR` is not a frame in the photograph.** The `frame_in_frame` rectangle bounds the two figures but does not trace a door, window, print border, or other internal frame. Remove it or use a primitive that truthfully describes the visible relationship.
3. **04-rodin — three overlay claims misidentify the picture's structure.** `RODIN'S PROFILE` begins in empty background and then runs through the silhouette rather than tracing the left-facing profile; `STUDIO GROUND` marks no frame-wide ground boundary; and `PORTRAIT FIELD` is not an internal frame. Rebuild or remove these primitives so their types and labels match visible features.
4. **05-in-memoriam — `ARCH AXIS` and `BOWED CONTOUR` do not trace what their labels claim.** The vertical symmetry line runs through the dark right-hand mass rather than a bilateral arch, while the polyline mostly crosses unfeatured dark space and terminates at the lower bright spot instead of following the pale bowed figure. Remove or redraw both.
5. **06-road-into-valley-moonrise — `MIRRORED VALLEY` falsely asserts a mirror structure.** The heavy tree mass on the left and the narrow trunk/canopy at right are visibly asymmetric. Remove the symmetry-axis primitive and revise the chapter's related “approaches symmetry” wording if it continues to state a mirrored structure.
6. **08-self-portrait — `LIT FACE` is a false vanishing-point claim.** The crosshair lies below and left of the illuminated face, and the photograph supplies no converging perspective lines. Replace it with a truthful subject/face annotation or remove it; do not describe the point as a vanishing point.
7. **12-isadora-duncan-parthenon — `DISTANT FIGURE` does not land on Duncan.** The `subject_anchor` at `(0.588, 0.992)` is on the image's bottom edge; the distant figure is visibly within the bright opening above and to the right. Move it to the figure or remove it.
8. **12-isadora-duncan-parthenon — sources.md attributes an unverified gesture.** The plate's “Why it matters” says Duncan's raised arms and drapery echo the column, but the chapter correctly says the supplied reproduction does not clearly show a gesture. Remove or qualify that unsupported source-note claim.
9. **Source records — the required per-image route and credit/copyright documentation is missing.** Although the introduction says the images were obtained from public-domain Commons records, each of the twelve entries must explicitly identify its route as `open` and preserve the source-record credit/copyright notice, in addition to its current link. Add those per-image records; do not rely on the chapter-wide assertion.

### Advisory (non-blocking)

None. The seven findings resolved in the preceding round remain resolved. The 100/100 deterministic scores are not contrary evidence here: the scorer confirms the detector geometry, while these required findings are visible semantic/type mismatches.

## Builder resolution — 2026-07-17

1. Removed the false *Flatiron* apex and edge claims; the overlay now marks only the visible overhead branch and low street glow, and the chapter no longer treats the branches as evidence for an architectural apex or edge.
2. Removed the false `FIGURE PAIR` frame from *Rodin—Le Penseur*, retaining only the two figure anchors.
3. Rebuilt *Rodin* as a single ellipse around the visible dark figure; the false profile path, studio-ground horizon, and portrait-field frame are gone, and the prose now describes a figure rather than a profile.
4. Replaced *In Memoriam*'s unsupported arch axis and inaccurate contour with an enclosing `BOWED FIGURE` ellipse; the chapter no longer claims a threshold or traced contour.
5. Removed the false `MIRRORED VALLEY` axis and revised the road paragraph to describe unequal tree masses.
6. Replaced the false *Self-Portrait* vanishing point with an ellipse around the illuminated face; the surviving jacket-edge line is a truthful visible edge.
7. Moved the *Isadora Duncan* annotation to an ellipse enclosing the distant figure in the bright opening.
8. Rewrote the Duncan source note to state that the supplied reproduction does not clearly establish a gesture.
9. Added a per-image `open` route and an Edward Steichen/Commons public-domain credit-copyright notice for all twelve source entries.

Re-verified every required fix from the prior 2026-07-17 critique round: *The Pond—Moonlight* uses a reflection path rather than a vertical symmetry axis; *Rodin—Le Penseur* retains no false contours; *Rodin* retains no symmetry axis; *On the House Boat—“The Log Cabin”* retains no reflected shore; Duse remains labeled three-quarter rather than profile; Strauss uses a face ellipse; and the Brancusi annotations identify horizontal plinth/platform edges. All seven re-resolved overlays and the seven overlays revised in this round were rendered, visually inspected, and scored 100/100. `scripts/check.sh` passes, and `content/edward-steichen/chapter.mdx` remains byte-identical to `src/chapters/edward-steichen.mdx`.
