verdict: resolved

## Critique round — 2026-08-01

### Required

1. `03-blue-hat`: the `DARK LOWER-GROUND COUNTERWEIGHT` subject anchor is at `(0.802, 0.883)`, on the light skirt rather than a dark lower-ground feature. Retarget it to the actual feature meant by the label or relabel it truthfully.
2. `08-giorgio-armani`: the `HAT CROWN` subject anchor is at `(0.573, 0.0)`, above the visible hat at the frame edge rather than on its crown. Move the anchor onto the crown or change the label to the feature it actually identifies.

### Advisory (non-blocking)

None.

### Review notes

All twelve proof PNGs were visually inspected. The remaining overlays make 3–5 legible, image-specific claims; re-scoring each against its current analyzer report passed at 100. Chapter palette, luminance, and edge-density statements agree with the analysis files. The source record supplies a traceable gallery page and working direct public rendition for every plate, documents a four-factor fair-use rationale for the selection, and avoids invented camera settings.

## Resolution — 2026-08-01

Re-verified critique history: the sole prior round, **2026-08-01**.

1. `03-blue-hat`: the anchor remains at `(0.802, 0.883)`, visibly on the lower skirt fold, and is now truthfully labeled `LOWER SKIRT FOLD`.
2. `08-giorgio-armani`: removed the unsupported top-edge `HAT CROWN` anchor; the remaining symmetry axis and two field ellipses make three truthful, legible claims without a false marker.

Also refreshed the affected proofs and independently checked the related masked-head and profile-contour labels. Every overlay scores 100 with no deductions or warnings; the visual passes are clean. `scripts/check.sh`, `scripts/validate_pipeline.py`, chapter byte-identity, and whitespace validation pass.
