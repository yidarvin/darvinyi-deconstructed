verdict: approve

## Critique round — 2026-08-02

### Required

1. Correct the per-image source annotations for `03-traditions-highway-05-2017`, `08-miracle-center-bottles-2018-20`, `09-miracle-center-vesna-2018-20`, `10-a-rock-that-floats-2014-16`, and `11-mountain-black-heart-2015-16`. Their current pedagogical descriptions identify scenes or structures not present in the respective sourced display files (respectively: a figure/domestic surface; a salvaged frame and small photograph; a tall found frame; a hovering anomaly and open ground; terrain and obscured depth). Replace them with accurate, image-specific rationales that still document why each complete web-sized frame is needed for the fair-use teaching purpose. These descriptions are part of the source record and presently mislead the reader about the selected works.

### Advisory (non-blocking)

- `05-traditions-highway-girl-baby-2018` and `10-a-rock-that-floats-2014-16`: the top-edge labels clip slightly in the proof composites. The labels still identify the correct features, so this is cosmetic only.
- `09-miracle-center-vesna-2018-20`: the scorer reports three ellipse primitives (97/100) where fewer would be less redundant. Each ellipse accurately traces a distinct vessel or figure, so no change is required.

### Review record

- Looked at all eleven current proof PNGs and checked each matching overlay specification and analyzer result. Deterministic scores are 100/100 for ten proofs and 97/100 for `09`; all are above the acceptance threshold and visually trace the named features.
- Chapter measurements agree with the analyzer within the stated tolerance, including 0.207 edge density for `01`, 0.090–0.804 tonal span for `02`, 0.040 for `06`, 0.013 for `07`, 0.007 for `08`, and 0.114 mean luminance for `10`.
- The chapter makes no invented camera-setting claim: the manifest EXIF fields are empty and the chapter/research note explicitly limits assertions to normalized web derivatives. All eleven listed gallery and direct-file routes returned public HTTP 200 responses without authentication.

## Builder resolution — 2026-08-02

Resolved required item 1. Rechecked the five cited display files and replaced
their source annotations with image-specific descriptions: the three animals in
the clearing; vessels across water; a figure behind scratched glass and vessels;
the red ridge and glow; and the bottle-and-flower still life. Each revised note
also states why the complete web-sized frame is necessary for its compositional
teaching purpose under the documented fair-use assessment.

Reverified prior critique round: 2026-08-02. Its sole required fix now holds;
the chapter remains byte-identical to its rendered `src/chapters` counterpart,
and all eleven existing overlay specs score at least 80 (ten at 100 and `09` at
97) with a clean proof review. `scripts/check.sh` passes.

## Critique round — 2026-08-02

### Required

1. Correct the source annotation for `04-traditions-highway-04-2018` in
   `sources.md`. It currently says that “Diagonal architecture” divides the
   image into compartments, but the sourced display file and proof show a dog
   on a rock ridge above a dense chicken foreground. Replace that false
   description with an accurate, image-specific explanation of why the complete
   web-sized frame is needed for the compositional teaching purpose and retain
   the documented fair-use basis.

### Advisory (non-blocking)

- No new overlay or chapter-prose issue found. All eleven proofs remain
  materially faithful to their specifications; deterministic scores are 100/100
  except `09-miracle-center-vesna-2018-20` at 97/100 for its three ellipses,
  which remains the previously settled non-blocking redundancy warning.
- The slight top-edge label clipping on
  `05-traditions-highway-girl-baby-2018` and
  `10-a-rock-that-floats-2014-16` remains cosmetic and previously settled.

### Review record

- Looked at every current proof PNG and checked each matching overlay and
  analyzer result. The resolved corrections for `03` and `08`–`11` remain
  accurate; this is a distinct, previously unraised error in `04`'s source
  annotation.
- All eleven direct CPM Gallery image routes returned public HTTP 200 responses
  during this review. The chapter's reported derivative measurements agree with
  the analyzer values within the stated tolerance, and no camera setting is
  asserted.

## Builder resolution — 2026-08-02

Resolved required item 1. Rechecked the sourced display file for
`04-traditions-highway-04-2018` and replaced the false architecture annotation
with an image-specific account of the dog on the tilted rock ridge above the
crowded chicken foreground. The revised record explains why the complete
web-sized frame is pedagogically necessary and retains its documented fair-use
basis, credit, and source links.

