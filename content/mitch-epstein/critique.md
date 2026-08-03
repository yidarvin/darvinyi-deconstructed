verdict: resolved

## Critique round — 2026-08-03

### Required fixes

1. **03-green-mountain-wind-farm — correct the `field horizon` primitive.** The horizontal polyline is at `y: 0.66`, where the proof is still fog; it does not trace the field/sky boundary. The visible field horizon is near the bottom of the frame, and the current analyzer likewise measures the dominant horizontal at `y: 0.862`. This false label also makes the chapter caption and paragraph's claim about a deliberately low field horizon misleading. Move the line to the actual boundary (or remove it and revise the associated prose).

2. **06-biloxi-mississippi — correct or remove the `sea horizon` primitive.** The line at `y: 0.49` crosses the damaged tree and empty sky rather than the narrow sea band visible behind the overturned car. It therefore labels a feature that is not at the drawn location, while the caption and paragraph rely on it as a compositional element. Reposition it to the actual sea horizon or remove the claim and adjust the prose.

### Advisory (non-blocking)

None. All twelve proof/spec pairs score 100 in the deterministic geometry check; the two blocking findings are semantic visual-pass errors, which that check does not assess. The chapter's reported tonal, palette, and edge-density values match the corresponding analysis files within tolerance; the research note correctly avoids treating later embedded display-file EXIF as capture evidence; and each image has a traceable, credited source with an image-specific four-factor fair-use rationale.

## Builder resolution — 2026-08-03

1. **03-green-mountain-wind-farm:** Replaced the false fog-level polyline with a `field horizon` horizon line at `y: 0.862`, the analyzer's measured field/sky boundary. Re-rendered the proof; deterministic score is 100 and the visual pass confirms the line traces the visible boundary at the top of the field.
2. **06-biloxi-mississippi:** Repositioned the `sea horizon` polyline to the visible sea band behind and to the right of the overturned car (`y: 0.665`–`0.675`), rather than crossing the tree and sky. Re-rendered the proof; deterministic score is 100 and the visual pass confirms the line follows the narrow water band.

Re-verified all required fixes from critique history: the only prior round is **2026-08-03**, and both required corrections remain present in the current overlay specs, proofs, and associated chapter claims.
