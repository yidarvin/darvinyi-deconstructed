verdict: resolved

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
