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

## Resolution — 2026-07-27

- Re-verified the full critique history: the 2026-07-27 round (the only prior round).
- Removed the unsupported `RECLINING BODY SWEEP` from 09; the remaining ellipse and `LEFTWARD FIGURE CHAIN` stay on the lit cluster. Re-rendered proof and strict-scored 100/100.
- Removed the unsupported `HEAD RHYTHM` from 10 and redrew `DRAWN OVAL ARC` on the visible black oval. Re-rendered proof and strict-scored 100/100; the chapter now remains accurate in saying that the overlay follows the visible oval.
- Corrected the cited source descriptions and their directly related fair-use teaching rationales for 01, 03, 07, 08, 09, 10, and 12 to match the ingested frames.
- Reconfirmed both chapter copies are byte-identical and ran `scripts/check.sh` successfully.

## Critique round — 2026-07-27

### Required fixes

1. **08-bukayo-saka-time-2023 — `SHOULDER LINE` does not trace either visible shoulder.** The three-point path runs from the lower left of the jersey through its chest to the lower right sleeve (roughly `(0.25, 0.65)` → `(0.46, 0.53)` → `(0.66, 0.67)`), rather than following the garment's shoulder contours from the collar. This is a materially false labelled compositional feature. Redraw it on the actual shoulder edges, or replace it with a label and primitive that truthfully name the feature it traces; retain three useful teaching claims for the plate and re-render the proof.

### Advisory (non-blocking)

- **08-bukayo-saka-time-2023:** the `COVER IMAGE FIELD` label still overlaps a small portion of the cover's top-left type. The frame itself traces the inner image field correctly, so this remains cosmetic.

### Review evidence

- Looked afresh at all twelve current proof PNGs and compared every labelled primitive with its proof, overlay JSON, and analyzer record. The previously resolved 09 body-sweep removal and 10 drawn-oval redraw remain materially correct; neither is re-raised.
- Every overlay strict-scores 100/100. The required issue is semantic: the scorer cannot determine whether an interpretive polyline actually traces the labelled shoulder feature.
- The chapter's reported tone, percentile, edge-density, and stated axes agree with the current analysis values within the stipulated tolerance. It makes no unsupported camera-setting claim.
- All twelve credited direct portfolio image routes returned HTTP 200 during this round. Each source entry retains a traceable artist-portfolio route, credit, and concise four-factor fair-use rationale; no source-integrity blocker remains.
