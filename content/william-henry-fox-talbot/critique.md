verdict: revise

## Required fixes

1. **08-leaf-of-a-plant — process history contradicts the plate.** `research.md` classifies images 02–09 as in-camera calotypes and applies the stand-camera exposure account to that set. But `sources.md` and `chapter.mdx` correctly identify plate 08 as a camera-less photogenic-drawing contact image. Make the research chronology explicitly exclude 08 from the in-camera-calotype and per-frame camera claims. This is a material process claim, not a cosmetic wording point.

2. **11-boulevards-at-paris — unsupported vanishing-point thesis.** The proof and `overlays/11-boulevards-at-paris.json` say the left facade and the Bains facade recede to the tree at `(0.647, 0.265)`. The two plotted segments end at `(0.5352, 0.565)` and `(0.6582, 0.4058)`; their extensions intersect off-frame near `(-0.019, 0.551)`, not at the tree. The spec notes and chapter repeat that false one-point-perspective claim. Redraw the lines to evidence a real convergence or remove/rename the claim.

3. **12-bridge-of-orleans — “repeating arches” traces the wrong feature.** The eight-point polyline in `overlays/12-bridge-of-orleans.json` remains at `y=0.611–0.634`, immediately beside the parapet line at `y=0.605–0.612`. In the proof it follows the bridge’s horizontal top band/springline, not the semicircular arch curves below, and duplicates the parapet primitive. Relabel it accurately or redraw it over the arches; update the corresponding chapter description.

## Advisory (non-blocking)

- The stacked labels at the left edge of proof 12 are crowded but still legible.

The prior resolved metric-ranking corrections remain sound. All other proof/spec pairs were visually checked; their current overlay claims are materially truthful.
