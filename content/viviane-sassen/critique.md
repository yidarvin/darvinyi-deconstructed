verdict: resolved

## Critique round — 2026-07-26

### Required fixes

1. **08-marte-01 — correct or remove the `SHOULDER CONTOUR` primitive.** In `overlays/08-marte-01.json`, its last segment (`[0.30, 0.20]` to `[0.51, 0.35]`) cuts across the bare shoulder/back rather than tracing a shoulder contour, as is visible in `proofs/08-marte-01.png`. Re-anchor it to the silhouette or relabel/remove it; the current label makes a false geometrical claim. Update the matching chapter wording if the primitive changes.
2. **10-almando-fuchsia — replace the rectangular `FUCHSIA SHEET` frame with an annotation that follows the paper, or remove the frame claim.** `overlays/10-almando-fuchsia.json` declares a rectangular `frame_in_frame` at `x: 0.13, y: 0.27, w: 0.87, h: 0.30`, but the pink sheet is a tilted, curved quadrilateral and the rectangle’s lower-left boundary falls well inside it (`proofs/10-almando-fuchsia.png`). This directly contradicts the chapter’s claim that the internal frame follows the paper’s physical edge.
3. **09-mirari-2 — correct the image description in `sources.md`.** Its “Why it matters” says the image brings “a body, patterned surface, and deep shadow,” but `images/09-mirari-2.jpg` and `proofs/09-mirari-2.png` show two dark tree trunks and water/reflection, with no visible body or patterned surface. Replace that description with the actual visible structure so the source record does not misidentify the photograph.

### Advisory (non-blocking)

- **05-100-years:** The `WHITE SHIRT` polyline begins over bare ground/arm before reaching the shirt in `proofs/05-100-years.png`; it still reads as a leader line to the correct figure, so this is not a blocker.
- **07-axiom-g03:** The closing shadow polyline crosses the `GREEN CAST SHADOW` label backing in `proofs/07-axiom-g03.png`, obscuring part of the label. The geometry still correctly traces the shadow.

### Verification

All ten proof PNGs were visually reviewed against their specs. The current overlay score is 100/100 for every image. All ten documented artist-archive image URLs returned HTTP 200 during this review; the official project pages corroborate the listed titles, series, and dates. The per-image fair-use notes provide the required four-factor rationale, and the retained EXIF claims match `manifest.json`.

## Resolution — 2026-07-26

- **08-marte-01:** Removed the unsupported `SHOULDER CONTOUR` polyline. The
  remaining ellipse truthfully identifies the curved back and the chapter no
  longer claims a shoulder-tracing path. Fresh render, visual pass, and scorer:
  100/100.
- **10-almando-fuchsia:** Replaced the false rectangular `FUCHSIA SHEET` frame
  with separate `SHEET TOP EDGE` and `SHEET LOWER EDGE` polylines that follow
  the visible tilted paper edges. The chapter describes those edge traces rather
  than a rectangular internal frame. Fresh render, visual pass, and scorer:
  100/100.
- **09-mirari-2:** Corrected the source record to identify the visible tree
  trunks and water/reflection, and updated its fair-use teaching rationale from
  patterned occlusion to reflected interruption.

Re-verified every required fix from the only prior critique round
(**2026-07-26**): 08 has no false shoulder claim, 10 has no rectangular sheet
claim, and 09's source description matches the image. The chapter copies remain
byte-identical and `python3 scripts/validate_pipeline.py` passes. The full
test suite passes under the repository's pinned Node 22. Vitest's default fork
pool stalls before reporting tests in this environment; its thread pool completes
the same suite, including Viviane Sassen's direct and routed chapter renders.
