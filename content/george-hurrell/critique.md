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

## Critique round — 2026-07-18

Reviewed all ten current proofs against their overlay specifications and
analysis records. Each spec scores 100/100 in both normal and strict scoring.
Independently checked the source dossier, research, manifest, chapter mirror,
and all chapter numeric claims. The resolved date, source-description, Lombard,
and Loy findings from the prior round remain resolved.

### Required

1. **`02-conrad-nagel` — the `FOREHEAD HIGHLIGHT` subject anchor traces a
   bright streak in swept hair, not forehead skin.** The proof places it at
   `(0.588, 0.101)`, visibly above the hairline; the overlay notes and chapter
   repeat the false “forehead highlight” claim. Relabel it as the visible hair
   highlight/part, or move it to an actual forehead highlight, and make the
   notes and chapter language match the corrected feature.

### Advisory (non-blocking)

- **`10-olivia-de-havilland`:** `HAIRLINE ARC` follows the outer hair mass
  rather than the skin-to-hair boundary. The arch still truthfully teaches the
  supporting hair silhouette and does not change the chapter's compositional
  reading, but `HAIR MASS` would be a more exact future-polish label.

## Resolution — 2026-07-18

Resolved the required `02-conrad-nagel` annotation correction: the anchor at
`(0.588, 0.101)` remains on the measured bright streak in the swept hair, but
is now truthfully labeled `HAIR-PART HIGHLIGHT`. The overlay thesis, Plate
caption, chapter prose, source description, and regenerated proof all use that
same claim. Its strict overlay score is 100/100 with no deductions or warnings,
and the regenerated proof received a clean visual pass.

Re-verified the required fixes from the prior 2026-07-18 critique round (the
four-item Lombard/Nagel/Loy review): Lombard's `HAIR MASS` and `JACKET LAPEL V`
still align with their claimed structures; Nagel remains a tight
head-and-shoulders portrait dated *The New Movie*, July 1930; and Loy remains
undated throughout the chapter, research note, and source dossier. Lombard's
strict overlay score remains 100/100 with no deductions or warnings.

## Critique round — 2026-07-18

Reviewed all ten current rendered proofs, their overlay specifications, and the
matching analyzer records. Every current spec scores 100/100 with no geometric
deductions or warnings; that does not cure the two semantic-tracing errors below.
Checked the chapter's tonal numbers against the analyzer records (within the
stated tolerance), and checked every cited Commons record: each source remains
traceable, credited, and identified there as public domain. The previously
resolved Nagel, Lombard, and Loy findings remain resolved.

### Required

1. **`05-jean-parker` — `SHADOW CONTOUR` does not trace a visible shadow
   boundary.** Its polyline from `(0.413, 0.513)` through `(0.593, 0.660)` to
   `(0.713, 0.874)` runs through the featureless black silhouette rather than
   along an edge of the projected shadow. This makes both the label and the
   chapter's claim that the overlay makes that contour explicit misleading.
   Redraw it on a visible shadow boundary, or remove/relabel it and adjust the
   Plate caption and paragraph to the truthful claim.

2. **`06-joan-crawford` — `FOLDED HANDS` does not trace the folded hands.** The
   polyline begins on the left patterned sleeve and cuts across fabric and the
   upper hand mass; it is not aligned to a discernible hand contour. Redraw it
   to a specific visible hand edge, or relabel it for the feature actually
   followed, and make the caption and paragraph consistent with that result.

### Advisory (non-blocking)

- **`03-rita-hayworth`:** `HAIR HIGHLIGHT` remains clipped by the top crop. As
  in the prior round, its geometry is within tolerance and it does not change
  the compositional reading; relocating or omitting it would improve clarity.
- **`07-karen-morley`:** the `LIT FACE` ellipse stops above the mouth and chin.
  It still correctly identifies the lit upper-face plane, but a fuller ellipse
  or a more exact upper-face label would make the annotation clearer.

## Resolution — 2026-07-18

Resolved the two required annotation corrections from the latest critique round:

1. `05-jean-parker` no longer asserts a nonexistent `SHADOW CONTOUR`.
   The revised overlay retains only the observed hair highlight and face; its
   thesis and chapter text now describe the large dark silhouette as deliberately
   unoutlined. The regenerated proof received a clean visual pass and scores
   100/100 in strict scoring.
2. `06-joan-crawford` no longer asserts that its lower polyline traces folded
   hands. The revised overlay retains the measured portrait axis and face-plane
   annotations, and the thesis, Plate caption, and prose now truthfully discuss
   the patterned sleeves. The regenerated proof received a clean visual pass
   and scores 100/100 in strict scoring.

Re-verified every required item from all prior critique rounds in this history:
the original 2026-07-18 four-item Lombard/Nagel/Loy round (`HAIR MASS`,
`JACKET LAPEL V`, the tight July 1930 Nagel portrait, and undated Loy); the
following 2026-07-18 Nagel `HAIR-PART HIGHLIGHT` round; and the present
Parker/Crawford round. All ten current overlays score 100/100 in strict scoring,
the chapter mirror is byte-identical, and `scripts/check.sh` passed.
