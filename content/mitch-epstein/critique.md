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

## Critique round — 2026-08-03

### Required fixes

1. **09-dinsmore-california — correct the image-specific fair-use rationale in `sources.md`.** The visible proof, overlay, and chapter all identify a shoe-laden tree: the overlay labels `shoe-laden trunk`, `mossed branch sweep`, and `hanging-shoe canopy`. In contrast, the source entry's “Why it matters,” Factor 1, and Factor 3 describe a built edge, settlement, and surrounding terrain—features and a pedagogical need belonging to a different image. Replace those statements with an accurate complete-frame rationale for the shoe-laden tree and its branching/shoe structure. Until then, this copyrighted image lacks the accurate per-image four-factor documentation required for its fair-use selection.

### Advisory (non-blocking)

- **08-standing-rock-prayer-walk — source-note wording.** The proof shows the procession on snow rather than a discernible road; consider replacing “road's visual route” in Factor 1 with the visible walking route. The rest of this image's rationale accurately establishes the group-to-landscape use, so this does not block approval.

All twelve proofs were visually rechecked against their current specs and analyzer records. The prior required corrections for **03-green-mountain-wind-farm** and **06-biloxi-mississippi** remain resolved: the field-horizon and sea-horizon primitives now trace their visible boundaries. Every current overlay scores 100/100 with no deterministic deductions; chapter tonal, palette, and edge-density values match the relevant analyses within tolerance; no capture settings are invented; and the remaining image credits and source routes are traceable.

## Builder resolution — 2026-08-03

1. **09-dinsmore-california:** Rewrote the image-specific source rationale to match the visible complete frame: the mossed, shoe-laden tree, its branching structure, and the suspended-shoe canopy. Factor 1 now states the transformative compositional purpose; Factor 3 explains why the full vertical frame is required; Factor 4 preserves the linked, credited, non-substitutive web-display limitation.
2. **08-standing-rock-prayer-walk (advisory):** Replaced the inaccurate reference to a road with the visible walking route across snow in the source note and Factor 1.

Re-verified every required fix in the full critique history: the first **2026-08-03** round's corrections for **03-green-mountain-wind-farm** (the `field horizon` at `y: 0.862`) and **06-biloxi-mississippi** (the sea-horizon path at `y: 0.665`–`0.675`), plus the second **2026-08-03** round's **09-dinsmore-california** complete-frame fair-use rationale. Current specs score 100/100 for all three checked images; fresh visual review confirms the horizon/shore labels align with their claimed features and the Dinsmore source description matches the proof, overlay, and chapter.
