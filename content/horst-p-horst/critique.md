verdict: approve

## Critique round — 2026-07-18

### Required

1. **04-marlene-dietrich — false convergence claim.** Replace or remove the `vanishing_point` at `(0.395, 0.629)` labelled `chair geometry`. In the proof it sits on a flat chair/interior area; the visible chair edges do not converge there. The analyzer’s geometric 100 score does not establish the semantic claim: a `vanishing_point` specifically asserts that diagonals converge. Use a primitive that names a visible chair plane/edge, or omit it.

2. **04-marlene-dietrich — mislabeled hat line.** The `hat brim` polyline runs from the left brim through the crown apex to the right brim, so it traces the hat silhouette rather than the brim. Redraw it on the brim or relabel it accurately.

3. **05-schiaparelli-dinner-suit — unsupported contour.** The `back and chair contour` polyline (`(0.267, 0.557) → (0.500, 0.466) → (0.667, 0.536)`) crosses negative space and the figure rather than following a continuous chair or back contour. Remove it or replace it with a line that actually traces the named feature.

4. **Fair-use and records documentation.** `sources.md` asserts a per-image four-factor fair-use assessment, but its header and all eleven entries document purpose, necessity/amount, and market effect without stating factor two (the creative, published nature of each copyrighted photograph and its appropriate weight). Add a concise factor-two assessment to every image’s rationale. Also correct the categorical claims in `chapter.mdx` and `research.md` that the cited object records establish no paper or print process: V&A object records `O1293749` and `O1318486` contain print-material/process metadata. Retain the valid boundary against inventing camera or exposure settings, but do not deny documented object information.

### Advisory (non-blocking)

- **01-mainbocher-corset:** the `corset lacing` line scores 96.3/100 and is 0.012 diagonal / 8.6° from the detected edge. It remains visibly legible and is within the review tolerance.
- **08-hattie-carnegie-dress:** the `dress contour` line reads more as a directional route through the dress toward the roses than as a literal outer contour. A future pass could relabel it as a fold/eye-path, but it remains a non-blocking interpretive placement.

All other proof/spec pairs were visually checked and are materially truthful. Scores are 96.3/100 for 01 and 100/100 for 02–11; these scores support, but do not replace, the visual semantic review.

## Resolution — 2026-07-18

1. Replaced the false `chair geometry` vanishing point in 04 with no convergence claim and relabelled the traced path as the visible `hat silhouette`. The regenerated proof passed at 100/100 and visual review confirms that each remaining primitive names what it marks.
2. Replaced 05's unsupported `back and chair contour` with a short `chair back edge` path that follows the visible upper edge of the chair. The regenerated proof passed at 100/100 and visual review confirms the line stays on that edge.
3. Added an explicit factor-two assessment to all eleven per-image fair-use rationales. Corrected the research and chapter records note: V&A O1293749 documents a gelatin silver print on photographic paper using the gelatin silver process, and O1318486 documents photographic paper, photographic gelatin, and the gelatin silver process; undocumented camera and exposure details remain excluded.

Re-verified prior critique rounds: 2026-07-18 (the only prior round). Required items 1–4 remain satisfied in the current overlays, proofs, source dossier, research note, and byte-identical chapter copies.

## Critique round — 2026-07-18

### Required

None. All eleven current proof/spec pairs were visually checked against their analysis records. The resolved 04 and 05 changes remain materially correct: 04 no longer asserts false chair convergence and its hat line follows the hat silhouette; 05's chair-back line follows the visible chair edge. The source dossier provides a traceable public source, credit/rights notice, and concise four-factor fair-use rationale for each image. The chapter's tonal values and palette references agree with the current analyzer records, and it makes no undocumented camera-setting claim.

### Advisory (non-blocking)

- **01-mainbocher-corset:** the corset-lacing line remains 0.012 diagonal / 8.6° from the detected edge (96.3/100). It still visibly traces the lacing and is inside the critic tolerance.
- **08-hattie-carnegie-dress:** `dress contour` reads somewhat as a directional route through the garment toward the roses rather than a literal outer contour; this remains a legible, non-blocking interpretive line and has not regressed.
