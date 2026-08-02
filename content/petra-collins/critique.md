verdict: revise

## Critique round — 2026-08-02

### Required

1. **02-selfie-pdf-8 — false `PHONE-TO-HAND RELAY`.** The polyline from `(0.505, 0.633)` to `(0.603, 0.756)` remains beside the lower-centre figures and never reaches the phone at roughly `(0.43, 0.80)`. Redraw it on the actual phone-to-hand route, or remove/rename it.

2. **04-selfie-9 — unsupported `MIRROR FIELD` frame.** The `frame_in_frame` at `x .515–.790`, `y .054–.939` brackets an unbounded pale field rather than a visible internal mirror boundary. Remove it or replace it with a primitive that traces an identifiable mirror edge.

3. **05-selfie-pdf-3 — false mirror geometry.** `MIRROR CENTER` at `x .375` lands on the left mirror edge, not its center, and the `MIRROR` frame extends well beyond the visible mirror. Correct/remove those primitives and revise the chapter sentence that calls this a “central axis.”

4. **06-selfie-41 — wrong subject anchor.** `REFLECTED PHONE` at `(0.663, 0)` marks the clipped upper shelving, not a reflected phone. Move it to the actual reflected device or remove it.

5. **07-selfie-pdf-9 — false face and route claims.** The `FACE` anchor at `(0.320, 0.369)` lands on the raised hand/forearm; the face is at roughly `(0.62, 0.28)`. `PHONE-HAND ARC` also begins in blank upper-left space rather than on the phone/hand. Reposition or remove both claims.

6. **08-selfie-pdf-13 — detector artifact presented as a feature.** The `vanishing_point` at `(0.537, 0.670)` is below the actual hands and does not mark visible converging diagonals. Remove it (or replace it with a visually aligned interpretive primitive) and remove the chapter’s “measured convergence” claim.

7. **09-selfie-pdf-14 — unsupported `REFLECTION DEPTH` vanishing point.** The marker at `(0.468, 0.466)` lies in the phone/reflection, but no visible diagonals converge there. Remove the `vanishing_point`; the remaining mirror, center axis, and phone-screen claims are adequate.

8. **11-neon-works-img-0817 — misdrawn sign and architectural-break claims.** `WALL-OPENING BREAK` at `.555` crosses the lower neon lettering; the dark opening begins far lower. The `NEON PANEL` frame starts on blank wall and ends through the lettering rather than tracing the physical panel. Correct or remove both, and revise the chapter’s corresponding “panel above a darker architectural opening” claim.

9. **12-neon-works-img-0818 — misdrawn text-field and wall-break claims.** `UPPER WALL BREAK` at `.253` crosses the top lyric rather than a wall boundary. The `NEON TEXT FIELD` frame excludes portions of the first/last words and the lower lyric lines. Redraw them to the visible panel/text field or remove them; revise the chapter’s matching “upper wall break” statement.

10. **Source-record integrity — image-specific rationales describe different photographs.** In `sources.md`, entries **01**, **02**, **04**, and **05** respectively describe neon text, a lyric-like neon block, a dark small illuminated zone, and a soft facial/body-fragment crop; their supplied proofs show a phone-in-hand, a close group with a phone, a pale face/phone reflection, and a mirror/phone/hands composition. Rewrite each entry’s “Why it matters” and its image-specific pedagogical/fair-use necessity so it truthfully describes its named complete frame. The URLs, credits, and direct-public-file routes are otherwise traceable (all twelve direct image responses returned HTTP 200 during this review).

### Advisory (non-blocking)

- **01-selfie-pdf-2:** the `PHONE SCREEN` anchor is placed on the face shown within the screen. It still identifies the screen and is within a defensible target area; rename it to `FACE ON SCREEN` only if that makes the intended lesson clearer.
- **04-selfie-9:** the `CROPPED SLEEVE` anchor touches the frame edge, but it still lands on the stated sleeve.

All twelve specs score 100/100 against their analyzer JSON. These required findings arise from the mandated visual/semantic pass: coordinate agreement does not validate a detector artifact or an incorrect label.
