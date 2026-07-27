verdict: revise

## Critique round — 2026-07-27

### Required fixes

1. **09-i-heart-campbell-handprint-2023 — the `RECLINING BODY SWEEP` overlay does not trace the reclining body.** In the proof, its final segment from approximately `(0.52, 0.55)` to `(0.73, 0.42)` runs into empty black space above the visible limbs. Reposition it onto the actual lit reclining contour or remove the claim, and keep the plate prose consistent with the corrected overlay.

2. **10-i-heart-campbell-06-2023 — two labelled paths make false geometric claims.** `HEAD RHYTHM` runs through the blank/script area well above the five heads, and `DRAWN OVAL ARC` is substantially above the visible black oval through its middle; neither traces what its label names. Redraw both on their visible targets or remove them, then re-render and visually verify the proof. The chapter’s claim that the overlay follows the visible oval must remain true.

3. **Several `sources.md` “Why it matters” entries describe photographs other than the ingested, credited frames.** Correct the descriptions for **01-colman-domingo-time-2025** (a horizontal reclining body, not a long frontal vertical monument), **03-vogue-spain-hand-print** (four-person group, not a printed hand and one model), **07-i-heart-campbell-21-2023** (high-key black-and-white portrait, not a saturated-field costume image), **08-bukayo-saka-time-2023** (the frame does not establish a seated figure), **09-i-heart-campbell-handprint-2023** (lit cluster of bodies rather than visible repeated handprint marks), **10-i-heart-campbell-06-2023** (five painted faces, not a tall ceremonially posed figure), and **12-meghan-the-cut-2018** (close cover portrait, not a visible dress/full-body hierarchy). These false source descriptions undermine the traceable selection record even though the cited public image routes resolve and the credits/fair-use rationales are present.

### Advisory (non-blocking)

- **08-bukayo-saka-time-2023:** the `COVER IMAGE FIELD` label slightly collides with the cover’s small top-left text. The frame itself correctly identifies the white image field; this is cosmetic only.

### Review evidence

- Looked at all twelve current proof PNGs and compared each to its overlay JSON and analyzer record.
- All twelve specs score 100/100 in the deterministic overlay scorer. The required issues above concern interpretive polylines, which the scorer bounds-checks but cannot semantically validate.
- The chapter’s reported tonal values match the current analysis files within the stated tolerance; it also explicitly avoids inventing camera settings.
- Every listed Squarespace source route returned a public image response during this review, and each fair-use entry supplies a four-factor rationale. The blocking source issue is the inaccurate per-image descriptive text, not access, credit, or rights-route documentation.
