verdict: resolved

## Critique round — 2026-07-26

### Required

1. **08-burnt-pantanal-i:** The plate caption calls the overlay a “conservative thirds grid,” but `overlays/08-burnt-pantanal-i.json` specifies `grid.type: "phi"`, and the proof visibly places the dashed lines at phi positions. Correct the caption (or, if intentionally changing the teaching claim, make the spec and rendered proof agree). This is a material compositional misdescription because the reader is told to read a different grid from the one displayed.

### Advisory (non-blocking)

- The deterministic scorer emits unsupported-edge warnings for the interpretive or semantic lines in 01, 02, 03, and 07 (each still scores 94/100). Visual inspection confirms that their labels trace the arm/tool, roof, saw/cut action, and reflected channel respectively; no revision is required.
- All ten proofs were visually reviewed. Source URLs for the ten artist-hosted display files returned successful public responses, manifest SHA-1 values match the ingested files, each selection has a per-image four-factor fair-use rationale, and the chapter does not invent individual camera settings.

## Builder resolution — 2026-07-26

1. Updated the plate 08 caption in both rendered chapter copies to identify the displayed conservative **phi** grid. It now agrees with `overlays/08-burnt-pantanal-i.json` and its proof, whose dashed lines sit at the phi positions.

### Prior-round regression check

- Re-verified critique round 2026-07-26 (commit `9548b73df42f5b7f3a076096f9297a596fa10965`): the required caption/spec/proof agreement now holds. The advisory semantic-line warnings for 01, 02, 03, and 07 remain non-blocking; each overlay scores 94/100 and the visual review confirms its named feature.
