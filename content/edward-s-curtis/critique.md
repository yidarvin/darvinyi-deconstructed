verdict: approve

## Critique round — 2026-07-16

### Required fixes

1. **03-apache-mother-child — correct `ARCHING HOOP`.** In the proof, the photographed hoop is a continuous curve around the cradleboard. The overlay polyline instead makes a peaked, triangular path through the open background and inside the right side of the hoop. This is not a small endpoint margin: it traces a different geometry while claiming to trace the hoop. Replace it with a multi-point curve that follows the visible hoop, then re-render and re-score.

2. **02-three-chiefs-piegan — correct the sky-area claim in `chapter.mdx`.** The cited/spec horizon is correctly at `y=0.371` (analysis: `0.37109375`), which leaves about 37% of the frame above it, not “most of the 2:1 frame” to sky. Revise the wording to describe a broad upper sky band without making the false majority claim. The phi/thirds figures are otherwise accurate.

3. **05-bears-belly — correct the nation identity.** The plate label in `chapter.mdx` and the corresponding `sources.md` entry call Bear’s Belly “Apsáalooke/Crow,” but the proof’s printed title reads “BEAR’S BELLY — ARIKARA.” This is a material misidentification. Correct the plate label and source record to the cited record’s Arikara identification.

4. **06-scout-in-winter — align `PHOTOGRAPHIC FIELD` with the reproduced-image boundary.** The `frame_in_frame` at `x/y=0.08/0.08`, `w/h=0.84/0.84` visibly floats inside the snowy photograph in the proof, including at the top and right, rather than tracing the boundary it labels. Place the frame on the actual reproduced-image field or remove the primitive and revise the related sentence; re-render and re-score.

5. **04-apache-reaper — correct the stale visual description in `sources.md`.** Its “Why it matters” says the reaper is standing and invokes a distant mesa, while the proof shows a bent worker against a dark hillside; the chapter and overlay correctly describe the bent figure. Replace this inaccurate source annotation with a description grounded in the selected image.

6. **09-at-waters-edge-piegan — correct the stale visual description in `sources.md`.** It describes a lone figure and lake bands, but the proof shows two tipis/lodges and their reflections. The current overlay and chapter already describe the actual far bank, lodge, and shore; make the source annotation agree with them and the cited record.

7. **10-big-mouth-spring — correct the stale visual description in `sources.md`.** It describes a spring, pale rock, figures, and reflected water, whereas the proof is the portrait currently analyzed in the overlay and chapter (face, garment mass, handheld branch). Replace the description with one for the supplied portrait and retain the correct cited record.

### Advisory (non-blocking)

- **02-three-chiefs-piegan:** `MOUNTED RHYTHM` connects the group legibly, although it crosses the horses rather than following one continuous visible contour. This is stylistic and does not misstate the grouping.
- **chapter.mdx:** remove the leading literal `+` before the opening paragraph. It is a rendering blemish, not a factual or compositional blocker.

### Verification

All ten current proof/spec pairs were visually inspected. Each deterministic score is 100/100 with no deductions or warnings; the required items above are semantic or source-text failures that the scorer does not establish. The chapter’s numerical claims were checked against the analysis JSON within the stated tolerance, and its explicit no-historical-camera-settings caveat is supported by the manifest and research record.

## Builder resolution — 2026-07-16

1. Replaced `ARCHING HOOP` with a nine-point curve that follows the visible cradleboard hoop, then re-rendered and visually inspected the proof; deterministic score: 100/100.
2. Revised the 0.371-horizon sentence to say “a broad upper sky band,” retaining the measured grid figures.
3. Corrected Bear’s Belly to Arikara in both the plate label and source record, matching the printed plate title.
4. Moved `PHOTOGRAPHIC FIELD` to the reproduced-image boundary (`x=0.09`, `y=0.055`, `w=0.855`, `h=0.89`), re-rendered and visually inspected it; deterministic score: 100/100.
5. Replaced the three stale source annotations with descriptions of the bent reaper and dark hillside, the two lodges and reflections, and the Big Mouth Spring portrait with its handheld branch.
6. Removed the advisory leading `+` rendering blemish.

Re-verified critique history: 2026-07-16 (the complete and only prior round). All ten current overlays score 100/100 with zero warnings; the chapter copies are byte-identical; `scripts/check.sh` passes.

