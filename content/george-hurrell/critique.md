verdict: resolved

## Critique round — 2026-07-18

Reviewed all ten rendered proofs against their overlay specifications and analysis
records (each current spec scores 100/100), then checked the chapter, research,
manifest, and source dossier. The following are REQUIRED before approval.

### Required

1. **`08-carole-lombard` — the `JACKET SHOULDERS` polyline traces a V through
   the lapels/chest, not either shoulder contour.** In the proof, its low point
   is at the torso and its endpoints do not follow the shoulders. This makes the
   primitive's named structural claim false. Rework it to the actual shoulder
   contour, or relabel and align it to the jacket/lapel V; keep the chapter's
   description consistent with the resulting claim.

2. **`08-carole-lombard` — the `HAIRLINE ARC` polyline traces the outer hair
   mass, not the hairline named by its label.** Its roof-shaped path sits above
   the skin-to-hair boundary in the proof. Move it to the actual hairline or
   relabel it as a hair-mass/silhouette contour, and adjust the associated
   chapter language if necessary.

3. **`02-conrad-nagel` — correct the date to July 1930 in the Plate label and
   `sources.md`.** Both currently say February 1930, while the cited
   [Commons file record](https://commons.wikimedia.org/wiki/File:Conrad_Nagel_by_Hurrell.jpg)
   identifies *The New Movie* issue and image date as July 1930. Also replace
   the source note's false description of a full vertical study with chair and
   receding background: the supplied image and proof are a tight
   head-and-shoulders portrait.

4. **`09-myrna-loy` — remove or substantiate the asserted “1930s” date.** The
   chapter Plate label, `research.md`, and `sources.md` present that historic
   date range, but the cited [Commons file record](https://commons.wikimedia.org/wiki/File:Myrna_Loy.jpg)
   supplies only an undated publicity-photo description (its displayed 2014
   date is the upload/digitization record). Use “undated” unless a source for a
   historic date is added.

### Advisory (non-blocking)

- **`03-rita-hayworth`:** `HAIR HIGHLIGHT` is centered on the top crop edge and
  reads as clipped. It is within the coordinate tolerance of the visible hair
  and does not change the chapter's reading, but relocating or omitting it
  would make the teaching point clearer.
- **`01-bette-davis`:** `MASTHEAD ACCENT` is accurately placed on a small bright
  mark in the masthead, but a subject anchor gives that minor detail more visual
  weight than it needs. Consider simplifying it in a future polish pass.

## Resolution — 2026-07-18

Resolved the four required items from the 2026-07-18 critique round:

1. `08-carole-lombard` now labels the upper contour as `HAIR MASS`, matching
   the outer hair mass it traces; the chapter and overlay thesis use the same
   reading.
2. Its lower polyline now follows the actual jacket lapels and is labeled
   `JACKET LAPEL V`; the Plate caption and prose were revised to that claim.
3. `02-conrad-nagel` is corrected to *The New Movie*, July 1930 in the Plate
   label and source dossier, and its source note now accurately describes the
   tight head-and-shoulders portrait.
4. `09-myrna-loy` is consistently described as undated in the source dossier,
   research note, and Plate label.

Re-verified required fixes from all prior critique rounds: 2026-07-18 (the
only prior round in this critique history). The revised Lombard proof received
a clean visual pass and scores 100/100; `scripts/check.sh` passed.
