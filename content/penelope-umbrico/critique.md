verdict: approve

## Critique round — 2026-07-26

### Required

1. **06-weston-calotype-filters** — Correct the subject description in `sources.md`. Its “Why it matters” entry calls the work “a borrowed modernist still-life,” but the supplied proof visibly depicts a mountain landscape; the current overlay likewise traces a `MOUNTAIN-RIDGE CONTOUR`, and the chapter accurately describes a mountain-like contour. Replace the still-life identification with a visually supported landscape/mountain description without asserting unverified provenance.

### Advisory (non-blocking)

- **07-swiss-alps-duotone-filters** — The source-note phrase “red-orange grading” does not closely describe the predominantly pale green, purple, and brown duotone visible in the proof. Consider using a less specific color-treatment description. This does not affect the chapter’s materially accurate reading.

### Review evidence

- All 12 rendered proofs were visually checked against their overlay specs. The scored overlays pass their required threshold (82–100); the labels and primitives are materially truthful in the rendered images.
- Chapter numeric claims match the corresponding analyzer output within tolerance. The chapter and research note correctly withhold unverified camera, print, and capture settings.
- Each plate has a reachable gallery record and public display rendition, an identified credit/rightsholder notice, and a concise per-image four-factor fair-use rationale.

## Builder validation note — 2026-07-26

- Resolved required item 1: the source note for plate 06 now identifies only the visually supported mountain landscape, without asserting unverified provenance.
- Applied the inexpensive advisory correction for plate 07: the source note now describes its visible pale green, purple, and brown color treatment.
- Re-verified every required item from the full critique history: round 2026-07-26 (the only prior round). The plate 06 proof still shows the mountain landscape named by its `MOUNTAIN-RIDGE CONTOUR` overlay; the chapter's existing "mountain-like contour" reading remains accurate.
- Re-ran all twelve overlay scores (82–100, each passing the required 80 threshold), visually checked the proof contact sheet, confirmed chapter-copy parity, and passed `scripts/check.sh` plus `python3 scripts/validate_pipeline.py`.

## Critique round — 2026-07-26

### Required

1. **06-weston-calotype-filters** — Correct the `notes` thesis in
   `overlays/06-weston-calotype-filters.json`. It still says that the filter
   field presses “a borrowed still-life” into a mediated surface, while the
   current proof visibly depicts a mountain landscape and its primitive is
   correctly labeled `MOUNTAIN-RIDGE CONTOUR`. Replace the false still-life
   identification with a visually supported mountain/landscape description.
   This is not a reopening of the prior `sources.md` finding: that source-note
   correction remains resolved; the remaining false claim is in the current
   overlay specification.

### Advisory (non-blocking)

- None.

### Review evidence

- Visually rechecked all twelve current proof PNGs against their overlay specs
  and analyzer outputs. Apart from the plate 06 spec-thesis misidentification,
  the 3–5 primitives per plate trace the named visible structures and the
  rerun scores pass at 82–100.
- Chapter values agree with the analyzer at the stated precision; the chapter
  and research note do not invent camera or print settings.
- All twelve gallery-record and public-display URLs returned HTTP 200, and
  every plate retains a per-image four-factor fair-use rationale, credit, and
  source link.

## Builder resolution — 2026-07-26

- Resolved required item 1: the plate 06 overlay thesis now identifies the
  visibly supported mountain landscape rather than a still-life.
- Re-verified required fixes from both prior critique rounds dated 2026-07-26:
  the earlier `sources.md` correction still describes plate 06 only as a
  mountain landscape, and the current overlay thesis now matches its
  `MOUNTAIN-RIDGE CONTOUR` primitive and the rendered proof.
- Re-rendered and visually checked plate 06; its pane frames and ridge contour
  remain aligned to the visible image, and its deterministic overlay score is
  100/100 (passing the 80 threshold).
- Passed `scripts/check.sh`, `python3 scripts/validate_pipeline.py`, and
  chapter-copy parity verification.

## Critique round — 2026-07-26

### Required

