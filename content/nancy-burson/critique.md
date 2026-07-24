verdict: approve

## Critique round — 2026-07-24

### Required

1. **02-the-president-second-version — trace the actual jacket/collar V.** The `JACKET V` polyline in `overlays/02-the-president-second-version.json` (`[[0.355,0.714],[0.505,0.794],[0.680,0.715]]`) crosses the lower face and neck in the rendered proof; it does not follow the visible white collar/lapel V, which is lower in the frame. This is a wrong-feature label, and the plate caption and paragraph rely on that false trace when describing the jacket V as part of the portrait's authority. Replace it with a polyline on the actual collar/lapels (or revise the claim and maintain three pedagogically useful primitives).

2. **05-aged-barbie — correct the documented medium claim.** `sources.md`, `research.md`, and the chapter say that *Aged Barbie* is a “computer composite” (and the chapter calls that its documented medium), but the cited SFMOMA object record identifies its medium as a dye diffusion transfer print. Replace the unsupported documented-medium assertion with the collection's wording, or add a source that specifically supports the separate claim about the work's construction.

### Advisory (non-blocking)

- **02-the-president-second-version:** The `COMPOSITE FACE` ellipse ends around the lower cheek/mouth rather than the chin. It remains legible as a restricted facial field; expanding it or narrowing the label would make the claim more exact.
- The Smithsonian record calls the downloadable President media public domain while crediting the copyrighted artwork to Nancy Burson. The current fair-use rationale and credit are complete and not materially misleading, but the source note could distinguish the public-domain media status from the work's copyright more clearly.

### Verification notes

- All five rendered proofs were visually reviewed. Deterministic overlay scoring is 100/100 with no warnings for every image; the first required finding is semantic and therefore not caught by that geometric score.
- The other overlay labels were found to trace the features they name, the primitive counts are within the required 3–5 range, every image has a linked credited source with a per-image four-factor fair-use rationale, and the chapter does not invent camera settings.

## Builder resolution — 2026-07-24

1. **02-the-president-second-version:** Replaced the false `JACKET V` trace with a five-point `WHITE COLLAR / LAPELS` polyline on the visible white collar and lapels at the base of the frame. Updated the plate caption and paragraph to make the same truthful claim. Re-rendered and visually inspected the proof; the deterministic score is 100/100 with no warnings.
2. **05-aged-barbie:** Replaced each unsupported “computer composite” medium assertion with SFMOMA's documented medium, “dye diffusion transfer print,” in `sources.md`, `research.md`, and both byte-identical chapter copies. The SFMOMA object record was independently rechecked.

### Prior required rounds re-verified

- **2026-07-24 (this round):** Both required fixes above hold in the current overlays, proof, source notes, research note, and chapter. No earlier critique rounds exist in `git log -p -- content/nancy-burson/critique.md`.

## Critique round — 2026-07-24

### Required

None. The five current proofs were visually reviewed against their overlay specs
and analysis records. The corrected `WHITE COLLAR / LAPELS` polyline in
**02-the-president-second-version** follows the visible white collar and lapels,
not the lower face or neck. The source, research, and chapter references for
**05-aged-barbie** consistently use SFMOMA's documented medium, “dye diffusion
transfer print.” The remaining overlays each use three to four pedagogically
useful primitives that trace their named facial, axis, and framing features.

The current linked collection records and per-image fair-use notes trace every
image, including creator, copyright/credit context, and all four statutory
factors. The chapter's measured symmetry, tonal, palette, and edge-density
claims match the corresponding analyzer records within the required tolerance;
no camera settings are asserted.

### Advisory (non-blocking)

None.
