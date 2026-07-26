verdict: resolved

## Critique round — 2026-07-25

### Required

1. **01-m-holding-a-cigarette-1997:** the `subject_anchor` labelled
   `signature` circles the handwritten signature below the photograph, not a
   pictured subject. A subject anchor asserts where the subject sits; replace
   it with a truthful figure anchor or remove it. The 100/100 score follows
   the analyzer's saliency peak and does not validate this semantic claim.

2. **02-m-wearing-a-military-cap-2-1997:** the `horizon_line` labelled `wall
   break` at y=0.380 does not trace a visible wall boundary; it crosses the
   undivided backdrop and the figure. Remove it or replace it with a real,
   named structural feature. Matching the analyzer's luminance-gradient
   proposal is not sufficient.

3. **02-m-wearing-a-military-cap-2-1997:** the vertical `symmetry_axis`
   labelled `set axis` falsely claims the scene mirrors across x=0.500. The
   empty lit field and chair at left and the figure at right are materially
   asymmetric. Remove this primitive or use one that truthfully describes the
   centered Polaroid support without asserting symmetry.

4. **04-mysterious-illusion-of-kainosho-2023-24:** the `horizon_line` labelled
   `hair silhouette break` at y=0.244 cuts through coiffure and ornaments; it
   does not follow a frame-wide horizontal division. Remove it rather than
   presenting the analyzer's gradient as compositional structure.

5. **04-mysterious-illusion-of-kainosho-2023-24:** the `subject_anchor`
   labelled `lowered face` at (0.612, 0.507) lands on the neck/collar below and
   right of the face. Move it to the face, relabel it to its actual target, or
   remove it.

6. **04-mysterious-illusion-of-kainosho-2023-24:** the `hands and flower`
   polyline traces the kimono/lapel V across the upper torso, while the hands
   and flower are lower in the frame. Relocate it to those forms or relabel it
   to the structure it actually follows; align the chapter's description with
   the corrected claim.

### Advisory (non-blocking)

- **02-m-wearing-a-military-cap-2-1997:** the `cap and mask` ellipse is broad
  and misses part of the cap's right brim. Tightening it around the actual
  cluster would improve legibility, but its label remains intelligible.

- The source record is traceable and its four fair-use entries supply purpose,
  copyrighted nature, complete-frame necessity, and non-substitution rationale;
  the Art Institute collection records also match the cited titles, dates,
  media, dimensions, and image identifiers. No source-integrity revision is
  required.

## Builder resolution — 2026-07-25

Re-verified critique round **2026-07-25** (the complete available critique
history) against the current overlays, proofs, and chapter.

1. **01:** removed the false `signature` subject anchor; the proof now identifies
   the staged figure and the visible cigarette-hand-to-face path instead.
2. **02:** removed both the unsupported `wall break` horizon and the false
   `set axis` symmetry claim; the proof now limits its claims to the Polaroid
   field, cap-and-mask cluster, and bare shoulder.
3. **02:** tightened the cap-and-mask ellipse around the visible cluster.
4. **04:** removed the false hair-silhouette horizon and the misplaced
   lowered-face anchor.
5. **04:** moved the hand/flower annotation onto the folded hands and flower,
   relabelled it accordingly, and updated the chapter; the kimono-collar line
   follows its visible edge.

The affected overlays were freshly analyzed, rendered, visually inspected, and
scored at 100/100. `scripts/check.sh` completed its state, sync, prose, and
pipeline gates; its test phase passed 296 tests. The remaining build and lint
phases also passed (`npm run build`, `npm run lint`).
