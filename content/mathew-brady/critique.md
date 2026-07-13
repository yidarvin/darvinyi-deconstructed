verdict: resolved

## Required fixes

1. **`content/mathew-brady/overlays/07-william-sherman.json`** — the `subject_anchor` labeled "Sherman's face" (x=0.451, y=0.457, r=0.045) does not sit on Sherman's face. A measured grid crop shows his eyes at y≈0.34–0.36, nose/mouth at y≈0.37–0.42, and the beard ending around y≈0.44–0.45. The anchor at y=0.457 lands squarely on his coat collar and bow-tie, below the beard, and the rendered proof (`proofs/07-william-sherman.png`) shows the circle and crosshair centered on the collar/necktie, not the eyes/nose/forehead. A reader looking at the composite would see "SHERMAN'S FACE" labeling his collar. Move the anchor up to roughly y≈0.36–0.38 (or wherever the analyzer/visual center of his face actually falls) so the circle actually rings the face.
   - This same wrong coordinate is repeated as fact in **`chapter.mdx`** (paragraph beginning "Sherman gets the same rig with a harder edge... His face sits at x equals 0.451, y equals 0.457"). Update the prose once the overlay coordinate is corrected.

2. **`chapter.mdx`** (Robert E. Lee and Staff section) and **`sources.md`** both state the Lee-and-staff sitting was made "two days after the surrender at Appomattox." That's wrong: Lee's Army of Northern Virginia surrendered April 9, 1865; Lee returned to Richmond April 15; Brady's sitting on the back porch of Lee's Franklin Street house was made April 16, 1865 — one full week (seven days) after Appomattox, and two days after Lincoln's assassination (April 14). Multiple independent sources (Library of Congress, National Portrait Gallery/Smithsonian, HistoryNet) confirm the April 16 date and the "a week after Appomattox / two days after the assassination" framing — the chapter appears to have conflated the two anniversaries. Please correct the timeline claim in both files (e.g., "a week after the surrender at Appomattox" or "two days after Lincoln's assassination," not "two days after Appomattox").

## Advisory (non-blocking)

- `01-john-calhoun.json`, "cloak's draped fold line" leading_line: this runs through the most deeply underexposed part of the daguerreotype (near-black coat), where no fold is clearly resolvable even at full crop. The line is a defensible interpretive reading for a near-featureless dark mass and isn't obviously tracing something else, but it's the weakest-evidenced primitive in the set.
- `10-robert-e-lee-staff.json`, "hands converge at Lee's lap" vanishing_point: the marked point sits at Lee's own hand/hat, not a literal convergence of all three men's hands (the aides' hands rest on his shoulders, well above). The geometric coincidence with the analyzer's independently computed vanishing point is real and worth keeping, but the "hands converge" phrasing slightly overstates what's visible at that exact point.
- `chapter.mdx` intro to the Sherman/Whitman section claims the two were "photographed within roughly a year of each other," but Sherman's own sourced date range is 1861–65 (a four-year window), so this precision isn't strongly supported by the sourcing.

Everything else checked out: all ten proofs were inspected against their overlay JSON and the analyzer ground truth. Every numeric claim in chapter.mdx (symmetry scores, tonal means/std/percentiles, edge density, horizon and vanishing-point coordinates and inlier counts, palettes) that was cross-checked against the corresponding `analysis/*.json` matched within tolerance, including the striking three-decimal agreement between the hand-placed and analyzer-computed vanishing points on the Lee plate. The camera-settings callout is honest and appropriately hedged (explicitly states no per-frame aperture/shutter/ISO record exists and none is invented), and the Poe/"Ultima Thule" attribution to Edwin H. Manchester checks out against independent sources (LOC, Poe Society, Encyclopedia Virginia). Primitive counts per image are all in the pedagogical 3–4 range, not exhaustive inventories. The classical column (Lincoln), epaulette/shoulder-board/button-column (Perry), tree-as-column and hand-on-hip (Grant), tent-canvas frame, pine-trunk frame and BRADY'S crate (Petersburg outfit), and the Lee/staff triangle and face ellipse all trace exactly the features their labels name.

Both required findings above were independently re-verified in a second pass — the Sherman anchor position was re-plotted against a fresh grid crop of the source image, and the Lee-sitting date was independently cross-checked against multiple historical sources — and confirmed.

## Builder resolution — 2026-07-13

This is the first resolution round for this chapter (no prior "## Builder resolution" section existed; `git log -p -- content/mathew-brady/critique.md` shows a single filing commit).

Required fixes applied:

1. **Sherman subject_anchor (`content/mathew-brady/overlays/07-william-sherman.json`)** — moved the `subject_anchor` labeled "Sherman's face" from `x=0.451, y=0.457` to `x=0.465, y=0.37` (radius unchanged at `r=0.045`). Re-rendered the proof with `render_overlay.py` and visually inspected the resulting `content/mathew-brady/proofs/07-william-sherman.png`: the circle/crosshair now rings his nose bridge, between the eyes and mustache, squarely on the face rather than the collar/bow-tie. Updated the matching prose in `content/mathew-brady/chapter.mdx` (and its mirror `src/chapters/mathew-brady.mdx`), paragraph beginning "Sherman gets the same rig with a harder edge": "His face sits at x equals 0.451, y equals 0.457" → "His face sits at x equals 0.465, y equals 0.37".
2. **Lee-and-staff sitting date** — corrected the false "two days after the surrender at Appomattox" claim in both files:
   - `content/mathew-brady/chapter.mdx` (and mirror `src/chapters/mathew-brady.mdx`), Robert E. Lee and Staff section: "Two days after Appomattox, the formula takes on a third body..." → "A week after Appomattox, the formula takes on a third body...".
   - `content/mathew-brady/sources.md`, item 10: "...a triangulated three-figure group made two days after the surrender at Appomattox..." → "...a triangulated three-figure group made a week after the surrender at Appomattox (and two days after Lincoln's assassination)...".

Prior rounds re-verified: none — this is the first resolution round.

Advisory items: none taken. All three advisory notes (Calhoun's cloak fold line, the Lee "hands converge" vanishing-point label, and the Sherman/Whitman "roughly a year" framing) involve subjective interpretive judgment rather than a clear-cut correction, so none was changed, per the instruction to only take an advisory item when cheap and obviously correct.

`content/mathew-brady/chapter.mdx` and `src/chapters/mathew-brady.mdx` remain byte-identical after these edits. `bash scripts/check.sh` passes (exit 0).
