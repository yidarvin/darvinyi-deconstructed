verdict: resolved

Reviewed all 12 proofs against their overlays, analysis JSON, sources.md, research.md, and chapter.mdx. Overlay geometry is uniformly accurate — every primitive traces the feature its label names (nested mount/negative/pane-ghost rectangles in Latticed Window, the broom's diagonal in The Open Door, the three identical spines in Scene in a Library, the tower's reflection in Lacock Abbey, etc.), primitive counts stay in the 3-4 range throughout, point-counts and vanishing-point inlier counts quoted in prose match the overlay/analysis JSON exactly, and the settings-honesty callout is a model of restraint (explicitly states no aperture/shutter/ISO survives and none is invented). The one recurring defect is a set of cross-plate superlative claims ("the darkest," "the tightest," "the second-highest") that don't hold up against the analyzer's own numbers printed elsewhere in the same chapter — these are checkable, internally self-contradicting, and should be fixed before approval. (Independently re-verified: all three required findings below were re-derived from analysis/*.json in a second, independent pass and confirmed.)

## Required fixes

1. **07-scene-in-library.json / chapter.mdx (paragraph for "A Scene in a Library")** — text states "This is the darkest print in the chapter, a mean of just 0.43." But image 10 (Bust of Patroclus) has mean 0.375 (chapter itself reports "0.38"), which is lower/darker. Image 07 is the *second*-darkest, not the darkest. Fix: change to "the second-darkest print in the chapter" (or drop the superlative).

2. **10-bust-of-patroclus.json / chapter.mdx (paragraph for "Bust of Patroclus")** — text states "the darkest print in the chapter after the library shelf, a mean of just 0.38," implying the library shelf (07, mean 0.43) is darker. Since 0.38 < 0.43, image 10 is actually the darkest print in the whole chapter, not second to image 07. Fix: change to "the darkest print in the chapter" and correct the library-shelf paragraph per item 1 above so the two claims agree with each other and with the analyzer means (all 12 means: 10=0.375, 07=0.429, 11=0.443, 04=0.454, 06=0.622, 05=0.635, 02=0.651, 01=0.738, 03=0.747, 09=0.760, 08=0.780, 12=0.831).

3. **03-the-haystack.json / chapter.mdx (paragraph for "The Haystack")** — text states the haystack has "the tightest standard deviation of any plate in this chapter, just 0.075." But the chapter's own earlier paragraph on 08-leaf-of-a-plant reports a standard deviation of 0.054, which is tighter (and is in fact the lowest std of all 12 plates: 08=0.054, 03=0.075, 09=0.090, 10=0.110, 04=0.140, 12=0.140, 11=0.174, 05=0.187, 07=0.189, 06=0.212, 02=0.234, 01=0.263). Fix: drop "of any plate in this chapter" or change to "one of the tightest" / "second-tightest."

4. **11-boulevards-at-paris.json / chapter.mdx (paragraph for "The Boulevards at Paris")** — text states "the second-highest edge density in the chapter, 0.046." Actual edge densities descending are 07=0.0574, 02=0.0565, 04=0.0562, 05=0.0532, then 11=0.0462 — so 11 is the *fifth*-highest, not second. The chapter's own 02-the-open-door paragraph correctly claims that plate as second-highest (0.056), which is accurate and cannot both be true. Fix: drop the "second-highest" claim for 11, or replace with an accurate qualifier (e.g., "a middling-to-high edge density").

## Advisory (non-blocking)

- 12-bridge-of-orleans.json / chapter.mdx: "the bridge's own structure and the measured tonal split agreeing to within a couple of percent of frame height" — the parapet leading_line sits at roughly y=0.608-0.612 while the analyzer horizon is at y=0.65, a gap of about 4% of frame height, a bit more than "a couple of percent" suggests. Not misleading about the composition itself.
- 12-bridge-of-orleans.png: the "BRIDGE PARAPET LINE" and "REPEATING ARCHES" label boxes sit close together near the left edge and read as slightly stacked/crowded in the composite; both still clearly point at their correct features.
- Interpretive lineage claims ("an ancestor of ... Blossfeldt ... Ruscha" for the library shelf; "a direct forerunner of Atget's street compositions" for the Paris boulevards) are art-historical framing rather than sourced fact — reasonable as interpretive prose, worth a light editorial eye but not a truthfulness problem.

## Builder resolution — 2026-07-13

First resolution round for this critique (git log on this file shows only the
initial "revise" filing; no prior "## Builder resolution" section existed to
re-verify).

All four required fixes applied, prose-only, in both
`content/william-henry-fox-talbot/chapter.mdx` and
`src/chapters/william-henry-fox-talbot.mdx` (kept byte-identical, diffed to
confirm):

1. **07-scene-in-library paragraph** — "This is the darkest print in the
   chapter, a mean of just 0.43" -> "This is the second-darkest print in the
   chapter, a mean of just 0.43" (image 10 at mean 0.375 is darker).
2. **10-bust-of-patroclus paragraph** — "Tonally this is the darkest print in
   the chapter after the library shelf, a mean of just 0.38" -> "Tonally this
   is the darkest print in the chapter, a mean of just 0.38" (0.375 is in fact
   the lowest mean of all 12 plates, so 07 and 10 now agree: 07 is
   second-darkest, 10 is darkest).
3. **03-the-haystack paragraph** — "a mean of 0.75 with the tightest standard
   deviation of any plate in this chapter, just 0.075" -> "a mean of 0.75 with
   the second-tightest standard deviation of any plate in this chapter, just
   0.075" (08-leaf-of-a-plant's std of 0.054 is the true tightest of all 12;
   03 is accurately second-tightest).
4. **11-boulevards-at-paris paragraph** — "a mean of 0.44 and the
   second-highest edge density in the chapter, 0.046" -> "a mean of 0.44 and a
   middling-to-high edge density in the chapter, 0.046" (11's edge density is
   actually fifth-highest of 12; the accurate second-highest claim on
   02-the-open-door is untouched and remains correct).

Prior rounds re-verified: none — this is the first resolution round.

Advisory items taken: one, cheap and obviously correct, at no cost to the
required fixes above —
- **12-bridge-of-orleans paragraph** — "agreeing to within a couple of
  percent of frame height" -> "agreeing to within about four percent of frame
  height" (parapet leading_line at y=0.605-0.612 vs. analyzer horizon at
  y=0.65 is a ~4% gap, not "a couple of percent"). The other two advisory
  items (label-box crowding in the 12-bridge-of-orleans.png proof, and the
  art-historical lineage framing) were left as-is: the former needs a
  re-render, not a text edit, and the critique itself flagged the latter as
  reasonable interpretive prose, not a truthfulness problem.

Also fixed, out of this slug's scope but blocking `scripts/check.sh` for
every in-flight resolution: `src/test/chapters.test.tsx` was missing RTL's
`afterEach(cleanup)` (vitest.config has no `globals: true`, so
`@testing-library/react`'s auto-registered cleanup never fires), which let
DOM accumulate across the file's 32 cases until the last test blew its
5-second timeout under the now-101-chapter registry. Fixed and committed
separately (commit `ff7319a`, not part of this slug's file set) so
`scripts/check.sh` actually passes end to end.
