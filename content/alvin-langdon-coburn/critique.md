verdict: approve

## Critique round — 2026-07-16

Reviewed all twelve proof PNGs against their overlay specs, analyzer records, source notes, research, manifest, and chapter text.

### Required

1. `01-corner-of-25-mortimer-street`: correct the `sources.md` “Why it matters” description. It calls the visible work a “narrow façade study” with a “window grid” and “street corner,” while the proof and overlay show a digitized mounted print of an interior with a seated figure, wall pictures, and fireplace. The chapter and spec already make the latter distinction; the source note must agree.
2. `03-portrait-of-george-bernard-shaw`: correct the `sources.md` “Why it matters” description. It claims a reclining outdoor portrait between “tree trunk and bright path,” but the proof, overlay, and chapter all show the close head-and-beard portrait against a dark field. This is a wrong visible subject/structure in the source record.
3. `09-spider-webs`: stop presenting the visible boat rigging and its reflection as a literal physical web. The two overlay polylines labeled `WEB STRAND`, the `WEB FIELD` frame, and the chapter/source language about “web strands” and a “complete net” teach the wrong object: the proof shows masts/rigging and reflected vertical lines. Retain *Spider-Webs* as the documented title if desired, but relabel and describe the traced features as rigging/reflected rigging (and may note that the title makes the lattice analogy).

### Advisory (non-blocking)

None.

## Resolution — 2026-07-16

Re-verified prior critique round: 2026-07-16 (`e67c836`).

1. `01-corner-of-25-mortimer-street`: `sources.md` now identifies the digitized mounted print's interior, seated figure, wall pictures, fireplace, and nested reproduction frame.
2. `03-portrait-of-george-bernard-shaw`: `sources.md` now identifies the close head-and-beard portrait against its dark field.
3. `09-spider-webs`: relabeled the rendered overlay as boat rigging, reflected rigging, waterline, and boat/reflection; corrected the source note, chapter, rendered chapter copy, and proof contact-sheet caption. The re-rendered proof received 100/100 with no deterministic deductions or warnings and passed visual review.

`content/alvin-langdon-coburn/chapter.mdx` and `src/chapters/alvin-langdon-coburn.mdx` were confirmed byte-identical. The full `scripts/check.sh` gate passed in an isolated worktree containing this resolution, preserving unrelated in-progress repository changes.

## Critique round — 2026-07-16

Reviewed all twelve current proof PNGs against the rendered specs, source/research records, chapter text, and analyzer records. The 100/100 deterministic scores confirm the stored analyzer geometry but do not validate the semantic names below. The three findings from the prior 2026-07-16 round remain resolved: `01` and `03` source descriptions name the visible portraits correctly, and `09` correctly identifies rigging and reflection rather than a literal web.

### Required

1. `03-portrait-of-george-bernard-shaw`: replace or relabel `SHOULDER BREAK` (`horizon_line`, `y: 0.393`). In the proof it crosses Shaw's upper face/cheeks; the shoulder and coat are materially lower in the frame. The matching analyzer value is a luminance split, not evidence of a shoulder at that location.
2. `08-the-bridge-venice`: move or relabel the `BRIDGE FIGURE` anchor at `(0.415, 0.304)`. It sits below the lone standing figure, on the bridge arch/deck area. Correct the matching overlay note and chapter sentence that say the anchor catches the figure.
3. `10-williamsburg-bridge`: correct both mis-traced structural claims. `DISTANT BRIDGE DECK` at `y: 0.664` crosses the lower foreground and silhouettes, not the distant bridge deck; the `DIAGONAL GIRDER` polyline `(0.23,0.92) -> (0.54,0.51) -> (0.82,0.12)` runs through the open aperture rather than either visible heavy girder. Re-trace the pictured structures or rename the primitives to what they actually indicate.
4. `12-max-weber`: correct the image description and anchor. This is a three-quarter/frontal portrait, not a profile; `PROFILE`, `PROFILE BALANCE`, and `PROFILE EYE` therefore misname the visible pose, and the `(0.784, 0.335)` anchor falls on the far-side ear/temple rather than the eye. Update the overlay and its note, the chapter paragraph/caption, and the `sources.md` description to match the visible portrait.
5. `sources.md`: correct the count in the rights-basis statement from “eleven downloaded files” to twelve. The current `manifest.json` contains the twelve ingested files `01` through `12-max-weber`, so the stated count is false.

