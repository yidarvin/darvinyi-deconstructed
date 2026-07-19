verdict: approve

## Builder resolution — 2026-07-18

Re-verified every required fix in the full critique history: the initial **2026-07-18** round and the follow-up **2026-07-18** round.

1. **03-central-park-zoo:** removed the unsupported `DIVERGENT GAZES` polyline; the crowd band, right-edge child, and human-animal quartet remain visually truthful.
2. **04-cape-kennedy-apollo-11:** replaced the false detector-led platform horizon with a `SPECTATOR WALL TOP` polyline on the pictured wall edge; adjusted the chapter so it no longer treats the lower tonal split as a structural platform.
3. **08-new-york-phone-booth:** replaced the false mailbox anchor with a visually checked `USPS MAILBOX` ellipse over the actual left-edge mailbox and removed the axis-aligned `TILTED PHONE BOOTH` box; the aligned booth-edge and passerby lines remain.
4. **09-hippy-hollow-lake-travis:** removed the false `WATERLINE` horizon and its chapter claim while retaining the already-correct `WADING FIGURE` ellipse at `(0.390, 0.550)`.
5. **11-venice-california:** redrew `BLOCKING ARM` as a short multi-point contour along the foreground arm; the earlier removed `BENCH AND PAVEMENT BAND` horizon remains absent.
6. **Prior round retained:** `07`'s `BARE TREE` follows the trunk, and `12`'s `REFLECTED ANIMAL` ellipse remains on the reflected face.

Fresh analysis, render, deterministic scoring, and visual checks passed for `03`, `04`, `08`, `09`, and `11` (100/100 each). The regenerated contact sheet includes all twelve proofs. `scripts/check.sh` passed, including pipeline validation, chapter-byte-parity, tests, and production build.

## Builder resolution — 2026-07-18

Re-verified the full required-fix history: critique round **2026-07-18** (the only prior round in `git log -p -- content/garry-winogrand/critique.md`).

1. **07-peace-demonstration-central-park:** moved the `BARE TREE` polyline onto the pictured trunk (x 0.432–0.450 through its visible height), then re-rendered and visually checked the proof.
2. **09-hippy-hollow-lake-travis:** replaced the detector-driven false `subject_anchor` with a `WADING FIGURE` ellipse at the actual figure (center 0.390, 0.550); this preserves the intended claim without mislabeling foreground foliage.
3. **11-venice-california:** removed the false `BENCH AND PAVEMENT BAND` horizon claim; the surviving overlay names only the older woman and the blocking arm.
4. **12-new-york-city:** replaced the detector-driven false `subject_anchor` with a `REFLECTED ANIMAL` ellipse at the visible reflected face (center 0.820, 0.127), rather than the oversized arm.

Fresh analysis, render, deterministic scoring, and visual proof checks pass for all four corrected overlays (100/100 each). `scripts/check.sh` passed before this resolution was recorded.

## Critique round — 2026-07-18

### Required fixes

1. **07-peace-demonstration-central-park** — Move or remove the `BARE TREE` polyline. In the proof its near-vertical segment runs at x≈0.50, while the pictured bare trunk runs about x≈0.43–0.45 across the same height. This is a material mismatch, not an endpoint margin: the line does not trace the tree named by its label.
2. **09-hippy-hollow-lake-travis** — Re-anchor `WADING FIGURE`. The current `subject_anchor` at `(0.554, 0.872)` lands in foreground foliage; the nude figure is visible near the middle-left water opening (about `(0.39, 0.55)`). The proof therefore falsely identifies the foliage as the figure.
3. **11-venice-california** — Remove, rename, or relocate the `BENCH AND PAVEMENT BAND` horizon line. At y=`0.524` it cuts across the foreground man's belt and the older woman's torso, not a bench/pavement division. The label names a structure absent at that position.
4. **12-new-york-city** — Re-anchor `REFLECTED ANIMAL`. The current marker `(0.68, 0.127)` is on the oversized hand/arm; the animal's visible reflected face is farther right in the window (about x=`0.82`). This makes the named overlay feature false.

### Advisory (non-blocking)

- **01-worlds-fair-new-york-city** — `DISTANT WALKERS` at y=`0.264` reads more like the hedge/bench transition than the walkers in the upper band. Rename or simplify it on the next normal overlay pass.
- **03-central-park-zoo** — The `DIVERGENT GAZES` polyline is not readily legible as sightlines in the proof. It may be tightened or removed if a subsequent visual pass cannot make that reading clear.
- The deterministic scorer returns 100 for all twelve specs because their geometry matches analyzer suggestions; the required findings above are semantic visual-pass failures that the scorer cannot determine.

### Verified in this round

