verdict: resolved

## Critique round — 2026-07-24

All twelve rendered proofs were reviewed against their overlay and analysis JSON, the chapter, research note, manifest, and per-image source records. The source records provide a direct artist-portfolio link, creator/rightsholder identification, and a concise four-factor fair-use rationale for each image; no settings claims or source-integrity blockers were found.

### Required

1. `03-woman-with-a-stone-skirt` — `STONE SKIRT EDGE` is anchored at `(0.465, 0.624)`, well inside the stone mass rather than on its contour. Move the anchor to the named edge or rename it to a claim the marked interior actually supports.
2. `05-night-garden` — `DARK OPENING` is centered at `(0.64, 0.69)`, enclosing the lower ladder/ground; the black opening is substantially lower, around `y=0.79`. Recenter and resize the ellipse on the visible opening before retaining the chapter's descent claim.
3. `06-cloud-sisters` — the `PAIRING TENSION` `symmetry_axis` at `x=0.625` cuts through the larger right-hand figure rather than marking a visible shared axis or the relationship between the two figures (whose head centres are approximately `x=0.29` and `x=0.74`). Recast this as a truthful relational primitive or move/remove the symmetry-axis assertion.
4. `09-poets-house` — the `HOUSE` anchor at `(0.54, 0.78)` is visibly left of the house; the analyzer independently locates the strongest corresponding subject signal at `(0.632, 0.804)` (score deduction: 0.068 diagonal). Move it onto the house.
5. `12-the-patient-gardener` — the `ARM SPAN` W-shaped polyline travels through lower torso and background rather than following the figure's outstretched arms. Redraw it along the visible arms or relabel/remove it.

### Advisory (non-blocking)

- `02-three-trees-two-rabbits` — `EMERGING RABBIT` lands at the rear/opening rather than the visible head; moving it toward `(0.424, 0.690)` would clarify the callout (current score 97.4).
- `04-girl-with-a-bee-dress` — the `FLOWER INTERRUPTION` ellipse is somewhat high for the flower; recentering it slightly lower would tighten an otherwise legible annotation.
- `05-night-garden` — shorten `TREE SHADOW` to the ground shadow or rename the full trunk-to-shadow route; the ladder path could also adhere more closely to the ladder's lower extent.
- `06-cloud-sisters` — the `CLOUD CROSSING` polyline is a plausible movement path but could follow the cloud edges more decisively.
- `07-the-alchemists` — the `ROCK EDGE` line is slightly offset from the detected edge (score 96.6); it remains visually legible.
- `12-the-patient-gardener` — tightening the final `BUTTERFLY COUNTERPOINTS` point to an actual butterfly would make the interpretive path cleaner.

## Builder resolution — 2026-07-24

All required items from the 2026-07-24 critique round were re-verified after a fresh analyze → render → score → visual-review loop. `03-woman-with-a-stone-skirt` now names its marked interior truthfully as `STONE SKIRT MASS`; `05-night-garden` centers and resizes `DARK OPENING` on the visible hole and extends the ladder route to it; `06-cloud-sisters` replaces the false symmetry axis with a head-to-head relational polyline, with the chapter wording updated to match; `09-poets-house` moves the `HOUSE` anchor to `(0.632, 0.804)`; and `12-the-patient-gardener` redraws `ARM SPAN` from the left hand through both shoulders to the right hand. Scores are 100, 95.7, 100, 100, and 100 respectively; each rendered proof passed visual review.

Full critique history re-verified: 2026-07-24 (the only prior round).

## Critique round — 2026-07-24

All twelve current proof PNGs were reviewed against their images, overlay and analysis JSON, chapter, manifest, research note, and per-image source records. The prior five required overlay fixes remain resolved: their current specs and proofs match the recorded resolutions. The current review also independently checked the linked artist portfolio, which identifies the works by title, describes the collection as early digital photomontages, and displays the copyright notice `© Maggie Taylor. All rights reserved.`

### Required

1. `03-woman-with-a-stone-skirt` — `SKIRT SILHOUETTE` does not trace the skirt's silhouette. Its points run from the lower stone mass through the torso/collar at `(0.63, 0.30)` and back down through the mass, crossing interior rather than following an outer edge. Redraw it on the visible skirt contour or rename it to the triangular figure structure it actually marks.
2. Source integrity — `sources.md` says the artist portfolio identifies every selected work's date and medium “Digital composite”; the linked page supports the titles and a group-level early-digital-photomontage description, but not those per-work facts. The unsourced exact dates appear in every shortlist heading and plate label, and “Digital composite” is repeated in `sources.md` and `research.md`. Add traceable authoritative per-work metadata for every date/medium claim, or remove/qualify the claims.
3. Source integrity — the official artist page's copyright notice, `© Maggie Taylor. All rights reserved.`, is not preserved in `sources.md`. Add that exact notice to the shared rights basis (explicitly applying it to all twelve records) or to each record, alongside the existing creator, source links, and four-factor rationales.
4. Source/chapter accuracy — four per-image “Why it matters” descriptions in `sources.md` materially contradict the completed overlays and chapter: `08-moth-dancer` claims upward/vertical lift although the chapter and lateral balance paths explicitly reject upward motion; `10-the-reader` calls a central reading figure despite the chapter's visible seated, right-weighted non-reader; `11-water-folly` treats reflection as the organizing device despite the chapter's backdrop reading; and `12-the-patient-gardener` calls the figure small and emphasizes empty intervals despite the visible monumental figure and dense field. Reconcile each source description and its paired fair-use Factor 1 wording with the current visible/compositional account.

### Advisory (non-blocking)

- `04-girl-with-a-bee-dress` — the overlapping `FLOWER AND FIGURE` and `FLOWER INTERRUPTION` labels slightly crowd the same focal area. The primitives still identify the correct flower/figure relation.
- `09-poets-house` — `PAGE SPIRAL` is a deliberately coarse interpretive path through the floating pages; labeling it as directional flow would make that reading even clearer, but it does not misidentify the page field.

## Builder resolution — 2026-07-24

Resolved every required item from the current 2026-07-24 critique round. `03-woman-with-a-stone-skirt` now names the existing interior-spanning polyline `TRIANGULAR FIGURE STRUCTURE`, which is the visible figure construction it marks; its refreshed proof passed visual review and scores 100/100. The unsupported per-work dates and “Digital composite” labels were removed from the source shortlist, research note, chapter plates, rendered chapter, and contact sheet; the source record now limits itself to the portfolio's supported group-level digital-photomontage context. The shared rights basis now preserves the exact portfolio notice `© Maggie Taylor. All rights reserved.` and explicitly applies it to all twelve records. The four source accounts and Factor 1 rationales now match the chapter and overlays: lateral balance in *Moth dancer*, a right-weighted seated figure and page relay in *The reader*, staged boundary and diagonal counterpoint in *Water folly*, and a monumental figure with butterfly/house counterpoints in *The patient gardener*.

Full critique history re-verified: the prior resolved 2026-07-24 round (stone-skirt mass, night-garden opening, sister-to-sister relation, house anchor, and gardener arm span) and the current 2026-07-24 round. Fresh visual proof review and deterministic scores confirm the prior required overlay fixes remain in place: `03` 100, `05` 95.7, `06` 100, `09` 100, `12` 100. `scripts/check.sh` hard gates were completed across pipeline validation, queue validation, runtime scan, driver regression, chapter sync, prose lint, tests (248 passed), production build, and lint; the two chapter copies remain byte-identical.
