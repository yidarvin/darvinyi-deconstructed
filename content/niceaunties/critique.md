verdict: revise

## Critique round — 2026-08-04

Reviewed all 12 rendered proofs against their overlay specs and ingested images;
re-ran the deterministic overlay scorer (97–100, with no geometric deductions),
and checked the chapter's measured values against the analysis JSON. All twelve
artist and display-file links returned HTTP 200. The source notes identify the
copyright holder, route every image through fair use, and provide the applicable
four-factor rationale; no settings claim is invented.

### Required

1. **07-spamenu-0195 — `cat` is traced in the wrong place.** The `cat` ellipse
   (`cx: 0.16, cy: 0.70`) surrounds the small dishes/sushi at lower left, while
   the visible cat is above and to the right (roughly x0.35, y0.58). Move or
   replace the primitive so the label traces the cat itself. This is a semantic
   mismatch despite the scorer accepting its unconstrained ellipse geometry.

2. **08-spamenu-0197 — `wall-to-table break` is not present.** The horizontal
   line at y0.536 crosses the face and hair; the proof contains no tabletop or
   wall-to-table boundary at that height. Remove or relabel that primitive to a
   real visible feature, and revise the matching chapter sentence that claims
   this break "keeps that mask suspended."

3. **12-fashion-0568 — front/rear model labels are reversed.** The ellipse
   labelled `front model` encloses the smaller woman behind at upper left, while
   `rear model` encloses the large foreground woman's torso. Correct the labels
   (and any related prose if needed) so the depth claim agrees with the proof.

### Advisory (non-blocking)

- The scorer flags the three ellipses in 07-spamenu-0195 and 09-spamenu-0171
  as potentially redundant. They identify distinct, legible teaching subjects,
  so this is not a required reduction.

## Resolution — 2026-08-04

Re-verified the complete critique history: the single prior round, **Critique
round — 2026-08-04**. All of its required fixes hold in the current rendered
proofs and chapter:

1. 07-spamenu-0195 now encloses the visible cat at x0.35, y0.57 rather than the
   lower-left dishes; its refreshed score is 97 (the only warning is the
   existing, non-blocking three-ellipse advisory).
2. 08-spamenu-0197 removes the nonexistent `wall-to-table break` and replaces
   the chapter claim with the visible surrounding white field; its refreshed
   score is 100.
3. 12-fashion-0568 now labels the smaller, receding woman `rear model` and the
   large foreground woman `front model`; its refreshed score is 100.

All three refreshed composite proofs received a clean visual pass. The chapter
and rendered-site copy are byte-identical.

## Critique round — 2026-08-04

Re-reviewed all 12 current proofs against their overlay specs, analyzer output,
chapter, manifest, and source notes. All overlay scores pass (97–100); the
three fixes resolved in the preceding round for 07-spamenu-0195,
08-spamenu-0197, and 12-fashion-0568 remain resolved. Credits, per-image
fair-use rationales, and the explicit absence of camera settings remain
documented. One new semantic mismatch remains.

### Required

1. **06-auntiecity-0033 — `street tier` names the wrong feature.** The
   horizontal overlay at y0.490 runs across the apartment structure well above
   the actual lower-frame street and pedestrians; it is not a street tier or a
   pedestrian baseline. Relabel the primitive for the visible architectural
   tier (and revise the chapter sentence that says the y0.490 line gives
   pedestrians a baseline), or move the claim to the actual feature it names.
   The current label and prose materially misdescribe the image's structure.

### Advisory (non-blocking)

None.