1. **Documented material and edition information is incorrectly denied throughout the chapter and research note.** The linked David B. Smith Gallery records do supply material data for all twelve selected works—for example: 01 and 03, chromogenic machine prints; 05, archival pigment prints; 06–10, chromogenic prints; 11, archival giclée prints on polyester canvas with UV protective coating; and 12, c-prints on metallic paper mounted to aluminum. Several records also state dimensions and/or edition information. Correct the claims in `research.md` and `chapter.mdx` that the supplied sources state no print medium, edition, dimensions, or material specification (including the final Callout). Preserve the justified caution about unverified exposure, lens, and original-source settings, but do not characterize documented object metadata as unavailable.

2. **05-range-masters-of-photography — Correct the chapter/research denial of the documented workflow.** Its linked gallery record says that Umbrico rephotographed mountain images with her iPhone and processed them through camera apps. `chapter.mdx` and `research.md` currently say the record provides no camera information or capture workflow. Replace that false blanket denial with an accurate, bounded account; it still must not invent lens, exposure, or other unrecorded settings.

3. **10-adams-lomoredscale-filters — Correct the unsupported physical claim in the overlay and chapter.** The rendered proof supports a vertical visual/color division, but not the overlay label `PRINT DIVISION` or the chapter’s claim that it is a “material boundary.” The linked record identifies the object as a single chromogenic print and does not establish a physical internal seam. Rename the primitive and revise the corresponding chapter language to describe the visible image/color division only.

### Advisory (non-blocking)

- None.

### Review evidence

- Visually rechecked all twelve rendered proof PNGs against their specs. Apart from the plate 10 physical-seam claim, the 3–5 primitives per plate trace the named visible structures; rerun deterministic scores pass at 82–100.
- The prior plate 06 mountain-landscape correction and plate 07 color-treatment correction remain resolved. The new source-integrity findings are not a reopening of those settled fixes.
- Every linked gallery record and public display rendition returned HTTP 200. Each source entry retains a credit/rightsholder notice and concise per-image four-factor fair-use rationale.

## Builder resolution — 2026-07-26

- Resolved required item 1: `research.md` now records the documented material,
  dimension, and edition information for all twelve selected works. The chapter
  and its byte-identical site copy now distinguish that object metadata from the
  still-unrecorded exposure, lens, lighting, and original-source settings.
- Resolved required item 2: the *Range* research note and plate discussion now
  state the gallery's bounded account of Umbrico rephotographing mountain images
  with her iPhone and processing them through camera apps, without inferring any
  further capture settings.
- Resolved required item 3: plate 10's overlay, proof, caption, and prose now
  identify the visible `VERTICAL COLOR DIVISION`, not a physical print seam.
  The re-rendered proof was visually checked and scored 94/100, above the
  required 80 threshold.
- Re-verified every required fix from all prior critique rounds dated
  2026-07-26: round 1's `sources.md` mountain-landscape correction, round 2's
  plate 06 overlay-thesis correction, and this round's three source-integrity
  fixes. Plate 06 still labels the visible `MOUNTAIN-RIDGE CONTOUR`; the prior
  plate 07 advisory correction still accurately describes its pale green,
  purple, and brown treatment.
- Re-ran all twelve overlay scores (82–100 before this plate-10 label-only
  revision; 94 for the re-rendered plate 10), visually rechecked plates 06, 07,
  and 10, confirmed chapter-copy parity, and passed `scripts/check.sh` plus
  `python3 scripts/validate_pipeline.py`.

## Critique round — 2026-07-26

### Required

1. **02-everyones-photos-any-license — correct the enclosing frame and baseline claims.** The `FIVE-PANEL ENSEMBLE` frame ends at y=0.80 while several visible panels continue to roughly y=0.90, so it does not trace the ensemble it labels. The `COMMON DISPLAY BASELINE` at y=0.78 also crosses the interiors of the panels rather than a common bottom edge. Retarget these primitives to the visible panel bounds/baseline or remove them; the current proof materially misstates the displayed structure.

2. **04-suns-out-takes-birds-blue — retarget or remove `BIRD INTERRUPTIONS`.** The polyline vertices at x=0.28–0.61, y=0.14–0.16 run through empty sky for several segments and do not trace the visible bird silhouettes. A path labeled as birds must land on the birds it names.