## Critique round — 2026-07-16

### Required fixes

1. **07-dancing-eclipsed-moon — correct `DANCER SILHOUETTES`.** The current W-shaped polyline runs through open sky and smoke—notably around `(0.33, 0.28)`, `(0.49, 0.52)`, and `(0.65, 0.28)`—rather than tracing a visible dancer edge or continuous collective silhouette in the proof. This is a substantive mismatch between the mark and the label, not an endpoint-margin issue. Remove the primitive or replace it with a short contour that visibly follows the group, then revise the related chapter wording that calls the zigzag “a contour of the collective silhouette.”

### Advisory (non-blocking)

- **10-big-mouth-spring:** `GARMENT MASS` functions as a legible pointer to the garment, but its internal zigzag does not follow a distinct contour. A simpler marker would be clearer; this does not misstate the photograph.
- **02-three-chiefs-piegan:** The resolved-round advisory remains applicable: `MOUNTED RHYTHM` connects the group legibly while crossing the horses rather than following one continuous contour. It is interpretive and non-blocking.

### Verification

I visually re-inspected all ten current proof PNGs, their overlay specs, and the chapter/source/research claims. The prior round’s resolved items remain resolved: the 03 hoop now follows the visible cradleboard, the 02 horizon wording and 05 Arikara identification agree with the proof and analysis, the 06 photographic field follows the reproduced-image boundary, and the corrected 04/09/10 source descriptions match their images. Every current spec independently scores 100/100 with no deductions or warnings; the remaining required defect is semantic and therefore outside the scorer’s geometric checks. Chapter measurements agree with the analysis JSON within the stated tolerance, and the text makes no historical-camera-setting claim.

## Builder resolution — 2026-07-16

1. Removed the unsupported `DANCER SILHOUETTES` polyline from `07-dancing-eclipsed-moon`, retaining only the measured ridge and group-center marks. Re-analyzed, re-rendered, and visually inspected the proof: both marks align with the ground transition and the group’s balance; deterministic score: 100/100 with no warnings.
2. Revised the related chapter sentence so it no longer calls a zigzag a collective-silhouette contour. The rendered source and canonical chapter copies are byte-identical.

Re-verified critique history: both 2026-07-16 critique rounds. The first-round cradleboard hoop, sky-area wording, Arikara identification, photographic-field placement, and three source descriptions remain correct in their current overlays/proofs/text. All ten current overlays score 100/100 with no deductions or warnings; `scripts/check.sh` passes.

## Critique round — 2026-07-16

### Required fixes

None.

### Advisory (non-blocking)

- **02-three-chiefs-piegan:** `MOUNTED RHYTHM` remains a legible grouping path, though it crosses the horses rather than following one continuous contour. This is interpretive, not a false claim about the photograph.
- **10-big-mouth-spring:** `GARMENT MASS` is a broad pointer through the garment rather than a distinct contour. The label still identifies the correct mass, so this is not blocking.
- **Source traceability:** the Curtis criticism is materially accurate—the Library of Congress’s Curtis guide explicitly describes the romanticization and removal of contemporary-life signs—but that guide is not among `research.md`’s listed consulted sources. Add it in a future documentation pass if citation completeness is being improved; this does not make the present chapter claim false.

### Verification

All ten current proof PNGs and their overlay specs were visually re-inspected, with independent fresh-eyes reviews across the proof set. The earlier resolved fixes remain resolved: 03’s hoop follows the cradleboard; 02’s sky wording and 05’s Arikara identification agree with the image and analysis; 06’s photographic field sits on the reproduced-image boundary; 04, 09, and 10 source descriptions match their images; and 07 has not restored the unsupported dancer-silhouette path. The two-mark 07 overlay is a conservative resolved fallback, not a renewed claim requiring a decorative third mark.

Every current spec scores 100/100 with zero deductions or warnings. Chapter horizon, grid, tonal, palette, and saliency figures agree with the analyzer JSON within the stated tolerance, and the chapter correctly distinguishes the later Nikon-copy EXIF from Curtis’s historical camera settings. `scripts/check.sh` passes (64 tests, typecheck, production build, and lint). No materially misleading overlay, prose claim, subject identification, or camera-setting assertion remains.
