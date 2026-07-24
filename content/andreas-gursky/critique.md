verdict: revise

## Critique round — 2026-07-24

### Required fixes

1. **06-em-arena-amsterdam-ii** — The proof contains the football pitch, its markings, and players; it does not contain a “lower stadium tier” at y=0.889 or a “crowd interruption” at x=0.255, y=0.852. Those labels are repeated in the plate caption and paragraph, so they materially misidentify visible features. Replace the two claims with the field markings/features they actually trace (or remove them), then update the affected prose. The cited collection record identifies the work as *EM, Arena, Amsterdam II*; its visible lower structure is the pitch, not a stadium tier.

2. **08-pyongyang-iv** — The two teal leading lines labelled “rising crowd diagonal” and “crossing card field” do not trace displayed diagonals: each cuts across the rectilinear rows of performers/card holders to meet at the globe. The proof’s real structural features are the horizontal card-display division, mountain/globe hinge, and repeated rows. Remove or redraw these primitives to trace a visible feature, and revise the chapter’s corresponding “crossing color-field sweeps” claim.

3. **12-sao-paulo-se** — Item 12 in `sources.md` calls the pictured transit interior “the cathedral’s central mass” and its commuters a “congregation.” The proof and the chapter’s own station/commuter description contradict that identification. Correct the source record’s description to the actual metro-station architecture and commuters; leave the traceable Broad link, rights notice, and fair-use rationale intact.

### Advisory (non-blocking)

None.

## Builder resolution — 2026-07-24

1. **06-em-arena-amsterdam-ii** — Rebuilt the proof after replacing the false
   stadium-tier and crowd claims with a visible halfway-line polyline, pitch axis,
   and centre-circle ellipse. The caption and prose now identify the pitch
   markings and player spacing; the revised overlay scores 100/100.
2. **08-pyongyang-iv** — Removed both false diagonal/vanishing-point claims.
   The revised proof marks the stage-to-performer threshold, the central ceremonial
   axis, and the globe/platform anchor; it scores 100/100. The caption and prose
   now describe the mountain/globe hinge and repeated performer rows without
   inventing perspective sweeps.
3. **12-sao-paulo-se** — Corrected the source record to identify concentric metro
   concourses, the skylit atrium, platforms, and commuters; retained the Broad
   link, rights notice, and fair-use rationale. Updated the one residual chapter
   reference from congregation to crowd.

Full critique history re-verified: 2026-07-24, round 1 (the only prior round).
`scripts/check.sh` passed after the fixes, and the content and rendered chapter
copies are byte-identical.

## Critique round — 2026-07-24

### Required fixes

1. **sources.md, records 1–12** — Every copyrighted-image fair-use rationale
   addresses purpose, the complete web-sized frame, and market substitution, but
   omits factor two: the nature of the copyrighted work. The build contract
   requires an assessment of all four statutory factors for each fair-use image.
   Add a concise, appropriately qualified factor-two assessment to each record
   (these are published creative photographs), while retaining the existing
   purpose, amount, and market analysis. This is a documentation requirement;
   it does not presume the conclusion of the fair-use analysis.

2. **11-madonna-i** — The two primitives labelled “stage-to-crowd sweep” and
   “crowd-side sweep” do not converge at the labelled vanishing point
   `(0.537, 0.346)`: their displayed segments intersect only near `(0.873,
   0.909)`, and neither traces a continuous visible edge to the claimed point.
   The horizontal “crowd band” at `y0.729` likewise crosses unrelated stage and
   crowd texture rather than a visible horizontal boundary. Remove or redraw
   these false claims using visible stage/crowd geometry, then revise the plate
   caption and paragraph’s corresponding “two sweeps” and “converging” claims.
   The 100/100 geometric score is not dispositive here because the analysis
   proposed the same false features; the current proof fails the required visual
   truthfulness pass.

### Advisory (non-blocking)

None.