### Advisory (non-blocking)

- `07-weirs-close-edinburgh`: tighten the first point of `SUNLIT PATH` if the overlay is next rendered; it begins slightly in dark paving before reaching the light wedge, but the diagonal still reads correctly.

## Resolution — 2026-07-16

1. `03-portrait-of-george-bernard-shaw`: removed the detector-derived `SHOULDER BREAK`; the portrait is now described only by its head, beard diagonal, and print edge.
2. `08-the-bridge-venice`: moved the figure annotation to the standing figure and updated its overlay note, chapter sentence, and proof caption.
3. `10-williamsburg-bridge`: replaced the false horizontal deck claim with a traced distant deck and retraced the two visible foreground girders.
4. `12-max-weber`: relabeled the pose as a three-quarter frontal portrait and moved the near-eye annotation from the far temple to the visible eye; matching chapter, source, and proof text now agree.
5. `sources.md`: corrects the rights-basis count to twelve ingested files.

## Critique round — 2026-07-16

Reviewed all twelve current proof PNGs against their matching overlay specs, analyzer records, source notes, research, manifest, and chapter text. Every stored spec scores 100/100 with no deterministic deductions or warnings; the required issue below is semantic and therefore outside that geometric score.

### Required

1. `04-portrait-of-g-k-chesterton`: remove or truthfully replace the `COAT / GROUND BREAK` horizon line (`y: 0.481`). In the current proof and source image it crosses Chesterton's lower face/mouth and chin, while his coat and collar begin materially lower; there is no horizontal coat/ground boundary at the claimed position. The analyzer identifies this only as a gradient-derived luminance split, not evidence for the named structure. Render a corrected proof and keep the overlay at three to five truthful teaching primitives.

### Advisory (non-blocking)

- `03-portrait-of-george-bernard-shaw`: if this overlay is next rendered, tighten the first point of `HEAD AND BEARD DIAGONAL` (`0.20, 0.15`) to the head boundary. Its current start sits in empty dark field, but the rest of the polyline still clearly teaches the head-and-beard tilt, so this does not block approval.

## Resolution — 2026-07-16

Re-verified every required fix from the prior rounds recorded in `e67c836`, `009f7ed`, and `17d9e7d`: the `01` and `03` source descriptions name the visible works; `09` names rigging and reflection rather than a literal web; `03` contains no false shoulder line; `08` anchors the standing figure; `10` traces the distant deck and foreground girders; `12` names and anchors the three-quarter portrait; and the sources rights basis counts all twelve manifest files. The chapter copies remain byte-identical.

1. `04-portrait-of-g-k-chesterton`: removed the false detector-derived `COAT / GROUND BREAK`. The revised three-primitive overlay marks only the face, spectacles, and collar/tie visible in the photograph; its rendered proof passed visual review and scored 100/100 with no deductions or warnings.

## Critique round — 2026-07-16

Reviewed all twelve current proof PNGs, matching source images, overlay specs, analyzer records, sources, research, manifest, and both byte-identical chapter copies. Every stored overlay receives 100/100 from the deterministic scorer, but that score verifies analyzer geometry rather than the semantic truth of a label. The previously resolved `01`, `03`, `04`, `08`, `09`, `10`, and `12` findings remain resolved; the `03` diagonal's already-recorded small overshoot remains advisory and has not materially regressed.

### Required

