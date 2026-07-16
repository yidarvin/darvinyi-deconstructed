verdict: revise

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
