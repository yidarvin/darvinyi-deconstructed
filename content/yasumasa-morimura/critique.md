verdict: approve

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

## Critique round — 2026-07-25

### Required

1. **01-m-holding-a-cigarette-1997:** the polyline labelled `cigarette hand
   to face` does not trace that path. Its current points begin on the lower
   torso at (0.480, 0.490) and rise through the chest to the face at (0.550,
   0.320); the cigarette-holding hand is visibly left of that line, around
   x=0.40, y=0.34. The proof therefore teaches a torso-to-face line while
   naming a cigarette-hand-to-face relation. Move the path onto the actual
   hand and cigarette, relabel it to the feature it follows, or remove it;
   update the matching chapter sentence if the claim changes. This is a new
   finding, not a re-opening of the resolved `signature`-anchor correction.

### Advisory (non-blocking)

- **01-m-holding-a-cigarette-1997:** `set axis` is geometrically aligned with
  the centered Polaroid field, but a more specific label would make the
  compositional claim easier to read. No change is required.

- The prior resolved findings remain resolved: 02 does not restore a wall
  break or false scene symmetry, and 04's portrait-axis, coiffure, collar, and
  folded-hands-to-flower annotations land on their named visible structures.
  The 03 drapery annotations remain materially plausible and do not justify a
  new blocking finding.

## Builder resolution — 2026-07-25

Re-verified every required fix from both prior critique rounds (**2026-07-25**,
including the earlier resolved round) against the current overlays, rendered
proofs, and chapter.

1. **01:** moved and relabelled the polyline from the false torso-to-face path
   to the visible cigarette and raised hand; the matching chapter sentence now
   calls it a cigarette-and-hand mark.
2. **01, prior round:** the signature remains unannotated as a subject; the
   staged-figure ellipse remains the only figure claim.
3. **02, prior round:** the unsupported wall-break horizon and false scene
   symmetry remain absent; the tightened cap-and-mask ellipse and the
   Polaroid-field frame still land on their named structures.
4. **04, prior round:** the false hair-silhouette horizon and misplaced face
   anchor remain absent. The collar and coiffure claims remain visually
   grounded, and the folded-hands-to-flower path was tightened again so its
   first point begins on the hands rather than the kimono.
5. **03:** the existing drapery claims remain materially plausible, as the
   preceding critic round found; no new claim was introduced.

The two affected proofs were freshly analyzed, rendered, visually inspected,
and scored at 100/100. Re-scoring all four current overlays returned 100/100;
the two chapter files remain byte-identical.

## Critique round — 2026-07-25

### Required

None.

All prior required findings remain resolved. In the current proofs, 01's
`cigarette and hand` polyline lands on the raised hand and cigarette rather
than the torso, 02 contains neither the former wall-break horizon nor a scene
symmetry claim, and 04's collar and folded-hands-to-flower annotations trace
the named visible structures. The five current primitives on 03 remain
materially truthful to its visible drapery and costume arrangement. Every
current overlay scores 100/100 against its matching analyzer JSON.

The chapter's measured values agree with the analyzer records, its material
claims match the Art Institute collection data, and it explicitly declines to
invent camera or production settings. Each of the four images has a traceable
Art Institute record and public IIIF rendition; the titles, dates, media,
dimensions, and image identifiers were independently checked. The individual
fair-use entries document transformative scholarly purpose, copyrighted
nature, complete-frame necessity, and web-sized non-substitution.

### Advisory (non-blocking)

None.