Reverified prior critique round: 2026-08-02 (required source-annotation
corrections for `03` and `08`–`11`). Those descriptions remain accurate against
the ingested display files. I also reviewed all eleven current proofs and
re-ran their deterministic scores: ten score 100/100 and `09` scores 97/100
for its settled non-blocking ellipse-redundancy warning; all pass the 80-point
threshold. The chapter remains byte-identical to
`src/chapters/irina-rozovsky.mdx`; its documented derivative measurements and
absence of invented camera settings remain intact. `scripts/check.sh` passes.

## Critique round — 2026-08-02

### Required

1. Correct the unsupported familial identification for
   `05-traditions-highway-girl-baby-2018`. The source record's direct-file
   route identifies the work only as `girl and baby`; neither it nor the
   visible frame establishes that the adult holding the child is the child's
   mother. Replace `MOTHER AND CHILD` in the overlay and the chapter's
   `mother-and-child` / `mother and child` wording with an observational,
   non-familial description (for example, adult and child), including the
   plate caption. This is a required subject-identification correction, not a
   stylistic preference.

### Advisory (non-blocking)

- The previously settled slight clipping of the top-edge labels for `05` and
  `10`, and the three-ellipse redundancy warning for `09` (97/100), remain
  cosmetic/non-misleading and are not reopened.

### Review record

- Looked at every current proof PNG against its image, overlay spec, and
  analyzer result. The labeled structures visibly trace their named features;
  all deterministic scores pass (ten at 100/100, `09` at 97/100).
- Rechecked chapter measurements against the analysis JSON: the cited
  edge-density, tonal-span, and mean-luminance values remain within the stated
  tolerance. The chapter makes no camera-setting claim.
- Rechecked the CPM gallery route and all eleven linked direct display files:
  each returned public HTTP 200 without authentication. Credits, routes, and
  the documented per-image fair-use assessment remain traceable.

## Builder resolution — 2026-08-02

Resolved required item 1. Replaced the unsupported familial identification for
`05-traditions-highway-girl-baby-2018` with the observational `ADULT AND
CHILD` in its overlay and changed the overlay thesis, chapter prose, and plate
caption to the same non-familial wording. Re-rendered its proof and regenerated
the contact sheet; the updated overlay scores 100/100 and cleanly follows the
doorway and the paired subjects.

Reverified prior critique rounds: 2026-08-02 (the required source annotations
for `03` and `08`–`11`) and 2026-08-02 (the required source annotation for
`04`). I re-opened the six cited display files and confirmed that the current
source records respectively describe the two ponies and goat, the vessels over
water, the figure behind scratched glass and vessels, the red ridge and glow,
the bottle-and-flower still life, and the dog above the chicken foreground.
Their current chapter text and overlays remain consistent with those records.
All eleven deterministic overlay checks pass at the 80-point threshold (ten
100/100; `09` 97/100 with only its settled ellipse-redundancy advisory), and
the two chapter copies remain byte-identical. `scripts/check.sh` passes.

## Critique round — 2026-08-02

### Required

None.

### Advisory (non-blocking)

- `09-miracle-center-vesna-2018-20` retains three ellipse primitives (97/100),
  the previously settled redundancy warning. Each still traces a distinct,
  correctly named vessel or figure, so it does not mislead.
- The slight top-edge label clipping on
  `05-traditions-highway-girl-baby-2018` and
  `10-a-rock-that-floats-2014-16` remains cosmetic and previously settled.

### Review record

- Looked at all eleven current proof PNGs against their underlying photographs,
  overlay specifications, and analyzer records. Every primitive names and
  traces a visible feature, with three composition-teaching primitives per
  image. Rechecked prior resolved source and subject-identification fixes;
  none has regressed.
- Re-ran the deterministic overlay checks: ten proofs score 100/100 and
  `09-miracle-center-vesna-2018-20` scores 97/100 solely for the non-blocking
  three-ellipse warning. All pass the 80-point threshold. The chapter's cited
  derivative measurements agree with the analysis JSON within the stated
  tolerance, and it asserts no camera settings.
- All eleven linked CPM Gallery display files returned public HTTP 200
  responses without authentication. Each source entry retains its credit,
  direct route, and documented fair-use rationale, including all four factors.
