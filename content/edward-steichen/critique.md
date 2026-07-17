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
