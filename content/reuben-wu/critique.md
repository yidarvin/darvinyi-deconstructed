verdict: approve

## Critique round — 2026-08-03

### Required fixes

1. `06-lux-noctis-dsc8162`: the `FIGURE ON BOULDER` subject anchor is centred at `(0.614, 0.526)`, on the boulder face.  The visible lit figure/red light is about `(0.614, 0.47)`, above the circle in the proof.  Move the anchor to that figure (or relabel it as the boulder); as drawn, the primitive names a feature it does not trace.
2. `08-aeroglyphs-10`: re-trace both light-frame polylines on the illuminated square outlines.  The lower edge of the left drawing is specified around `y=0.64–0.66` and the right around `y=0.68`, while the corresponding luminous lower edges are near `y=0.77–0.78` in the proof.  These are material misses that change the two frames’ overlap and counter-rhythm.
3. `08-aeroglyphs-10`: `MOUNTAIN RHYTHM` is a straight `horizon_line` at `y=0.721`; it runs through open sky over much of the serrated mountain chain instead of tracing the labelled ridge.  Replace it with a ridge-following polyline or remove/recast the claim.

### Advisory (non-blocking)

- `01-lux-noctis-alabama-hills`: `RIDGE / SKY BREAK` is a useful analyzer-aligned tonal divider (`y=0.510`), but a more literal label such as “TONAL SKY / ROCK BREAK” would make clear that the separate `SERRATED RIDGE` polyline—not this straight line—follows the silhouette.
- `03-lux-noctis-bisti-eagles-nest`: `DISTANT RIDGE` accurately follows the analyzer’s dominant break (`y=0.660`) but visually reads closer to a middle-terrain break than the distant skyline; consider a more exact label on a future pass.
- `04-lux-noctis-crowley-lake`: the scorer prefers a phi grid (92/100 with the existing thirds grid), but the current grid does not make a materially false claim and remains above the acceptance threshold.
- `09-siren-dscf0747`: `AURORA BAND` is a broad tonal transition rather than a crisp edge.  The current line matches the analyzer’s gradient break and remains understandable, but a less edge-like treatment could be clearer.
- `10-siren-dscf0762`: `LEFT LIGHT EDGE` partly follows an interior luminous strand rather than the outermost left boundary; it is still visually plausible.

All twelve proofs were inspected.  The deterministic scores are at least 92/100 (eleven 100/100); the required findings above are semantic visual-truthfulness failures that the geometric scorer does not test.  Chapter measurements agree with the analyzer within the stated tolerance, no individual camera settings are asserted, and every cited official-portfolio image and project URL resolved successfully.  The documented per-image fair-use rationales and credits are complete.

## Resolution — 2026-08-03

Re-verified prior critique round `2026-08-03` in full.  The required fixes now hold:

1. `06-lux-noctis-dsc8162`: `FIGURE ON BOULDER` is centred at `(0.614, 0.47)`, on the visible lit figure/red light rather than the boulder face.  The revised overlay scores 99/100; the one-point analyzer variance is expected because its saliency region encompasses the boulder, while the labelled feature is visually distinct.
2. `08-aeroglyphs-10`: both frame polylines now follow their luminous lower edges (`y=0.78→0.75` left and `y=0.78→0.77` right).  The overlay scores 100/100.
3. `08-aeroglyphs-10`: the false straight `MOUNTAIN RHYTHM` horizon is replaced by a ridge-following polyline along the serrated mountain silhouette.

Both regenerated proofs received a clean visual pass.  No chapter prose change was needed: its descriptions of the light frames and mountain rhythm remain accurate.  `scripts/check.sh` passed before this resolution was recorded.

## Critique round — 2026-08-03

### Required fixes

None.  All twelve current proofs received a fresh visual pass against their overlay specs and analyzer records.  The three required findings from the preceding critique round remain resolved: `06-lux-noctis-dsc8162` anchors `FIGURE ON BOULDER` on the visible figure/light at `(0.614, 0.470)`; `08-aeroglyphs-10` traces both illuminated frame bases and follows the mountain silhouette with `MOUNTAIN RHYTHM`.  The deterministic scores are 92–100/100, and the visual pass confirms the semantic claims the scorer cannot decide.  Chapter luminance, percentile, palette, and edge-density statements agree with the matching analysis JSON within the stated tolerance; it does not invent individual camera settings.  Every image has an accessible official-portfolio source, accurate artist credit, and a per-image four-factor fair-use rationale.

### Advisory (non-blocking)

None.
