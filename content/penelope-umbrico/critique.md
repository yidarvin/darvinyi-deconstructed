verdict: resolved

## Critique round — 2026-07-26

### Required

1. **06-weston-calotype-filters** — Correct the subject description in `sources.md`. Its “Why it matters” entry calls the work “a borrowed modernist still-life,” but the supplied proof visibly depicts a mountain landscape; the current overlay likewise traces a `MOUNTAIN-RIDGE CONTOUR`, and the chapter accurately describes a mountain-like contour. Replace the still-life identification with a visually supported landscape/mountain description without asserting unverified provenance.

### Advisory (non-blocking)

- **07-swiss-alps-duotone-filters** — The source-note phrase “red-orange grading” does not closely describe the predominantly pale green, purple, and brown duotone visible in the proof. Consider using a less specific color-treatment description. This does not affect the chapter’s materially accurate reading.

### Review evidence

- All 12 rendered proofs were visually checked against their overlay specs. The scored overlays pass their required threshold (82–100); the labels and primitives are materially truthful in the rendered images.
- Chapter numeric claims match the corresponding analyzer output within tolerance. The chapter and research note correctly withhold unverified camera, print, and capture settings.
- Each plate has a reachable gallery record and public display rendition, an identified credit/rightsholder notice, and a concise per-image four-factor fair-use rationale.

## Builder resolution — 2026-07-26

- Resolved required item 1: the source note for plate 06 now identifies only the visually supported mountain landscape, without asserting unverified provenance.
- Applied the inexpensive advisory correction for plate 07: the source note now describes its visible pale green, purple, and brown color treatment.
- Re-verified every required item from the full critique history: round 2026-07-26 (the only prior round). The plate 06 proof still shows the mountain landscape named by its `MOUNTAIN-RIDGE CONTOUR` overlay; the chapter's existing "mountain-like contour" reading remains accurate.
- Re-ran all twelve overlay scores (82–100, each passing the required 80 threshold), visually checked the proof contact sheet, confirmed chapter-copy parity, and passed `scripts/check.sh` plus `python3 scripts/validate_pipeline.py`.

## Critique round — 2026-07-26

### Required

1. **06-weston-calotype-filters** — Correct the `notes` thesis in
   `overlays/06-weston-calotype-filters.json`. It still says that the filter
   field presses “a borrowed still-life” into a mediated surface, while the
   current proof visibly depicts a mountain landscape and its primitive is
   correctly labeled `MOUNTAIN-RIDGE CONTOUR`. Replace the false still-life
   identification with a visually supported mountain/landscape description.
   This is not a reopening of the prior `sources.md` finding: that source-note
   correction remains resolved; the remaining false claim is in the current
   overlay specification.

### Advisory (non-blocking)

- None.

### Review evidence

- Visually rechecked all twelve current proof PNGs against their overlay specs
  and analyzer outputs. Apart from the plate 06 spec-thesis misidentification,
  the 3–5 primitives per plate trace the named visible structures and the
  rerun scores pass at 82–100.
- Chapter values agree with the analyzer at the stated precision; the chapter
  and research note do not invent camera or print settings.
- All twelve gallery-record and public-display URLs returned HTTP 200, and
  every plate retains a per-image four-factor fair-use rationale, credit, and
  source link.

## Builder resolution — 2026-07-26

- Resolved required item 1: the plate 06 overlay thesis now identifies the
  visibly supported mountain landscape rather than a still-life.
- Re-verified required fixes from both prior critique rounds dated 2026-07-26:
  the earlier `sources.md` correction still describes plate 06 only as a
  mountain landscape, and the current overlay thesis now matches its
  `MOUNTAIN-RIDGE CONTOUR` primitive and the rendered proof.
- Re-rendered and visually checked plate 06; its pane frames and ridge contour
  remain aligned to the visible image, and its deterministic overlay score is
  100/100 (passing the 80 threshold).
- Passed `scripts/check.sh`, `python3 scripts/validate_pipeline.py`, and
  chapter-copy parity verification.
