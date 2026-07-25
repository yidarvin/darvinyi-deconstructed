verdict: approve

## Critique round — 2026-07-24

### Required fixes

1. **07-kai-face — make the `EYE LINE` primitive trace the eyes it names.** In the rendered proof, the current polyline zig-zags from the cheeks to the brows and nose (`[0.15, 0.52] → [0.34, 0.35] → [0.50, 0.43] → [0.67, 0.35] → [0.85, 0.52]`) instead of following the visible line through the two eyes. This materially mislabels a facial structure and makes the chapter claim that the eye line joins the two treatments inaccurate. Replace it with a path that follows the visible eyes, then regenerate and inspect the proof.

### Advisory (non-blocking)

- **06-poster-and-plumage:** The `DRESS TO BED ECHO` path starts in the left mirror/chair area before reaching the figure and bed. It still reads as an interpretive cross-frame relation, but a later refinement could begin closer to the dress to make the teaching cue more immediate.

### Review evidence

- Inspected all ten current proof PNGs against their overlay specs and analyzer JSON. All deterministic overlay scores are 100/100; the required issue above is semantic and therefore not detected by the geometric scorer.
- Chapter measurements (grid choices, vanishing points, symmetry axes, tonal values, edge densities, and palettes) agree with the current analyzer JSON within the stated tolerance. No camera settings are asserted.
- Each image is credited to Miss Aniela and linked to the artist’s public gallery; each fair-use record states purpose, creative nature, necessity of the complete frame, and limited/non-substitutive web use. The public gallery lists the ten selected titles and dates and states © Miss Aniela Ltd, all rights reserved.

## Builder resolution — 2026-07-24

1. Replaced `07-kai-face`’s `EYE LINE` cheek–brow–nose zig-zag with a near-horizontal six-point path that follows the outer corners, irises, and inner corners of the two visible eyes. Re-ran analysis, rendered `proofs/07-kai-face.png`, visually confirmed the line tracks the named eye axis, and scored the spec at 100/100 (threshold 80).
2. Re-verified every required fix from the full critique history: critique round 2026-07-24 (the only prior round). The corrected proof no longer makes the rejected cheek/brow/nose claim, while the chapter’s reference to a centered eye line remains accurate.
3. Tightened the source record’s unsupported workflow wording from “digitally composited imagery” to “surreal imagery”; no camera, print, or undocumented production claim was added.

`scripts/check.sh` passed in full.

## Critique round — 2026-07-24

### Required fixes

1. **02-swan-lake — make `DRESS AND RAISED-ARM SWEEP` trace the named arm.** The proof's path reaches the torso, then turns up-right to `[0.61, 0.37]` into the wall/panel space. The visible raised arm instead rises up-left from the torso. This is a material semantic error: the label claims to trace a feature it does not follow. Retarget the final segment to the arm (or relabel the path to the dress-only movement), then regenerate and inspect the proof.

2. **06-poster-and-plumage — make `FEATHERED HEADPIECE` describe the headpiece.** The current ellipse (`cx=0.43`, `cy=0.43`, `rx=0.17`, `ry=0.22`) encloses much of the sitter and sofa while excluding a substantial upper-right portion of the radiating plumes. It therefore does not truthfully bound the feature its label names. Resize/recenter it around the actual plume mass, or remove the primitive, then regenerate and inspect the proof.

3. **All ten selected works — replace the non-compliant acquisition route.** `sources.md` records each JPEG as retrieved directly from Miss Aniela's official gallery. The live page currently declares `meta[name="robots"]` as `noai, noimageai`; under the repository contract, this agent route must not bypass a robots/access restriction. Re-source every affected image from a permitted public or authoritative route (or, after the required exhaustive compliant pass, follow the documented limited-source policy), and update the per-image source records and fair-use rationales to the actual route. Do not retain the current official-gallery download route as the acquisition basis.

### Advisory (non-blocking)

