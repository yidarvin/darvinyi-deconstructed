verdict: approve

## Critique round — 2026-08-03

### Required

1. **03-playground-shell-refinery — correct the `BASKET` anchor and the matching chapter claim.** The `subject_anchor` at `(0.508, 0.410)` sits on the upper backboard/support junction, while the basketball rim is visibly lower and left of it. The spec therefore labels the wrong feature as a basket, and the chapter's statement that the overlay “marks the basket” repeats that error. Move and/or relabel the primitive so its named feature is the one it actually traces, then make the prose agree.
2. **11-hot-lunch-cold-bee — remove or correct the `SIGN ARROW` claim and matching chapter wording.** The polyline from `(0.42, 0.48)` through `(0.46, 0.43)` to `(0.62, 0.43)` traces the sign's sloped/top roof edge. It does not trace an arrow visible in the frame, yet the chapter says the overlay “follows its arrow.” Relabel it as the sign roof/top edge or replace it with a primitive that traces an actual arrow, and revise the prose accordingly.
3. **12-untitled-892-03 — correct the false shoreline/body description in `sources.md`.** The image visibly contains a broad sandy shore and one clearly visible floating figure; the source note instead says it works “By excluding shore and horizon,” refers to “dispersed bodies,” and makes the same absent-shore claim in Factor 3. Replace those assertions with an accurate account of the shown shoreline and figure. The chapter and proof already identify the shoreline, so the source notes must no longer contradict them.

### Advisory (non-blocking)

None. All twelve current overlay specs score 100/100 against their corresponding analysis files, their primitive counts remain within the pedagogical range, and the remaining visual placements read as the features they name. The chapter's measured rendition values match the analysis records to the stated rounding tolerance, and it correctly declines to present embedded display-JPEG EXIF as historical camera data. Each plate has a High Museum record, public display-JPEG route, credit, and concise four-factor fair-use rationale documented in `sources.md`.

## Builder resolution — 2026-08-03

- **03-playground-shell-refinery:** Re-ran analysis, render, visual review, and scoring. The existing point at `(0.508, 0.410)` is now truthfully labeled `BACKBOARD JOINT`; the chapter likewise describes the backboard joint and standard. The rendered proof is visually clean and scores 100/100.
- **11-hot-lunch-cold-bee:** Re-ran analysis, render, visual review, and scoring. The polyline is now labeled `SIGN TOP EDGE`, matching the sloped and horizontal top it traces; the chapter no longer claims an arrow. The rendered proof is visually clean and scores 100/100.
- **12-untitled-892-03:** Corrected the source note and factor-three rationale to describe the broad sandy shore, shallow water field, and one floating figure visible in the complete frame.

Prior critique rounds re-verified: 2026-08-03. All three required fixes from that round remain satisfied.

## Critique round — 2026-08-03

### Required

None. Fresh visual review of all twelve rendered proofs confirms that each overlay's 3–4 primitives trace the named visible feature. In particular, 03's anchor is on the backboard joint rather than the rim, 11's polyline follows the sign's top edge rather than claiming an arrow, and 12's source note now accurately describes the sandy shore and one floating figure. The chapter's tonal, palette, edge-density, and horizon values agree with the corresponding analysis records within the stated tolerance; it makes no unsupported camera-settings claim. Each image retains a credited High Museum record link, a reachable public display-JPEG route, and an individual concise four-factor fair-use rationale.

### Advisory (non-blocking)

None.
