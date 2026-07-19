verdict: revise

## Critique round — 2026-07-18

### Required fixes

1. **04-the-dreamer** — The `SLOPING CURB` leading line (0.246, 0.555 to 0.448, 0.625) follows the sleeper's upper body/arm, not a curb. The actual curb edge is the nearly horizontal lower-frame feature already marked at y=0.826. Relabel or remove the line, and revise the chapter sentence that calls this upper-body contour a sloping curb edge.
2. **05-daughter-of-the-dancers** — The `HAT AND HEAD` subject anchor is at (0.396, 0.000), clipped at the top of the frame. The visible hat and head are centered around (0.48, 0.48), where the `ROUND HAT` ellipse already sits. Move the anchor to the object it names or remove it. Also remove or replace the y=0.243 `TILE FIELD` horizon line: it crosses an uninterrupted diagonal-tile field rather than a visible horizontal band.
3. **06-striking-worker-murdered** — The `PAVEMENT CONVERGENCE` vanishing-point marker is over the worker's shirt; the visible pavement does not provide diagonals converging there. Remove the false perspective claim and revise the paragraph's corresponding claim of local pavement organization.
4. **09-good-reputation-sleeping** — The `MAT CONVERGENCE` vanishing-point marker sits above the bent knee, not on a converging structure in the mat. Remove it or replace it only with a primitive that traces a visible named feature.

### Advisory (non-blocking)

- **02-laughing-mannequins** — `WINDOW RAIL` and `CANOPY EDGE` labels overlap at the upper left. Their traced features remain legible; separate the labels if convenient.

### Evidence checked

All 12 proofs were visually reviewed against their overlay JSON and analyzer outputs. Each current overlay scores 100/100 under the deterministic scorer, so the required items above are semantic visual-pass errors rather than score-tolerance failures. The chapter's twelve plates have matching analysis, overlay, and proof files. Source links are present and traceable; eleven AIC object links returned 200, and AIC's API confirmed object 48876 after its web page followed a redirect loop. The source notes document a per-image fair-use rationale for the eleven AIC images and a CC BY-SA 4.0 route for *La buena fama durmiendo*; no camera settings are invented.

## Resolution — 2026-07-18

Re-verified critique history: the 2026-07-18 critique round above (the only prior round in `git log -p -- content/manuel-alvarez-bravo/critique.md`).

1. Removed the false `SLOPING CURB` line from *The Dreamer* and revised the chapter to distinguish the low curb edge from the body's upper contour.
2. Removed the false `TILE FIELD` horizon from *The Daughter of the Dancers* and moved the hat anchor onto the visible hat at `(0.476, 0.435)`.
3. Removed the false `PAVEMENT CONVERGENCE` marker from *Striking Worker Murdered* and deleted the matching local-pavement claim from the chapter.
4. Removed the false `MAT CONVERGENCE` marker from *La buena fama durmiendo*.

The four affected images were freshly analyzed, rendered, visually checked, and scored 100/100. `scripts/check.sh` passed, including chapter byte-identity and production build checks.

## Critique round — 2026-07-18

### Required fixes

1. **03-optical-parable** — `SIGN EDGE` at `y=0.182` traces the horizontal top boundary of the mounted print/picture field, not a sign edge; the reflected shop sign is diagonal. Remove or accurately relabel/recast this primitive, and remove the chapter's corresponding general claim that this plate supplies a “sign edge.”
2. **06-striking-worker-murdered** — The `HEAD` anchor at `(0.632, 0.289)` lands on the worker’s upper torso/collar, not his head, and the adjacent `ARM TO BODY` segment starts at that same non-arm point. Reposition both claims onto the named visible anatomy or remove them, then align the chapter prose with the retained overlay.
3. **07-the-crouched-ones** — `SHOPFRONT AXIS` is encoded as a `symmetry_axis`, whose schema claim is mirrored structure. The seated figures, stools, and spacing are not symmetric, and the chapter explicitly denies bilateral symmetry. Remove or recast the primitive and revise the related “axis” prose as necessary.
4. **08-portrait-of-the-eternal** — `LIT FACE` at `(0.284, 0.258)` circles the raised hand, not the face. `LIT FIGURE` likewise begins at the hand while the chapter says it runs from the face through the dress. Move both to the visible face/figure contour or relabel and revise the prose honestly.
5. **09-good-reputation-sleeping** — `WALL EDGE` from `(0.333, 0.553)` to `(0.588, 0.248)` crosses the knee/body and blank wall instead of tracing a visible wall boundary. Remove it or place a line on a real named edge, and remove or correct the chapter’s claim about a strong diagonal wall edge.
6. **11-xray-window** — The axis-aligned `TILTED DISPLAY` frame does not trace the tilted left display: its right bracket sits inside the image while the actual display edge slopes substantially leftward toward the bottom. Replace it with primitives that follow the visible frame or use an accurately scoped claim.
7. **12-cemetery-visitation** — `WALL BALANCE` is encoded as a `symmetry_axis`, which falsely asserts mirror symmetry in an asymmetric scene of visitor, candles, and grave mounds. Remove or recast the primitive and revise the related “axis” prose as necessary.
8. **Source integrity** — `sources.md` abbreviates eight AIC credit lines to “credit: AIC,” rather than preserving the published credit lines. Record the official lines for objects 48888 (Purchased with funds provided by Exchange National Bank), 48891 (Purchased with funds provided by Exchange National Bank), 48876 (Purchased with funds provided by Helen Harvey Mills), 48883 (Purchased with funds provided by Reva and David Logan), 48880 (Purchased with funds provided by Helen Harvey Mills), 126417 (Gift of D. Richard Ryan Jr.), 63535 (Special Photography Acquisition Fund), and 48900 (Purchased with funds provided by Exchange National Bank). Also state the actual derivative change for the CC BY-SA *La buena fama durmiendo* rendition: it was resized/normalized from the Commons source to the committed 1,599 px-long-edge JPEG.

### Advisory (non-blocking)

- **02-laughing-mannequins** — `WINDOW RAIL` and `CANOPY EDGE` labels overlap at the upper left. The traces remain legible.

### Evidence checked

All twelve current proofs were visually reviewed against their source images, overlay specs, analyzer outputs, and chapter prose. The findings above are semantic visual-pass and schema-meaning errors, not coordinate-tolerance or cosmetic issues. All twelve listed source pages returned HTTP 200 during this review. The chapter correctly avoids invented camera settings; the fair-use routes include per-image four-factor rationale, and limited mode is not applicable.
