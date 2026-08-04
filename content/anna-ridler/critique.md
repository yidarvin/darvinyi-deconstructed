verdict: resolved

## Critique round — 2026-08-03

### Required fixes

1. **01-mosaic-virus-2019-screen — correct the source-note description.** The proof visibly shows three vertical screens on a bright white gallery wall, with a viewer in front. Its shortlist text instead says that “One glowing tulip screen dominates a dark exhibition field.” This is a wrong count and materially reverses the displayed setting; revise the `Why it matters` description to match the sourced image.
2. **02-mosaic-virus-2019-screen-pair — correct the false pair/two-screen description.** The proof, its overlay (`SCREEN INTERVAL` across three displays), and the chapter caption all show three screens. The shortlist heading calls it a “paired screen view,” and its `Why it matters` text says “Two illuminated screens.” Correct the source-note heading and description to the three-screen view.
3. **04-mosaic-virus-2019-projection — correct the source-note subject and setting.** The proof shows three separate vertical display screens, not one large flower projection. The shortlist currently calls it a “projection view” and describes a “large flower projection ... against the room’s hard edges.” Replace that materially false description with one that identifies the visible three-screen display.
4. **10-myriad-tulips-process-grid — correct the source-note description.** The proof is a studio worktable with cut tulips, buckets, a camera, books, and a small black backdrop. The shortlist instead describes “rows of small frames” accumulating upward. Revise the heading/`Why it matters` text so the source note truthfully describes the photographed workspace.

### Advisory (non-blocking)

- No additional material overlay, pedagogy, analyzer-value, camera-setting, or fair-use/source-traceability defect was found. All twelve cited official artist routes and the V&A context route returned successfully during this review; every selection has a per-image four-factor fair-use rationale. The rendered overlays use three to four legible primitives and, on visual inspection, trace the named screen, tile, annotation, workspace, still-life, or composite features.

## Builder resolution — 2026-08-03

Resolved all four required source-note corrections from the 2026-08-03 critique round.

1. **01** now identifies the three vertical screens, bright white wall, and viewer; its fair-use rationale now describes that complete relationship.
2. **02** is titled and described as a three-screen view, with the fair-use rationale corrected from paired/two-screen language.
3. **04** is titled and described as a three-screen display view, and its rationale no longer describes a single projection.
4. **10** is titled and described as a studio workspace with cut tulips, buckets, camera, books, and a black backdrop; its rationale now assesses that workspace.

Re-verified every required fix from the complete available critique history: the 2026-08-03 round. Re-rendered the independently identified label-collision overlays for 01, 04, and 08; each has a clean visual pass and scores 100/100. `scripts/check.sh` passes.

## Critique round — 2026-08-03

### Required fixes

1. **04-mosaic-virus-2019-projection — make `THREE-SCREEN FIELD` trace the three screens.** The `frame_in_frame` begins at the screens’ top (`y=0.178`) but its `h=0.706` places its lower corners at `y=0.884`; the three displays in the proof end around `y=0.69`, leaving a large expanse of empty gallery wall inside the labeled field. Tighten the frame to the actual three-screen group, or rename it to a feature that genuinely includes the lower wall. This is materially beyond endpoint tolerance and currently misidentifies the framed structure.
2. **06-mosaic-virus-2018-still-a — correct the source-note account of the image as a grid.** The proof is a tall multi-tile field of generated tulips, not “a vertical generated bloom.” The artist’s current *Mosaic Virus 2018* page likewise identifies the single-screen work as “a grid of AI-generated tulips.” Update the `Why it matters` text and the Factor 1/3 wording so they accurately explain the repeated tile field and its dark surround.
3. **07-mosaic-virus-2018-still-b — correct the source-note account of the image as a grid.** This proof is another tiled field, with an especially disrupted bloom within it; it is not a single “vertical state” whose petal masses simply crowd the center. Revise the `Why it matters` text and corresponding Factor 1/3 rationale to describe the grid and the localized disrupted tile truthfully.
4. **12-snapshots-orchids — make `POLAROID COMPOSITE` trace the mounted composite.** The `frame_in_frame` uses `y=0.143, h=0.748`, placing its lower corners at `y=0.891`, well below the framed 108-Polaroid work (which ends around `y=0.82` in the proof). Tighten the lower boundary to the actual composite/frame; the present bracket materially includes blank wall and shadow rather than the feature its label names.

### Advisory (non-blocking)

- The four source-note fixes resolved in the preceding round for 01, 02, 04, and 10 remain correct. Apart from the required items above, the proofs’ named primitives, chapter measurements, camera-setting caveat, credits, and per-image fair-use rationales are materially supported by the current files and artist records.

## Builder resolution — 2026-08-03

Resolved all four required fixes from the current critique round.

1. **04-mosaic-virus-2019-projection:** tightened `THREE-SCREEN FIELD` to `x=0.103`, `y=0.175`, `w=0.796`, `h=0.516`, which traces the three display frames without including the lower gallery wall. The regenerated proof has a clean visual pass and scores 100/100.
2. **06-mosaic-virus-2018-still-a:** re-verified `sources.md`: the shortlist, Factor 1, and Factor 3 describe a tiled generated-tulip field and its dark surround, rather than a single vertical bloom.
3. **07-mosaic-virus-2018-still-b:** re-verified `sources.md`: the shortlist and Factor 1/3 wording describe the tiled field and the local disrupted bloom, rather than a single vertical state.
4. **12-snapshots-orchids:** tightened `POLAROID COMPOSITE` to `h=0.677` (from the existing `x=0.165`, `y=0.143`, `w=0.672`), so its lower edge meets the mounted composite/frame rather than blank wall and shadow. The regenerated proof has a clean visual pass and scores 100/100.

Re-verified every required fix in the complete critique history: the initial 2026-08-03 round (01, 02, 04, and 10 source-note corrections) and the current 2026-08-03 round (04, 06, 07, and 12). The earlier 01/02/04/10 source descriptions remain truthful; 06/07 retain their grid-based language; the revised 04 and 12 overlays remain geometrically scored and visually aligned. `scripts/check.sh` and pipeline validation are run after this resolution.
