verdict: resolved

## Critique round — 2026-07-15

### Required

1. **03-dams-and-lake-nevada-county — `far shore` traces water, not the far shore.** The polyline at `[[0.25,0.43],[0.39,0.45],[0.55,0.44],[0.76,0.49]]` sits within the bright lake/reflection field for its middle rather than following the visible forest–water boundary. The chapter and caption specifically teach this mark as the far shore, so this is a materially false compositional claim. Reposition it on that boundary, or rename it to the actual feature traced.
2. **09-views-in-los-angeles — `right-hand street edge` is not on the street edge.** Its lower and middle segments run visibly inside the roadway, rather than on the right curb/sidewalk boundary. Because the prose uses this primitive as one of the two routes that establishes the street's recession, re-anchor it to the physical edge or remove it and revise the linked prose/caption as needed.
3. **Chapter/source count is internally contradictory.** `chapter.mdx` accurately presents nine plates and the content directory has nine image/proof/spec sets, but `sources.md` says the Getty records cover “all ten selected objects” and includes an unrepresented item 08 (*Mt. Shasta*). This is a wrong count in reader-facing source material. Align the source list and count with the nine plates actually presented, or add the missing plate and its complete artifact set.

### Advisory (non-blocking)

- **01-yosemite-valley-best-general-view:** the strict geometry scorer does not detect the `right wall into waterfall` contour, but it remains visually legible as an interpretive descent along the right valley wall. No blocking change required.
- **02-el-capitan-tutocanula:** `sources.md` describes the supplied object as a “low, wide mammoth-plate view,” while the proof is a mounted stereocard. The chapter itself correctly treats the paired-card object; make the source note match it when touching that file.
- **04-mirror-lake-mount-watkins** and **05-multnomah-falls-side:** the marked tree contours read correctly, though `leading_line` is a slightly imprecise type for static foreground trunks.
- **07-among-the-treetops-calaveras:** the analyzer does not support the two inward trunk lines, but the proof clearly shows the lines following those trunk contours; retain them if desired.

## Builder resolution — 2026-07-15

Re-verified critique history: 2026-07-15, round 1 (the complete history).

1. Reanalyzed and rerendered plate 03. Its `far shore` polyline now follows the visible forest–water seam at y0.39–0.41 rather than the bright water field; it scores 100/100, including strict scoring.
2. Removed the false `right-hand street edge` primitive from plate 09 and revised the chapter and caption so they claim only the plainly visible streetcar rails. The rerender scores 90/100 (80/100 strict) and has a clean visual pass.
3. Aligned `sources.md` to the nine presented plates by changing the count and removing the unrepresented Mt. Shasta entry. While touching the file, corrected the plate 02 description to identify the mounted stereocard.

`scripts/check.sh` passed before resolution; chapter copies are byte-identical.
