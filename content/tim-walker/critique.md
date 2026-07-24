verdict: revise

## Critique round — 2026-07-24

Reviewed all twelve rendered proofs, their overlay and analyzer JSON, chapter and research prose, manifest, and image-by-image source records. Every listed official image URL returned a JPEG and matched its ingested derivative; the per-image fair-use records contain the required four-factor rationale. The chapter makes no unsupported camera-setting claims.

### Required

1. **04-the-lion-king — `PAIRED-FACES DIAGONAL` names the wrong feature.** The teal leading line begins at the model's headdress (`0.133, 0.092`) and ends at the lion's lower body (`0.773, 0.88`); it does not connect the model's face to the lion's face. Replace it with a line that actually joins the named faces, or relabel/remove it. Revise the matching chapter claim that the overlay “connects the paired faces.”
2. **08-deliver-us — `VOGUE-LETTER BASELINE` is not a baseline.** The line at about `y=0.62` runs through the middle/upper portions of the letterforms, while their visible lower baseline is substantially lower (roughly `y=0.74`). Move it to the actual baseline or rename it for the feature it traces, and revise the chapter's corresponding “letter baseline” claim.
3. **09-artist-of-the-floating-world — `ROTOR LINE` does not trace a rotor feature.** The polyline runs from open sky through the left rider and beneath/through the second machine rather than following either rotor or their blades. Replace it with an actual rotor contour or give the interpretive path a truthful label; revise the chapter claim that calls it a rotor line.
4. **11-land-of-dreamy-dreams — `RED-COATED FIGURE` anchors empty tree/sky.** The subject anchor at `0.336, 0.227` sits in the trees above and right of the red-clad person, who is visibly around the left third and mid-frame. Re-anchor the primitive on the figure; the current label makes a false positional claim.

### Advisory (non-blocking)

- **02-cut-and-paste:** the deterministic scorer warns that `FENCE WIRES` does not follow a detector edge, but the rendered line visually follows the actual sloping fence wires. No revision is required.

## Resolution — 2026-07-24

Resolved all required items from the critique round dated 2026-07-24, the full
critique history for this slug. Re-rendered and visually checked the four
affected proofs after fresh analysis: the Lion King line now joins the two
faces; the Deliver Us polyline follows the letters' lower baseline; the Artist
of the Floating World line follows the left rotor blade; and the Land of Dreamy
Dreams anchor is on the red-coated figure. Deterministic scores are 100/100 for
each revised overlay. Re-verified that no required fixes from prior rounds
regressed (there is one prior critique round: 2026-07-24). `scripts/check.sh`
passed before this resolution was recorded.

## Critique round — 2026-07-24

Fresh review of all twelve rendered proofs, their current specs and analyzer
records, the chapter, manifest, research, and source records. The four fixes
resolved in the preceding entry remain resolved: `04` joins the two faces,
`08` follows the letter baseline, `09` follows the left rotor blade, and `11`
anchors the red-coated figure. No camera-setting claim was introduced.

### Required

1. **Portfolio attribution is false for five displayed files.** The official
   Tim Walker Stories data for the exact direct-asset URLs identifies `02` as
   *Like a Doll* (*Vogue Italia*, 2012), `03` as *McQueen ‘Dark Angel’*
   (*British Vogue*, 2014), `07` as *Beauty and the Beast* (*Love Magazine*,
   2012), `08` as *India, Various Publications* (with no caption), and `10`
   as *Morocco, Namibia* (*Vogue Italia*, 2006; *British Vogue*, 2011). These
   contradict the titles/publications/dates in `sources.md` and the five
   corresponding `Plate` labels in `chapter.mdx`. Correct each source record,
   plate label, and associated fair-use attribution to the official portfolio
   metadata, or replace the file with the intended documented work and revise
   its source record. A direct image URL alone does not make an incorrect work
   title or originating-publication credit truthful.
2. **07-checking-out — `SOFA AND RUG BASE` names a feature the polyline does
   not trace.** The line from `(0.04, 0.78)` through `(0.47, 0.74)` to
   `(0.94, 0.89)` crosses the gown and ends on the pink cushion; it is not a
   sofa/rug boundary. Realign it to an actual sofa/rug edge or remove/relabel
   it, then correct the chapter sentence that calls this structure a “rug and
   sofa baseline.”

### Advisory (non-blocking)

- `01-only-a-northern-song`: `RED SHOULDER ARC` reads as a short, angular
  polyline rather than a smooth arc, but it still lies on the red coat.
- The former V&A URL in `sources.md` returns 404. Replace it with the current
  V&A exhibition page and verify the “largest exhibition” wording against the
  replacement; this link-maintenance issue does not block the image- and
  composition-specific corrections above.

## Resolution — 2026-07-24

Resolved the two required items from the latest 2026-07-24 critique round.
The `02`, `03`, `07`, `08`, and `10` source records, fair-use attributions,
chapter plate labels, and contact-sheet labels now use the official portfolio
metadata: *Like a Doll* (*Vogue Italia*, 2012); *McQueen ‘Dark Angel’*
(*British Vogue*, 2014); *Beauty and the Beast* (*Love Magazine*, 2012);
*India, Various Publications* (no caption or date supplied); and *Morocco,
Namibia* (*Vogue Italia*, 2006; *British Vogue*, 2011). The false `SOFA AND
RUG BASE` primitive was removed from `07`; its current overlay retains only
the visible window frame and gown descent, was freshly analyzed and rendered,
and scores 100/100 with a clean visual pass.

Re-verified every required fix from the full prior critique history: the first
2026-07-24 round remains resolved for `04` (line joins the two faces), `08`
(the line follows the lower VOGUE-letter baseline), `09` (the line follows the
left rotor blade), and `11` (the anchor lies on the red-coated figure). Fresh
analysis, render, visual review, and deterministic scoring returned 100/100
for all four. `scripts/check.sh` passed for the completed unit.

## Critique round — 2026-07-24

Fresh visual review of all twelve current proof PNGs, their overlay and analyzer
JSON, and the chapter, research, manifest, and per-image source records. I
re-ran the deterministic scorer: every spec passes (02 scores 94 with its
already-settled detector-only fence-wire warning; the other eleven score 100).
Every listed official public-display URL returned its image/jpeg response. The
four overlay corrections resolved in the earlier rounds remain resolved and are
not re-raised.

### Required

1. **06-chocks-away — `PROPELLER BLADE` traces empty window space, not a blade.** The polyline runs from the hub at approximately `(0.59, 0.52)` to `(0.73, 0.11)`, well to the right of the nearly vertical black-and-yellow blade visible above the hub (about `x=0.58`). It therefore makes a false feature claim. Reposition it on the actual blade or remove it. The local analyzer/score cannot catch this semantic mismatch, but the rendered proof makes it unambiguous.
2. **08-deliver-us and 10-jamaican-rhapsody — source notes materially describe different photographs.** `sources.md` says 08 has an “elaborate dark setting” and “layered surfaces”; the displayed image is a sunlit outdoor tree-and-car scene with a gold-clad model and oversized *VOGUE* letters. Its 10 entry claims “costume, vegetation, and group placement”; the displayed photograph is a folded map. Replace those two `Why it matters` descriptions (and the associated fair-use Factor 1 wording where it repeats the wrong composition) with truthful accounts of the respective displayed images. These are reader-facing source records, not merely stale internal notes.

### Advisory (non-blocking)

- **02-cut-and-paste:** the scorer continues to warn that `FENCE WIRES` is not a detected edge/vanishing path, but the proof visibly places it on the real sloping fence wires. It remains settled and requires no change.
