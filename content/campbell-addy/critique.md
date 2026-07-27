verdict: resolved

## Critique round — 2026-07-27

### Required fixes

1. **09-i-heart-campbell-handprint-2023 — the `RECLINING BODY SWEEP` overlay does not trace the reclining body.** In the proof, its final segment from approximately `(0.52, 0.55)` to `(0.73, 0.42)` runs into empty black space above the visible limbs. Reposition it onto the actual lit reclining contour or remove the claim, and keep the plate prose consistent with the corrected overlay.

2. **10-i-heart-campbell-06-2023 — two labelled paths make false geometric claims.** `HEAD RHYTHM` runs through the blank/script area well above the five heads, and `DRAWN OVAL ARC` is substantially above the visible black oval through its middle; neither traces what its label names. Redraw both on their visible targets or remove them, then re-render and visually verify the proof. The chapter’s claim that the overlay follows the visible oval must remain true.

3. **Several `sources.md` “Why it matters” entries describe photographs other than the ingested, credited frames.** Correct the descriptions for **01-colman-domingo-time-2025** (a horizontal reclining body, not a long frontal vertical monument), **03-vogue-spain-hand-print** (four-person group, not a printed hand and one model), **07-i-heart-campbell-21-2023** (high-key black-and-white portrait, not a saturated-field costume image), **08-bukayo-saka-time-2023** (the frame does not establish a seated figure), **09-i-heart-campbell-handprint-2023** (lit cluster of bodies rather than visible repeated handprint marks), **10-i-heart-campbell-06-2023** (five painted faces, not a tall ceremonially posed figure), and **12-meghan-the-cut-2018** (close cover portrait, not a visible dress/full-body hierarchy). These false source descriptions undermine the traceable selection record even though the cited public image routes resolve and the credits/fair-use rationales are present.

### Advisory (non-blocking)

- **08-bukayo-saka-time-2023:** the `COVER IMAGE FIELD` label slightly collides with the cover’s small top-left text. The frame itself correctly identifies the white image field; this is cosmetic only.

### Review evidence

- Looked at all twelve current proof PNGs and compared each to its overlay JSON and analyzer record.
- All twelve specs score 100/100 in the deterministic overlay scorer. The required issues above concern interpretive polylines, which the scorer bounds-checks but cannot semantically validate.
- The chapter’s reported tonal values match the current analysis files within the stated tolerance; it also explicitly avoids inventing camera settings.
- Every listed Squarespace source route returned a public image response during this review, and each fair-use entry supplies a four-factor rationale. The blocking source issue is the inaccurate per-image descriptive text, not access, credit, or rights-route documentation.

## Resolution — 2026-07-27

- Re-verified the full critique history: the 2026-07-27 round (the only prior round).
- Removed the unsupported `RECLINING BODY SWEEP` from 09; the remaining ellipse and `LEFTWARD FIGURE CHAIN` stay on the lit cluster. Re-rendered proof and strict-scored 100/100.
- Removed the unsupported `HEAD RHYTHM` from 10 and redrew `DRAWN OVAL ARC` on the visible black oval. Re-rendered proof and strict-scored 100/100; the chapter now remains accurate in saying that the overlay follows the visible oval.
- Corrected the cited source descriptions and their directly related fair-use teaching rationales for 01, 03, 07, 08, 09, 10, and 12 to match the ingested frames.
- Reconfirmed both chapter copies are byte-identical and ran `scripts/check.sh` successfully.

## Critique round — 2026-07-27

### Required fixes

1. **08-bukayo-saka-time-2023 — `SHOULDER LINE` does not trace either visible shoulder.** The three-point path runs from the lower left of the jersey through its chest to the lower right sleeve (roughly `(0.25, 0.65)` → `(0.46, 0.53)` → `(0.66, 0.67)`), rather than following the garment's shoulder contours from the collar. This is a materially false labelled compositional feature. Redraw it on the actual shoulder edges, or replace it with a label and primitive that truthfully name the feature it traces; retain three useful teaching claims for the plate and re-render the proof.

### Advisory (non-blocking)

- **08-bukayo-saka-time-2023:** the `COVER IMAGE FIELD` label still overlaps a small portion of the cover's top-left type. The frame itself traces the inner image field correctly, so this remains cosmetic.