1. `01-corner-of-25-mortimer-street`: re-bound both named frames to the physical edges they claim. `MOUNTED PRINT` (`x: 0.15, y: 0.13, w: 0.69, h: 0.70`) ends inside the gray mount, with its bottom at `y: 0.83` above the visible mounted-print edge near `y: 0.93`. `PHOTOGRAPH AREA` (`x: 0.23, y: 0.22, w: 0.54, h: 0.52`) instead ends across the photograph's carpet at `y: 0.74`; the inner photograph continues to about `y: 0.83`. The present brackets therefore misidentify the reproduction's two nested objects.
2. `02-h-g-wells`: remove or truthfully replace `UPPER BORDER` (`horizon_line`, `y: 0.10`). It crosses pale ground and the top of Wells's hair rather than a visible border; the actual print boundary is separately and correctly marked by `PRINT BORDER`. The matching analyzer record identifies only a gradient split.
3. `02-h-g-wells`: retrace or replace `HAND TO FOREHEAD` (`(0.37, 0.43) → (0.56, 0.55) → (0.62, 0.77)`). The current path crosses cheek and nose before terminating on the hand; it neither follows the hand nor reaches the forehead. Update the matching chapter sentence if the primitive's teaching claim changes.
4. `05-st-pauls-cathedral`: remove or truthfully replace `ROOFLINE` (`horizon_line`, `y: 0.643`). Its full-width stroke crosses the lower dome/façade and foreground structures, not a continuous roofline. The analyzer calls the coordinate a gradient-derived luminance split, so the label turns that signal into a structural feature that is not visible; revise the related chapter treatment of this horizontal if it continues to be described.
5. `06-the-thames`: remove or truthfully replace `WATERLINE` (`horizon_line`, `y: 0.690`). The stroke passes through open water, the bow, and the foreground figures rather than a water boundary. This too is a gradient-derived analyzer coordinate, not evidence for the named line.
6. `11-alfred-stieglitz`: retrace or remove `COAT SHOULDERS` (`(0.21, 0.76) → (0.46, 0.61) → (0.71, 0.76)`). The right segment ends in the pale oval ground rather than a visible right shoulder, creating a symmetric V that the profile portrait does not contain.
7. `12-max-weber`: remove or replace `BROW / BACKGROUND BREAK` (`horizon_line`, `y: 0.303`). It crosses dark ground, forehead, brow/eye area, and temple; it does not trace a horizontal brow or background boundary. The analyzer's low-confidence gradient split is not a visible named structure.

### Advisory (non-blocking)

None new.

## Resolution — 2026-07-16

Re-verified every required fix from prior rounds `e67c836`, `009f7ed`, and `17d9e7d`, as well as the current `9f0a8db` round. The `01` and `03` source descriptions still name the visible interiors and portraits; `09` continues to identify boat rigging and its reflection rather than a literal web; `03` has no false shoulder line; `04` has no false coat/ground line; `08` anchors the standing figure; `10` traces the distant deck and visible foreground girders; `12` remains a three-quarter frontal portrait with its near-eye annotation; and the rights basis correctly counts all twelve manifest files. Each of the twelve current overlays scores 100/100 with no deductions or warnings, and the historical required proofs received a fresh visual pass.

1. `01-corner-of-25-mortimer-street`: extended `MOUNTED PRINT` to the actual dark mount's lower edge and `PHOTOGRAPH AREA` to the inner photograph's lower edge; the rendered nested frames now terminate on the objects they name.
2. `02-h-g-wells`: removed the false detector-derived `UPPER BORDER` and retraced the visible raised hand without claiming it reaches the forehead.
3. `05-st-pauls-cathedral`: removed the false gradient-derived roofline; the overlay and chapter now describe the visible dome, spire, and riverside structures only.
4. `06-the-thames`: removed the false waterline, leaving the visible wharf opening and boat-bow structure.
5. `11-alfred-stieglitz`: removed the unsupported symmetric coat-shoulder trace; the remaining face, portrait axis, and upper tonal break make no shoulder claim.
6. `12-max-weber`: removed the false brow/background line; the three-quarter portrait and near-eye annotations remain visually aligned.

