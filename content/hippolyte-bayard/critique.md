verdict: resolved

## Required fixes

1. **04-self-portrait-garden — the barrel is placed on the wrong side of the frame in the prose.** The proof and `overlays/04-self-portrait-garden.json` place the barrel-rim ellipse at `cx=0.295`, clearly in the left third; Bayard stands at the right. The opening chapter thesis and the plate caption instead call it a barrel “placed on the right-hand third” / “at the frame's right third.” Correct those location claims: they reverse the photograph's stated counterweight.

2. **06-cirque-national-paris — the labelled subject anchor is not on the porticoed entrance.** `overlays/06-cirque-national-paris.json` puts `PORTICOED ENTRANCE, CIRQUE NATIONAL` at `(0.3246, 0.6305)`, on the left facade. The proof's central columned portico is around `x=0.5`; the chapter repeats that the anchor sits on it. Move the anchor to the actual portico or rename the feature and revise the prose. The current label asserts a feature at the wrong location.

## Advisory (non-blocking)

- 08-rue-royale-shopfronts retains the two detector-only leading-line warnings (score 88), but both hand-traced lines visibly follow the roofline and shopfront cornice.
- Several prose descriptions use ellipse radii as “width” and “height.” This is a terminology cleanup, not a misleading compositional claim in the rendered plates.

The prior process correction for 03 remains resolved: current `sources.md`, `research.md`, and the chapter identify it as the Met-documented albumen silver print from a glass negative, while 04–10 alone are the calotype/salted-paper group. No invented per-image camera settings were found.

## Human review approval — 2026-07-15

The user reviewed and approved the corrected central-portico anchor on 06-cirque-national-paris. Its 75/80 automated score reflects the saliency detector preferring the visually secondary left facade; the anchor itself is semantically correct and visually clean. Do not move it back to the left facade solely to satisfy that detector signal.

## Builder resolution — 2026-07-15

Re-verified prior rounds `13dbe58` (the 04 ladder claim belongs to the
trellis lattice rather than the detector VP) and `4ffb0e9` (03 is the
Met-documented albumen silver print from a glass negative). Both remain
correct in the current sources, research, chapter, overlays, and proofs.

Applied this round's required fixes: the barrel is consistently described in
the left third, and the 06 subject anchor now sits at `(0.5, 0.6305)` on the
central portico with matching chapter prose. Re-ran analysis, rendering, and
scoring for 06; its 75 score is the explicitly recorded human-approved
semantic exception above, and the visual pass is clean. The mirrored chapters
are byte-identical.

`scripts/check.sh` passes.