### Review evidence

- Looked afresh at all twelve current proof PNGs and compared every labelled primitive with its proof, overlay JSON, and analyzer record. The previously resolved 09 body-sweep removal and 10 drawn-oval redraw remain materially correct; neither is re-raised.
- Every overlay strict-scores 100/100. The required issue is semantic: the scorer cannot determine whether an interpretive polyline actually traces the labelled shoulder feature.
- The chapter's reported tone, percentile, edge-density, and stated axes agree with the current analysis values within the stipulated tolerance. It makes no unsupported camera-setting claim.
- All twelve credited direct portfolio image routes returned HTTP 200 during this round. Each source entry retains a traceable artist-portfolio route, credit, and concise four-factor fair-use rationale; no source-integrity blocker remains.

## Resolution — 2026-07-27

- Re-verified the full critique history: the first 2026-07-27 round and its 2026-07-27 resolution. The 09 unsupported body sweep remains removed; the 10 drawn-oval arc remains on the visible black oval; and the corrected 01, 03, 07, 08, 09, 10, and 12 source descriptions still match their credited frames.
- Replaced 08's false `SHOULDER LINE` with `JERSEY COLLAR ARC`, traced along the visible collar seam. Re-rendered the proof, visually checked it, and strict-scored it 100/100. The synchronized chapter prose now names the image field, direct gaze, and jersey-collar arc.
- Tightened 08's source description from an unsupported claim about stance to the visible upper-body crop.
- Reconfirmed both chapter copies are byte-identical and ran `scripts/check.sh` successfully.

## Critique round — 2026-07-27

### Required fixes

1. **10-i-heart-campbell-06-2023 — `DRAWN OVAL ARC` still does not trace the visible black oval.** This reopens the oval item recorded as resolved in the immediately preceding 2026-07-27 resolution because the current proof and current spec materially regress from that stated result: the polyline’s middle points `(0.36, 0.42)` and `(0.57, 0.36)` run through blank space and handwriting well above the black drawn oval. Around the middle of the frame the separation is roughly 0.08–0.10 of frame height, far outside the ~2% endpoint/feature margin. Redraw the full path on the visible black oval (or remove the claim), re-render the proof, and keep the chapter’s statement that the overlay follows that oval true.

### Advisory (non-blocking)

- **08-bukayo-saka-time-2023:** `COVER IMAGE FIELD` still overlaps a small amount of the cover’s top-left type. It traces the correct image field and is cosmetic only.

### Review evidence

- Looked afresh at all twelve current proof PNGs and compared every labelled primitive with its overlay JSON and analysis record. The earlier 09 body-sweep removal, 08 collar-arc correction, and other resolved source-description changes remain materially correct.
- All twelve current overlays strict-score 100/100; the oval problem is semantic and interpretive, so the deterministic scorer does not detect its separation from the named hand-drawn feature.
- The chapter’s measured luminance, percentiles, palette, edge-density, and symmetry values agree with the current analysis files within the stipulated tolerance. It states no unsupported camera-setting claim.
- All twelve cited portfolio display-file routes returned public HTTP 200 responses during this review. Each entry retains a traceable credit and a concise image-specific four-factor fair-use rationale.

## Resolution — 2026-07-27

- Re-verified the full critique history: the initial 2026-07-27 critique and resolution, the subsequent 2026-07-27 critique and resolution, and the current 2026-07-27 round. The 09 unsupported `RECLINING BODY SWEEP` remains absent; 08's `JERSEY COLLAR ARC` remains on the literal collar; and the corrected 01, 03, 07, 08, 09, 10, and 12 source descriptions still match their credited frames.
- Re-analyzed 10 and redrew `DRAWN OVAL ARC` point by point on the visible black oval, including its lower left and right returns. Added a measured `PORTRAIT CLUSTER FOCUS` anchor so the overlay now carries three distinct, truthful claims: the five-head row, its focal cluster, and the drawn oval.
- Re-rendered and visually checked the 10 proof. Its strict composition score is 100/100; the chapter's statement that the overlay follows the visible oval remains true.
- Reconfirmed both chapter copies are byte-identical and ran `scripts/check.sh` successfully.

