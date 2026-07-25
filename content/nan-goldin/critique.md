verdict: revise

## Critique round — 2026-07-25

### Required

1. `02-kim-and-mark-in-the-red-car`: the ellipse labeled `SHARED BACK SEAT` encloses the two figures and much of the bright rear-window field, while the actual red rear-seat band sits below it. This labels the wrong feature and makes the chapter's corresponding claim that the oval marks the “shared back-seat mass” inaccurate. Either reposition the ellipse to trace the seat or relabel it as the grouped bodies/figure mass and update the chapter to match.

### Advisory (non-blocking)

- `04-j-and-richard-chicago`: the `RESTING FIGURE` ellipse includes some of the seated figure and omits part of the reclining figure at left. It still clearly identifies the near resting body, but a tighter boundary would read more cleanly.
- `06-clarence-in-the-window-with-gun`: the `OUTSTRETCHED ARMS` polyline bridges through the torso between the arms. It still communicates the visible span; a more literal two-arm path or a label such as `OUTSTRETCHED SPAN` would be clearer.
- `sources.md` says the display JPEGs measure 843px on the long edge, while its own `06-clarence-in-the-window-with-gun` entry and the manifest record 843 × 1210px. Both exceed the project floor and the discrepancy does not affect the fair-use rationale, but the general sentence can be made precise.

### Verification

Reviewed all six proof PNGs against their overlay specs and analysis JSON. Each deterministic overlay score is 100/100, the reported chapter measurements match the analysis within tolerance, all six Art Institute collection and IIIF source routes are traceable, and `python3 scripts/validate_pipeline.py` passes. No undocumented camera settings or unsupported rights route was found.
