verdict: approve

## Critique round — 2026-08-03

### Required

1. `01-soup-turtle` — Correct the source-note colour claim. `sources.md` calls the toys “yellow,” but the supplied image and the chapter both show and describe blue toys. This is a material contradiction in the account of the visible photograph.

2. `01-soup-turtle` — Restore the ship’s full documented name, **Evergreen Ever Laurel**, in `sources.md`, `research.md`, and `chapter.mdx`. The linked artist gallery identifies the 1992 spill as coming from that vessel; “Ever Laurel” is incomplete.

3. `07-soup-fragmented-cups` — Resolve the work date. The chapter plate calls it 2011 while `sources.md` records an accessible scholarly caption identifying it as 2012. Change the plate/source treatment to the evidenced date, or provide a directly linked work-specific authoritative record establishing 2011; do not leave the contradiction as an unresolved note.

4. `10-soup-ruinous-remembrance` — Correct the provenance wording in `sources.md` and `chapter.mdx` to the artist gallery’s “one metre square area of shoreline.” A “one-metre stretch” or generic “one-metre shoreline area” changes the documented collection extent.

5. `10-soup-ruinous-remembrance` — Revise the overlay and matching prose so they name a feature the proof actually supports. The **VANITAS-LIKE BOUQUET** ellipse (`cx: 0.49`, `cy: 0.47`, `rx: 0.34`, `ry: 0.38`) encloses a large empty central field and dispersed objects rather than a bounded, vertically central bouquet; the **RISING BOUQUET ARC** likewise crosses empty space from lower left to upper right. The proof does show scattered floral, feather, bone, and line elements, but not the claimed single central bouquet structure. Replace this claim with an evidenced visible arrangement and bring the chapter discussion into accord.

### Advisory (non-blocking)

None.

## Builder resolution — 2026-08-03

1. Corrected the source note to identify the visible toys as blue and restored the artist gallery’s full ship name, *Evergreen Ever Laurel*, in `sources.md`, `research.md`, and both byte-identical chapter copies.
2. Changed *SOUP: Fragmented Cups* to 2012 in the source record and plate label, with the linked University of Technology Sydney scholarly caption as the work-specific date evidence.
3. Restored the artist gallery’s precise provenance wording for *Ruinous Remembrance*: materials recovered from a one metre square area of shoreline on Spurn Point Nature Reserve, England.
4. Re-ran analysis, rendered two overlay iterations, visually inspected the resulting proof, and replaced the unsupported central-bouquet/arc argument with four discrete, visibly bounded clusters. The final overlay scores 97/100 with no geometric deductions.

Re-verified every required fix from the full critique history: 2026-08-03 round (this and only prior round). `scripts/check.sh` passes, including pipeline validation, chapter synchronization, prose lint, tests, build, and the site smoke gate.

## Critique round — 2026-08-03

### Required

None. I visually reviewed all 11 current proof PNGs against their overlay specs, analysis JSON, chapter, research note, and source records. The earlier required corrections remain resolved: the turtle source/prose identifies blue toys and the full *Evergreen Ever Laurel* name; *Fragmented Cups* consistently uses its evidenced 2012 date; the Spurn Point collection extent is a one metre square area; and `10-soup-ruinous-remembrance` now marks four genuinely visible, separate clusters rather than asserting a central bouquet. All overlays contain 3–4 teaching primitives and score 97–100 with no geometric deductions. The chapter’s measured values agree with the current analyses, it makes no undocumented camera-setting claims, and every image is traceable to Barker’s credited public gallery rendition with a per-image four-factor fair-use rationale.

### Advisory (non-blocking)

- `11-soup-500-plus` — The **PACKED PLASTIC RING** and **RADIAL PULL** labels overlap at the upper left of the proof (rendering as “PACKED PLARADIAL PULL”). Both still point to the correct structures and remain legible enough to be non-misleading; this is a cosmetic label-placement issue only.
