verdict: resolved

## Critique round — 2026-07-19

### Required

1. **02-yokosuka-american-flag — remove the false symmetry/depth claims.** The dashed `symmetry_axis` at x0.625 says the frame mirrors across a line through the asymmetric flag-and-shadow field, and the `vanishing_point` at x0.215, y0.741 is placed in an undifferentiated dark area rather than at visible converging shadows. Replace them with primitives that trace the actual flag and foreground obstruction, or omit them.

2. **03-obari and 04-evening-view — do not use a symmetry axis for an asymmetric scene.** `rail corridor` in *Obari* and `hanging-light field` in *Evening View* are labels for areas, not mirror axes; neither proof shows reflection across the dashed vertical line. Use a path/anchor that traces the named feature, or remove the primitive. The current type makes a materially false compositional claim.

3. **05-stray-dog-misawa-aomori — re-map the dog annotations and revise the matching prose.** A `vanishing_point` cannot truthfully label a shoulder highlight, the y0.560 horizontal crosses the dog rather than a body-to-ground break, and the last long segment of `dog silhouette` cuts through the animal instead of following its contour. Replace these with a real subject anchor and a contour that stays on the dog; the chapter must no longer say that the present path isolates its contour or that the present line is a body-to-ground break.

4. **07-tokyo — the two claimed head contours are not contours.** Both teal diagonals run across the scalp and end at the collar; neither follows the left or right edge of the head. Re-draw them on actual edges (or replace them with a defensible oval/anchor) and correct the sentence claiming that they stay on the head edge.

5. **08-new-japans-scenic-trio-2 — remove the invented station-depth argument.** The `station depth` point sits on a foreground figure rather than a visible convergence, and both arrows labelled `ceiling signage` / `overhead perspective` traverse people and open ceiling rather than the named structures. Rebuild the overlay from actual figure spacing and visible overhead edges, then remove the chapter's unsupported assertion that this is detector-supported depth at x0.251, y0.597.

6. **09-shinjuku-11 — make the overlay teach the composition the chapter identifies.** The chapter and source rationale correctly make the near hand and vertical barrier the pressure system, but all three primitives instead privilege a generic street band/recession/sign; none traces or anchors the hand or barrier. Replace at least the unsupported emphasis with 3–5 primitives that visibly account for the hand, barrier, and blocked street relationship.

7. **10-memory-of-dog-epilogue — the annotated alley geometry is not present.** Neither long diagonal follows the dark utility wires named by its label, the alleged `alley depth` is not a visible convergence, and the y0.585 line is not an alley threshold. Re-annotate the actual wire runs and globe field (or use a conservative anchor/grid fallback), and revise the prose that calls the current lines actual wire runs crossing at measured alley depth.

### Advisory (non-blocking)

- **03-obari:** the scorer warns that the interpretive walking-figure polyline does not follow a detected edge. It remains legible as a figure path in the proof, so this is not a blocking geometric error; keep it only if the rebuilt overlay makes that pedagogical role clear.
- All cited Smithsonian display JPEG URLs and the collection gallery returned successfully in this review. The ten per-work object-page URLs currently return HTTP 404, so updating those reference links when a stable object record is available would improve source-note resilience, but the live display JPEGs keep the present source chain traceable.

## Resolution — 2026-07-19

Re-verified critique history: `2026-07-19` (the only prior round).

1. **02:** Removed the false symmetry, horizon, and vanishing-point claims; the proof now traces the flag silhouette, the near-field obstruction, flagpole edge, and tree-shadow intrusion.
2. **03–04:** Removed both false symmetry axes. *Obari* now follows the two rail curves and isolates the walking pair; *Evening View* traces the cable and receding light chain around the red bulb.
3. **05:** Replaced the false vanishing point and body-to-ground line with dog silhouette, leg, underside, and head annotations; matching prose now describes those visible features only.
4. **07:** Replaced the false scalp diagonals and vanishing point with a scalp oval, actual side edges, and collar edge; matching prose was corrected.
5. **08:** Removed the invented station-depth and overhead-perspective claims. The proof now identifies the three overlapping foreground figures; matching prose describes their staggered scale and overlaps.
6. **09:** Rebuilt the proof around the vertical barrier, its edge, and the near hand; matching prose now makes that pressure system the overlay's subject.
7. **10:** Removed the invented alley depth and threshold. The proof traces two visible overhead wire runs and identifies the central and near globes; matching prose was corrected.

Fresh composition analysis, render, score, and visual passes were run for all eight affected plates. Scores: 02, 03, 04, 05, 07, 09, and 10 = 100; 08 = 97 (the only warning is the deliberate use of three ellipses to compare the three figures). `scripts/check.sh`, pipeline validation, tests, and production build pass; `content/daido-moriyama/chapter.mdx` and `src/chapters/daido-moriyama.mdx` are byte-identical.