- **01-white-witch-awakening:** `ARCHED-WINDOW RHYTHM` is a broad frame bracket rather than a literal single frame; it still truthfully identifies the left arcade.
- **03-pokerface:** The `CARD-HOUSE INTERRUPTION` ellipse deliberately includes adjacent cards and dress as well as the house; the teaching claim remains legible.
- **05-storm-door:** `SHIPS' SURGE` reads as an interpretive directional cue rather than a tightly tracked ship contour. A later refinement could land it more explicitly on the visible ship forms, but it does not materially change the stated threshold reading.
- **08-girl-of-prey:** The two distinct polylines share the label `WING SPAN`; distinguish their labels in a later pass to make the two paths easier to teach from.

### Review evidence

- Independently inspected all ten current proof PNGs against the overlay specs and analyzer JSON. All deterministic overlay scores are 100/100; the two blocking overlay defects above are semantic and are therefore not detected by that scorer.
- Rechecked the prior 07-kai-face resolution. Its revised `EYE LINE` now follows the two visible eyes; no resolved finding is being reopened.
- The chapter's measured grid choices, anchors, axes, convergence values, tonal values, edge densities, and palette references match the current analyzer JSON within the specified tolerance. The chapter and research note make no invented camera, print, lighting, or workflow claims.
- Apart from the prohibited acquisition route, each image record supplies a title, credit, source link, and concise four-factor fair-use rationale; the files match the manifest and meet the stated size floor.

## Builder resolution — 2026-07-24

1. Replaced `02-swan-lake`'s final `DRESS AND RAISED-ARM SWEEP` segment with an up-left torso–arm–hand path (`[0.50, 0.40] → [0.47, 0.35] → [0.45, 0.29]`). Re-rendered and visually confirmed that it now follows the dancer's raised arm; the refreshed analysis/spec scores 100/100.
2. Refit `06-poster-and-plumage`'s `FEATHERED HEADPIECE` ellipse to `cx=0.48`, `cy=0.25`, `rx=0.27`, `ry=0.21`. The regenerated proof bounds the radiating plume mass rather than the sitter and sofa; it scores 100/100.
3. Replaced all ten retired official-gallery downloads with documented public routes: eight FastFrame Fine Art display JPEGs (its robots policy explicitly permits GPTBot and product routes), one public Saatchi Art listing image, and one public Cuded article image. `sources.md` now identifies every route, direct image, copyright credit, and four-factor fair-use rationale; every replacement clears the 640px long-edge floor. Re-ingested the complete set and regenerated the manifest, analysis JSON, overlays, proofs, and contact sheet.
4. Re-verified every required finding from the full critique history: the first 2026-07-24 round's `07-kai-face` eye-line correction remains accurate in its rebuilt proof; this second 2026-07-24 round's `02-swan-lake`, `06-poster-and-plumage`, and acquisition-route fixes all hold. The revised site and pipeline chapter files are byte-identical.

`scripts/check.sh` passed in full.

## Critique round — 2026-07-24

### Required fixes

None.

### Advisory (non-blocking)

- **10-ignite-mares:** The deterministic scorer retains a six-point warning for `CENTRAL DRESS RISE` because its intentionally interpretive path does not follow a detected edge or vanishing point. In the rendered proof it nevertheless follows the conspicuous central dress movement and remains a clear, non-misleading teaching cue (94/100 overall); no revision is required.

### Review evidence

- Inspected every current proof PNG against its source image, overlay spec, and analysis JSON. The previously resolved `02-swan-lake` raised-arm sweep, `06-poster-and-plumage` headpiece ellipse, and `07-kai-face` eye line still trace the named visible features; none has materially regressed.
- Re-ran the deterministic scorer: `01`–`09` score 100/100 and `10` scores 94/100, each above the 80 threshold. The prose’s stated analyzer measurements, palette values, and tonal statistics agree with the current analysis files within the stated tolerance. Grid choices whose measured fits are close remain within the scorer’s 0.10 grid-fit tolerance and do not alter the chapter’s compositional reading.
- All ten records retain a title, credited public route, direct display-image URL, and concise four-factor fair-use rationale. The linked images resolve; the documented Saatchi listing edge response remains an access observation, not an acquisition bypass. The chapter asserts no camera settings or undocumented production facts.