- All twelve proofs were visually reviewed against their overlay specs and analysis files.
- The chapter's stated analyzer values agree with the analysis JSON within the stated tolerance. The research and chapter do not invent camera, film, or print settings.
- Every image has an Art Institute object record and collection credit, and every fair-use entry provides a concise per-image four-factor rationale. No source-integrity blocker was found.

## Critique round — 2026-07-18

### Required fixes

1. **03-central-park-zoo** — Remove or redraw `DIVERGENT GAZES`. Its polyline starts on the woman's headscarf, arcs above the man's eye line, and ends by the chimp rather than tracing any pictured gaze direction. The labeled feature is therefore not visible as drawn.
2. **04-cape-kennedy-apollo-11** — Remove or accurately relocate `SPECTATOR PLATFORM`. The horizontal at `y=0.608` runs on the gravel below the spectator wall/platform rather than along that structure; the analyzer's tonal split is not evidence for the claimed platform edge.
3. **08-new-york-phone-booth** — Remove or re-anchor `MAILBOX`. The anchor at `(0.116, 0.127)` circles a small bright upper-left form, while the USPS mailbox named by the label is the large object at far-left mid-frame.
4. **08-new-york-phone-booth** — Remove or replace `TILTED PHONE BOOTH` `frame_in_frame`. Its axis-aligned box crosses unrelated storefront space and misses substantial booth structure, so it does not frame the canted booth named by its label. The aligned `BOOTH EDGE` may remain.
5. **09-hippy-hollow-lake-travis** — Remove or relocate `WATERLINE`. The horizontal at `y=0.675` crosses foreground shore vegetation; the visible water/shore boundary is irregular and substantially higher where it can be seen. This also makes the chapter's statement that the overlay marks the waterline false.
6. **11-venice-california** — Remove, relabel, or redraw `BLOCKING ARM`. The polyline from `(0.38, 0.01)` to `(0.50, 0.82)` follows the foreground man's back/torso contour, not the horizontally extended arm that occludes the woman. This is distinct from, and does not reopen, the prior round's resolved `BENCH AND PAVEMENT BAND` finding.

### Advisory (non-blocking)

- **01-worlds-fair-new-york-city** — `CENTRAL GESTURES` is approximate rather than tightly following the pictured hands, but its claim remains intelligible.
- **05-hard-hat-rally** — `CROWD BACKLINE` reads as a broad tonal/crowd transition rather than a discrete backline; a more precise label would improve it.
- **06-centennial-ball-feather-boa** — `FOREGROUND INTERRUPTION` lands on an ambiguous bottom-edge sliver, and `BOA ENCLOSURE` reads as a diagrammatic triangle rather than a close contour. Both are nonessential and may be simplified on the repair pass.

### Verified in this round

- All twelve current proofs were visually reviewed against their overlay specs and analyzer output. The deterministic scorer returns 100/100 for each spec; the required findings above are semantic visual-pass failures outside that geometric score.
- The corrected `BARE TREE`, `WADING FIGURE`, and `REFLECTED ANIMAL` primitives from the prior resolved round now trace their named features. `11`'s newly identified arm/torso mismatch is not a re-raise of that round's removed horizon claim.
- The twelve Art Institute object records, titles, dates, collection credits, IIIF identifiers, per-image four-factor fair-use rationales, and source links are traceable. Chapter and research text contain no invented camera, film, print, or exposure settings.

## Critique round — 2026-07-18

### Required fixes

None.

### Advisory (non-blocking)

- **01-worlds-fair-new-york-city** — `DISTANT WALKERS` still reads more as the hedge/bench transition than as a line through the individual walkers. The upper pedestrian band remains plainly visible and the chapter does not rely on that exact trace, so this is not a material compositional misidentification.
- **06-centennial-ball-feather-boa** — `BOA ENCLOSURE` remains a deliberately diagrammatic three-point enclosure rather than a close contour of the feathers. It still teaches the enclosing relation and does not make a false subject claim.
- **09-hippy-hollow-lake-travis** — the bracketed `TREE OPENING` is necessarily approximate to the irregular branch-made opening. Its placement continues to identify the screened opening around the figure; no false architectural frame is claimed.

### Verified in this round

- Looked at all twelve current proof PNGs against their current overlay specs and analysis. Every deterministic score is 100/100; the resolved `03`, `04`, `08`, `09`, and `11` repairs remain visually truthful, and no settled required finding has materially regressed.
- Chapter measurements match the analyzer output within the stated tolerance (including rounded tonal and edge-density values), and no camera, lens, film, exposure, or print setting is invented.
- All twelve Art Institute object pages and IIIF rendition links are reachable. Each image has artist and collection-credit attribution plus a concise per-image four-factor fair-use rationale; no source-integrity blocker was found.
