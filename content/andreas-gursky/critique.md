verdict: revise

## Critique round — 2026-07-24

### Required fixes

1. **06-em-arena-amsterdam-ii** — The proof contains the football pitch, its markings, and players; it does not contain a “lower stadium tier” at y=0.889 or a “crowd interruption” at x=0.255, y=0.852. Those labels are repeated in the plate caption and paragraph, so they materially misidentify visible features. Replace the two claims with the field markings/features they actually trace (or remove them), then update the affected prose. The cited collection record identifies the work as *EM, Arena, Amsterdam II*; its visible lower structure is the pitch, not a stadium tier.

2. **08-pyongyang-iv** — The two teal leading lines labelled “rising crowd diagonal” and “crossing card field” do not trace displayed diagonals: each cuts across the rectilinear rows of performers/card holders to meet at the globe. The proof’s real structural features are the horizontal card-display division, mountain/globe hinge, and repeated rows. Remove or redraw these primitives to trace a visible feature, and revise the chapter’s corresponding “crossing color-field sweeps” claim.

3. **12-sao-paulo-se** — Item 12 in `sources.md` calls the pictured transit interior “the cathedral’s central mass” and its commuters a “congregation.” The proof and the chapter’s own station/commuter description contradict that identification. Correct the source record’s description to the actual metro-station architecture and commuters; leave the traceable Broad link, rights notice, and fair-use rationale intact.

### Advisory (non-blocking)

None.

## Builder resolution — 2026-07-24

1. **sources.md, records 1–12** — Added the missing factor-two assessment to
   every fair-use record: each identifies the work as a published, highly
   creative photograph and records that this factor weighs against fair use.
   Each record retains its separate purpose, amount, and market-effect analysis.
2. **11-madonna-i** — Re-ran composition analysis and rejected its false
   detector-proposed convergence. The new conservative overlay retains the
   thirds grid and anchors only the visible lit stage at `(0.077, 0.751)`.
   Its regenerated proof scores 100/100 and passes visual review. The plate
   caption and paragraph now describe the lit stage and packed audience without
   claiming sweeps, a crowd band, or convergence.

Full critique history re-verified: 2026-07-24 round 1 (06-em-arena-amsterdam-ii,
08-pyongyang-iv, and 12-sao-paulo-se) remains correct in the current overlays,
source record, proofs, and chapter; 2026-07-24 round 2 is resolved above.
`scripts/check.sh` and `python3 scripts/validate_pipeline.py` passed, and the
content and rendered chapter copies are byte-identical.

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

## Critique round — 2026-07-24

### Required fixes

1. **04-greeley** — The vertical `symmetry_axis` at x=0.388, labelled
   “repeated pen field,” asserts a mirror relationship that is not present in
   the feedlot. The proof instead shows perspective-organized fences, roads,
   and uneven herd distribution. Replace this primitive with a conservative
   claim that traces an actual structural feature (for example, a visible
   fence or road leading line), then regenerate and visually verify the proof.
   The deterministic score is not sufficient here: it measures agreement with
   the same detector proposal, not whether the frame is symmetrical.

2. **09-amazon** — The `symmetry_axis` at x=0.625, labelled “warehouse
   balance,” falsely represents the irregular inventory field as mirrored.
   The upper racks repeat, but the two sides do not mirror across that axis.
   Remove the symmetry primitive or replace it with a primitive that traces a
   visible rack edge or other genuine structure, then update the proof.

3. **10-nha-trang** — The labelled “workroom convergence” and the two long
   diagonals do not trace continuous visible bamboo-rack or weaver-row lines:
   the proof overlays an unsupported X across the factory’s stacked horizontal
   work bands. Remove the unsupported vanishing-point and diagonal claims and
   rebuild the overlay around actual visible rows/bands (or use the
   conservative fallback), then revise the caption/paragraph only as needed
   to match the resulting truthful claims.

### Advisory (non-blocking)

- **05-f1-boxenstopp-i** — The vertical line is more naturally read as a
  central seam than as literal bilateral symmetry, but its “panoramic center”
  label keeps the compositional reading clear; this does not block approval.

The prior resolutions for **06-em-arena-amsterdam-ii**,
**08-pyongyang-iv**, **11-madonna-i**, and **12-sao-paulo-se** were
independently rechecked against the current proofs and remain resolved. All
twelve source links returned their corresponding public collection records;
the fair-use entries retain per-image four-factor rationales.
