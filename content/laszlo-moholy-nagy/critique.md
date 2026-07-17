verdict: resolved

## Critique round — 2026-07-17

### Required

1. `12-target-practice`: The three ellipse primitives labeled `large target circle`, `group ring`, and `isolated figure ring` do not trace their respective black circular zones in the proof. Their centers and bounds are materially displaced (for example, the isolated figure's printed ring is around x≈0.53, y≈0.10 while its overlay ellipse is centered at x=0.43, y=0.16; the group ring is likewise displaced left). This exceeds the endpoint tolerance and makes the overlay's claimed circles misleading. Refit each ellipse to the printed circle it names, then rerender and rescore the proof.

2. `12-target-practice`: The `diagonal track boundary` leading line crosses the group and blank field rather than following either visible edge of the long diagonal track. The deterministic scorer independently reports that the line tracks no detected edge, and the proof confirms the semantic mismatch. Trace a real track boundary or remove this primitive, then rerender and rescore.

### Advisory (non-blocking)

None. The remaining eleven proofs are materially truthful on visual inspection; their scorer warnings concern detector support for semantically visible contours rather than a false labeled feature. All twelve source records are traceable to the linked Met and Commons records, the displayed dates and media agree with the Met records, and the chapter appropriately omits unverified camera settings.

## Resolution — 2026-07-17

Re-verified prior critique round: 2026-07-17 (the complete critique history for this slug).

1. Refit `large target circle`, `group ring`, and `isolated figure ring` to their corresponding printed circles. The rerendered proof visually confirms that each teal ellipse follows its named black ring.
2. Removed the misleading `diagonal track boundary` primitive and aligned the plate caption and explanatory prose with the remaining truthful claims.

Fresh analysis, rendering, and scoring for `12-target-practice` pass at 97/100 (threshold 80). The remaining scorer warning is only the expected three-ellipse complexity warning; each ellipse is necessary because the photograph contains three distinct, named printed circles.
