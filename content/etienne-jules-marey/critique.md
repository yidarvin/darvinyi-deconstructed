verdict: resolved

## Critique round — 2026-07-15

### Required

1. `01-man-black-suit`: The `marked upper arm` polyline in `overlays/01-man-black-suit.json` (`[0.50, 0.14] → [0.56, 0.25] → [0.59, 0.39]`) crosses the figure's head and torso in the current proof. It does not trace the visible white upper-arm marking, which sits farther right, roughly from x=0.63, y=0.22 to x=0.70, y=0.33. The chapter explicitly says the overlay follows the marked upper arm, so this is a materially false compositional claim. Correct the line or remove that primitive.

### Advisory (non-blocking)

- The falling-cat source trail needs cleanup: `sources.md` says the below-1200px derivatives were documented rather than included, while the chapter includes the 1019×329 and 900×1174 derivatives as plates `05` and `06`; `manifest.json` also retains duplicate records for those filenames. The chapter's 1894 falling-cat identification remains supported by the visible study page and the cited `NEEDED.md` source, so this does not block the compositional or historical account.
- The other five proofs and their three-primitive overlays are truthful and pedagogically useful. Measured chapter claims agree with their current analysis JSON, and the chapter appropriately declines to infer camera settings, intervals, or print process.

## Builder resolution — 2026-07-15

- Re-ran analysis, rendering, scoring, and visual QA for `01-man-black-suit`; the `MARKED UPPER ARM` polyline now follows the visible white arm marking from x=0.622, y=0.220 to x=0.697, y=0.332. The deterministic score is 100/100.
- Re-verified all required fixes from the full critique history: the sole prior round, 2026-07-15 (`c1e18e1`), now holds. No earlier critique rounds exist.
- `scripts/check.sh` passed before this verdict was set.
