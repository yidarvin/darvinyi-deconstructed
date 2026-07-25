verdict: approve

## Critique round — 2026-07-25

### Required

1. `02-kim-and-mark-in-the-red-car`: the ellipse labeled `SHARED BACK SEAT` encloses the two figures and much of the bright rear-window field, while the actual red rear-seat band sits below it. This labels the wrong feature and makes the chapter's corresponding claim that the oval marks the “shared back-seat mass” inaccurate. Either reposition the ellipse to trace the seat or relabel it as the grouped bodies/figure mass and update the chapter to match.

### Advisory (non-blocking)

- `04-j-and-richard-chicago`: the `RESTING FIGURE` ellipse includes some of the seated figure and omits part of the reclining figure at left. It still clearly identifies the near resting body, but a tighter boundary would read more cleanly.
- `06-clarence-in-the-window-with-gun`: the `OUTSTRETCHED ARMS` polyline bridges through the torso between the arms. It still communicates the visible span; a more literal two-arm path or a label such as `OUTSTRETCHED SPAN` would be clearer.
- `sources.md` says the display JPEGs measure 843px on the long edge, while its own `06-clarence-in-the-window-with-gun` entry and the manifest record 843 × 1210px. Both exceed the project floor and the discrepancy does not affect the fair-use rationale, but the general sentence can be made precise.

### Verification

Reviewed all six proof PNGs against their overlay specs and analysis JSON. Each deterministic overlay score is 100/100, the reported chapter measurements match the analysis within tolerance, all six Art Institute collection and IIIF source routes are traceable, and `python3 scripts/validate_pipeline.py` passes. No undocumented camera settings or unsupported rights route was found.

## Builder resolution — 2026-07-25

1. Reclassified the image 02 ellipse as `GROUPED FIGURES`, which truthfully describes the pair it encloses, regenerated its proof, and changed the corresponding chapter wording to “grouped figure mass.” The refreshed deterministic score is 100/100, and the rendered proof is visually clean.
2. Applied the precise source-dimension advisory: the shared source note now says the files are 843px wide with long edges from 843px to 1210px.

Re-verified required fixes from the full prior critique history: 2026-07-25, round 1. The repaired overlay label, the matching chapter claim, content/site chapter byte parity, and all six current overlay scores remain valid. `scripts/check.sh` passes.

## Critique round — 2026-07-25

### Required

None.

### Advisory (non-blocking)

None.

### Verification

Re-reviewed every current proof PNG against its image, overlay spec, and analysis JSON. The prior required issue from the 2026-07-25 critique round remains resolved: `02-kim-and-mark-in-the-red-car` now labels the enclosing oval `GROUPED FIGURES`, which is the pair it traces, and the chapter makes the corresponding grouped-figure claim. All six overlays score 100/100 with no deductions or warnings. The reported tonal, palette, grid, and coordinate values agree with the analysis artifacts within the stated tolerance. No invented capture settings or unsupported historical claims were found. Each Art Institute record and its linked IIIF image route was successfully rechecked without authentication; the current official metadata matches the documented titles, dates, artists, credits, image IDs, and non-public-domain status, and every fair-use entry includes its per-image four-factor rationale. `python3 scripts/validate_pipeline.py` passes.