3. **05-range-masters-of-photography — remove or correctly retarget the false recession geometry.** `GALLERY CORNER RECESSION` is placed at (0.37, 0.52), on the central framed-work area rather than the visible gallery corner; the `FLOOR-WALL EDGE` line also leaves the actual boundary after that corner and crosses the wall/artworks. The proof and the analyzer do not support the current vanishing-point claim. Use only the actual architectural edges or revise the compositional reading to avoid a false convergence claim.

## Builder resolution — 2026-07-26

- Resolved required item 1: plate 02's `FIVE-PANEL ENSEMBLE` now encloses
  the full staggered installation through y=0.92, and the false common
  baseline is now a `STAGGERED PANEL FOOTINGS` path following the visible
  lower edges. The caption and discussion now describe staggered, not shared,
  lower edges.
- Resolved required item 2: removed the plate 04 `BIRD INTERRUPTIONS`
  polyline rather than joining separated silhouettes with an invented flight
  path. The chapter explicitly leaves the bird silhouettes unconnected.
- Resolved required item 3: removed plate 05's unsupported vanishing point,
  retargeted the floor-wall line to the actual left boundary only, and revised
  its caption and prose to avoid a false convergence claim.
- Applied the inexpensive advisory correction: plate 08's broad framed area is
  now labeled `EXPOSURE STRIP`, not `ORANGE EXPOSURE STRIP`.
- Re-verified every required fix from all prior critique rounds on 2026-07-26:
  plate 06's sources and overlay still identify only the mountain landscape;
  documented materials, dimensions, editions, and bounded *Range* workflow
  information remain in research and chapter prose; and plate 10 still labels
  a visible `VERTICAL COLOR DIVISION`, not a physical print seam.
- Re-analyzed, rendered, scored, and visually checked plates 02, 04, 05, and
  08. All twelve current overlays score 82–100; chapter and site copies are
  byte-identical; and `python3 scripts/validate_pipeline.py` passes. The full
  `scripts/check.sh` gate cannot complete because Vitest hangs before test
  discovery; retry this exact unit after the test runner is healthy.

### Advisory (non-blocking)

- **08-adams-splitscreen-filters** — `ORANGE EXPOSURE STRIP` encloses both the orange band and an adjacent broad white flare through the black divider. Consider either narrowing the frame to the orange band or using a broader label such as `EXPOSURE STRIP`.

### Review evidence

- Independently inspected all twelve current proof PNGs against their image, overlay, and analyzer files. Current deterministic scores are 82–100; detector warnings for otherwise visibly valid seams and interpretive paths were not elevated. The required items above are visual/semantic mismatches, not score-threshold failures.
- Fresh-eyes review corroborated the proof-level findings for plates 02, 04, and 05. Plates 06–12 remain materially truthful; in particular, plate 10 continues to identify a visible `VERTICAL COLOR DIVISION`, not a physical print seam.
- All twelve gallery-record and public-display source URLs returned HTTP 200 in this review. Each source entry retains a credit/rightsholder notice and concise four-factor fair-use rationale. The chapter's source and settings claims remain supported; no limited-source fallback applies.

## Critique round — 2026-07-26

### Required

None.

### Advisory (non-blocking)

None.

### Review evidence

- Independently viewed all twelve current proof PNGs against their overlay specs and analyzer output. The 3–5 primitives per plate truthfully identify visible seams, panel bounds, architectural edges, landscape contours, and repeated fields; no prior resolved finding has materially regressed. The deterministic scores remain 82–100, with detector warnings only where the visual pass confirms an otherwise valid seam or interpretive path.
- Chapter prose, captions, and numeric analysis claims match the rendered images and current analysis within the specified tolerance. The documented object metadata and the bounded *Range* iPhone/camera-app workflow are retained, while no camera, exposure, lens, or original-source settings are invented.
- Each of the twelve plates has a reachable gallery record and public display rendition (all 24 URLs returned HTTP 200), a stated credit/rightsholder notice, and a concise per-image four-factor fair-use rationale. The chapter is not in limited source mode.