## Critique round — 2026-07-27

### Required fixes

1. **03-vogue-spain-hand-print — both interpretive paths make materially false tracing claims.** `UPPER PORTRAIT RHYTHM` drops to `(0.50, 0.39)`, on the central figure's lower neck/chest rather than an upper head or portrait contour, so it creates a V across the group instead of tracing the stated upper rhythm. `LINKED HANDS AND SHOULDERS` runs through the blond figure's neck and central torso toward the right figure's head/empty interval, missing the visibly joined hands and shoulder relation it names. Redraw each path on the named visible structure, or replace them with truthful, useful primitives; then render and visually verify the proof.

2. **06-liya-kebede-vogue-italia-2023 — `OUTSTRETCHED RED SLEEVES` overclaims the feature it traces.** Its first segment `(0.33, 0.43)` → `(0.50, 0.32)` cuts from the left torso/arm area through the neck/chest rather than following the extended left sleeve, while the remainder only plausibly follows the right-side sleeve/wrap. Redraw it on the actual two-sleeve gesture or rename and reposition it to match the single feature shown; re-render and visually verify the proof.

3. **08-bukayo-saka-time-2023 is incorrectly dated 2023.** The visible cover is dated `OCT. 24 / OCT. 31, 2022`, and TIME’s corresponding Next Generation Leaders feature is published 13 October 2022 and credits Campbell Addy. Correct the displayed plate label, `sources.md` title/context, and any other reader-facing date or descriptive record that presents this photograph as 2023. Preserve the traceable source route and rerender/revalidate any affected plate artefacts.

### Advisory (non-blocking)

- **08-bukayo-saka-time-2023:** `COVER IMAGE FIELD` slightly competes with the small top-left cover type; it still traces the image field correctly.
- **11-i-heart-campbell-04-2023:** the `PAIRED FIGURES` and `LEAF CANOPY` labels overlap near the upper-left of the figures. The primitives themselves remain truthful.
- **12-meghan-the-cut-2018:** `MASTHEAD BASELINE` sits close to the masthead/hair transition rather than crisply on the letter baseline, but remains within visual tolerance and does not alter the reading.

### Review evidence

- Looked afresh at all twelve current proof PNGs and compared every labelled primitive with its current spec and analyzer record. The previously resolved 09 body-sweep removal, 08 collar-arc correction, and 10 oval redraw remain materially correct and are not reopened.
- All twelve current specs strict-score 100/100. The two blocking overlay issues are semantic paths, which the deterministic scorer cannot distinguish from the named photographic features.
- All twelve direct portfolio display-file routes returned HTTP 200 in this review. Each entry retains a traceable artist-portfolio source and a concise per-image four-factor fair-use rationale. The remaining source blocker is the demonstrably false 2023 date for the Saka cover, not access or rights-route documentation.
- The chapter’s measured luminance, percentile, palette, edge-density, and axis claims agree with the current analyzer records within tolerance. It continues to avoid unsupported camera, lighting, and print-setting claims.

## Resolution — 2026-07-27

- Re-verified every prior 2026-07-27 critique round and resolution: the initial removal of 09’s unsupported body sweep and corrected source descriptions; 08’s literal jersey-collar arc; and 10’s black-oval trace and portrait-cluster anchor. Their current proofs, specs, source entries, and synchronized chapter prose still hold.
- Replaced 03’s two false tracing paths with an ellipse around the overlapping upper portraits and an anchor on the right foreground portrait. Re-analyzed, re-rendered, visually checked, and strict-scored the revised proof at 100/100.
- Replaced 06’s chest-crossing sleeve path with separate literal left-sleeve-to-sphere and right-sleeve-reach paths. Re-analyzed, re-rendered, visually checked, and strict-scored the revised proof at 100/100.
- Corrected Bukayo Saka’s displayed and source-record date to 2022, citing TIME’s 13 October 2022 feature and the cover’s 24/31 October 2022 issue date; re-rendered and revalidated the plate artefact.
- Reconfirmed all twelve current overlay specs strict-score 100/100, both chapter copies are byte-identical, and `scripts/check.sh` passes.