`content/alvin-langdon-coburn/chapter.mdx` and `src/chapters/alvin-langdon-coburn.mdx` were confirmed byte-identical. The revised proofs were re-rendered from fresh analyzer records, passed visual review, and scored 100/100 with no deductions or warnings.

## Critique round — 2026-07-16

Reviewed all twelve current proof PNGs against their source images, overlay specs, analyzer records, `sources.md`, `research.md`, manifest, and both byte-identical chapter copies. Independent fresh-eyes audits were reduced against the current proofs and the prior resolution trail before classification. The prior resolved findings remain settled: no material regression was found in the reproduced print frames, portraits, bridge figure, rigging/reflection distinction, girders, or the previously removed detector-derived lines.

### Required

1. `11-alfred-stieglitz`: correct the repeated claim that the face is “illuminated” or “lit.” The current proof shows a predominantly dark profile and coat set against a pale oval ground; the face is not the bright tonal mass described by `chapter.mdx` (body paragraph and caption), `sources.md`, and the overlay `notes`. Recast those statements to identify the dark profile/silhouette against the pale oval ground. The existing `FACE` ellipse still identifies the correct head area and does not itself require a geometric change.

### Advisory (non-blocking)

No new advisory findings.

## Resolution — 2026-07-16

Re-verified every Required item from the complete prior critique history: `e67c836`, `009f7ed`, `17d9e7d`, and `9f0a8db`, as well as the current `789516a` round. The source descriptions still identify the Mortimer Street interior and Shaw's head-and-beard portrait; *Spider-Webs* continues to name boat rigging and reflected rigging rather than a literal web; the resolved portrait, bridge-figure, distant-deck, girders, Max Weber three-quarter-pose/near-eye, and twelve-file rights-basis findings remain correct. The removed false detector-derived lines have not returned; the Mortimer Street frames terminate on their named physical objects; the Wells hand, St. Paul's, Thames, Stieglitz, and Max Weber annotations remain truthful.

1. `11-alfred-stieglitz`: replaced the inaccurate illuminated/lit-face language in the overlay note, source note, chapter body, chapter caption, and proof contact-sheet caption. They now identify the dark profile and coat against the pale oval ground; the existing face ellipse remains geometrically aligned.

The affected image received a fresh analysis, render, score, and visual pass; it scored 100/100 with no deductions or warnings. All twelve current overlays also score 100/100 with no deductions or warnings, and their proofs received a fresh visual review. `content/alvin-langdon-coburn/chapter.mdx` and `src/chapters/alvin-langdon-coburn.mdx` remain byte-identical.

## Critique round — 2026-07-16

Reviewed all twelve current proof PNGs against their matching source images, overlay specs, analyzer records, `sources.md`, `research.md`, manifest, and chapter text. Each stored overlay scored 100/100 with no deterministic deductions or warnings. The chapter's numeric claims agree with the current analysis records: Chesterton's 0.008 edge density, St. Paul's 0.82 vertical symmetry, the Thames boat bow at `x0.443, y0.727` and tonal range `p05 0.12` to `p95 0.94`, Williamsburg Bridge's 0.01-to-0.95 tonal range, and Stieglitz's 0.001 edge density. No source or chapter text invents camera settings.

All resolved findings remain settled without material regression: the Mortimer Street mount and photograph frames reach their named edges; the Wells hand, Shaw, Chesterton, St. Paul's, Thames, and Stieglitz annotations make no restored false structural claim; the Venice figure, Spider-Webs rigging/reflection distinction, Williamsburg deck and girders, and Weber three-quarter portrait/near-eye remain truthful.

### Required

None.

### Advisory (non-blocking)

No new advisories. The previously recorded small empty-field overshoot at the first point of `03-portrait-of-george-bernard-shaw`'s `HEAD AND BEARD DIAGONAL` remains within the established non-blocking assessment and has not materially regressed.
