verdict: approve

## Critique round — 2026-07-23

### Required

1. **01-le-chemin — `distant field`:** the `horizon_line` at `y: 0.229` runs across the oak trunk and bright sky, not a distant field. Remove it or redraw/relabel it to a visible horizontal feature; its current label makes a false compositional claim.

2. **03-le-cimetiere-de-lioux — `iron railing` and `tomb edges`:** neither `leading_line` traces the named continuous feature. The `iron railing` line starts through foliage and ends at the figures; the `tomb edges` line cuts diagonally across figures and open space rather than following a tomb edge. Redraw them on their actual features or remove them.

3. **07-la-chasse-aux-papillons — `blue net`:** the ellipse at `(0.478, 0.146)` is substantially right of the blue net: it encloses the central figure's face and only part of the net. Recenter and resize it on the blue net.

4. **08-la-comete — `comet arc`:** the labeled polyline runs as a diagonal from the clearing toward the upper-right corner instead of tracing the bright curved comet from upper left into the garden. Redraw it along the luminous arc or remove it.

### Advisory (non-blocking)

- **05-le-banquet — `stone-wall band`:** the horizontal line is a broad approximation of the wall's uneven top and extends across unrelated landscape. It still reads as the wall's horizontal band, so this is not a blocker; tightening or relabeling it would improve precision.

### Checks completed

The remaining proofs were visually reviewed. Chapter prose and analyzer-derived metrics match their current analysis JSON within tolerance; the chapter explicitly avoids unsupported camera settings. All ten plates have traceable official-source URLs, credits, and per-image four-factor fair-use rationales.

## Resolution — 2026-07-23

Re-verified critique history: the sole prior round, **2026-07-23**.

1. **01-le-chemin:** removed the false `distant field` horizon claim. The proof now names only the road and oak canopy; it no longer draws a horizontal through trunk and sky.
2. **03-le-cimetiere-de-lioux:** removed both unfaithful `iron railing` and `tomb edges` lines. The replacement proof marks the measured graveyard crossing and central divide alongside the monument; chapter caption and prose now describe those actual marks.
3. **07-la-chasse-aux-papillons:** recentered and resized the `blue net` ellipse on the circular blue net at upper left, clear of the central figure's face.
4. **08-la-comete:** redrew `comet arc` along the visible luminous curve from the upper-left flame to its right-hand end, rather than the earlier clearing-to-corner diagonal.

Fresh render, visual review, and deterministic scoring all pass: 01-le-chemin 94; 03-le-cimetiere-de-lioux 100; 07-la-chasse-aux-papillons 100; 08-la-comete 100. `scripts/check.sh` passed, and the content and rendered chapter files remain byte-identical.

## Critique round — 2026-07-23

### Required

None. Every proof was visually reviewed against its current overlay and analysis
specification. The four required findings from the prior round remain resolved:
the road and oak canopy in `01-le-chemin`, the monument/crossing/divide in
`03-le-cimetiere-de-lioux`, the blue net in `07-la-chasse-aux-papillons`, and
the luminous arc in `08-la-comete` each trace the feature named without a
material regression.

### Advisory (non-blocking)

None added. The prior `05-le-banquet` stone-wall-band observation remains an
explicitly non-blocking broad approximation, not a false claim about the scene.

### Checks completed

All ten current proof PNGs, overlay specs, analysis files, chapter prose,
research notes, manifest, and source notes were checked. The chapter's reported
metrics agree with the current analysis JSON within tolerance, and it expressly
does not infer camera settings. Each plate has a credited official artist source
and an image-specific four-factor fair-use rationale; the official series page
and all ten cited public display JPEG URLs returned HTTP 200 during this review.
