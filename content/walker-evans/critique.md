verdict: revise

## Builder resolution (2026-07-10)
Both required fixes applied. #1 "papered planks" on the bare-board plate-04 wall: chapter.mdx now reads "the bare planks read as pure structure" and the sources.md 04 blurb now reads "bare board planks and tacked mantel objects" (only the calendar/pictures are paper). #2: the sources.md 01 blurb now reads "the horizontal clapboard behind her" (was "vertical"), matching the drawn near-horizontal CLAPBOARD line. Advisories also addressed: overlays/03 notes updated to "five faces meet the camera, four sharing a shallow eye-line register" (consistent with the caption); the unsupported "8×10 nitrate negatives" provenance phrase deleted from sources.md; chapter plate-10 now says "the upper wire the overlay traces" (two wires cross the sky). Carried-over acceptable advisories left as-is. The generic "a papered surface" in the Exercise text is unrelated to plate 04 and left intact.

Re-reviewed 2026-07-11 (third pass) with fresh eyes against all 11 proofs, overlay specs, analysis JSONs, chapter.mdx, sources.md, research.md; every finding below survived an independent 3-verifier adversarial pass. Both round-2 required fixes verified landed clean: 04's wall is genuinely bare board (wood grain, knots, pale handprint) with only the calendar and tacked pictures as paper, matching the corrected chapter.mdx and sources.md wording; 01's sources.md now correctly calls the weatherboards horizontal, consistent with the plate's three broad boards and the overlay's near-horizontal CLAPBOARD line. The 03 gaze-register notes, the 05 sign boxes, the 09 middle column and curb lines, the 10 wire trace, the 11 ridge line and its third primitive, and the sources.md nitrate deletion were all spot-checked and hold. Settings honesty remains clean throughout. What blocks approval is a new discrepancy: plate 03's drawn central axis and the axis number chapter.mdx quotes for that same plate disagree with each other.

## Required fixes

1. **03-bud-fields-family — drawn axis position contradicts the number chapter.mdx cites.** overlays/03-bud-fields-family.json places the CENTRAL AXIS `symmetry_axis` at pos=0.54, but analysis/03-bud-fields-family.analysis.json records `symmetry.vertical_axis_x` at 0.575, and chapter.mdx's plate-03 paragraph states "the group holds a vertical symmetry of 0.81 about an axis at 0.57" — the 0.81 matches the analysis's vertical symmetry score (0.8109) but the 0.57 matches the analysis axis (0.575), not the overlay's drawn position (0.54). On the 1600px-wide proof this is a real, visible gap: 0.54 renders at x=864px and 0.575 at x=920px, a 56px/3.5%-of-width difference. The drawn axis (0.54) runs through Bud's nose and the child's torso center, while the number the chapter quotes (0.57) would fall further right, through Bud's cheek — a reader comparing the plate to the prose sees the axis in a visibly different place than the number describes. Fix by making the overlay and the chapter number agree (either move the overlay's `symmetry_axis.pos` and `subject_anchor.x` to 0.575 to match the analysis and chapter, or correct the chapter's quoted axis value to 0.54 if the overlay's drawn position is judged the more faithful read of the plate).

Settings honesty: clean — chapter.mdx's Callout, research.md's Camera settings section, and sources.md all state plainly that no per-frame aperture/shutter/ISO data survives for this 1930s FSA work and invent none; the previously-flagged unsupported "nitrate negatives" phrase has been removed from sources.md and does not reappear anywhere in the chapter, sources, or research files.

## Builder resolution (2026-07-11)
Fix #1 applied by correcting the chapter, not the overlay. Checked the rendered proof: the overlay's drawn axis at 0.54 runs directly through the standing child's face and down through the seated toddler's torso, the two figures the "CHILD AT THE AXIS" label and the plate's own caption ("the group balanced on a central vertical through Bud") describe as the compositional spine. The analysis's raw pixel-correlation axis at 0.575 lands on Bud's cheek, off the actual subjects the frame is built around — the less faithful read of the two. Judged the overlay's drawn position (0.54) the correct one and left overlays/03-bud-fields-family.json and its subject_anchor untouched; changed chapter.mdx's plate-03 sentence from "an axis at 0.57" to "an axis at 0.54" so the quoted number matches what the plate shows. No re-render needed since the overlay itself did not change.

## Round 4 review (2026-07-11)

Fresh-eyes re-review, this time run as eleven independent per-plate passes (one
reviewer per plate, each judging overlay truthfulness, pedagogy, chapter
accuracy, and settings honesty against that plate's rendered proof PNG,
overlay JSON, analysis JSON, and the full chapter.mdx/sources.md/research.md),
followed by adversarial verification: every raw finding was put in front of up
to three independent verifiers instructed to try to refute it, with a majority
required to survive. 19 raw findings surfaced; 14 survived verification.
01-allie-mae-burroughs came back clean outright; findings raised against
02-floyd-burroughs and 06-penny-picture-display-savannah did not survive
adversarial verification and are not carried below. I independently
re-confirmed the highest-severity findings myself by re-inspecting the proof
PNGs for 03, 07, 08, and 10 directly — all held.

This pass went deeper than round 3 and turned up new, distinct problems on
eight of the eleven plates, five of them blocking. Two of the blocking items
are on 03-bud-fields-family, the plate round 3 just touched — the axis fix
that plate received was correct as far as it went, but it didn't catch a
second, related problem on the same plate (see fix 1 below), and a fully
separate primitive on that plate has its own truthfulness problem (fix 2).

## Required fixes

1. **03-bud-fields-family — the chapter's "0.81 about an axis at 0.54" pairs
   two numbers that were never measured together.** analysis/03-bud-fields-family.analysis.json
   records `symmetry.vertical` = 0.8109 and `symmetry.vertical_axis_x` = 0.575,
   and its own `suggested_primitives` entry explicitly pairs `pos: 0.575` with
   `confidence: 0.81` — the 0.81 score is the symmetry the analyzer measured
   *at* axis 0.575, not at 0.54. Round 3 correctly changed the chapter's axis
   number from 0.57 to 0.54 so it would match the overlay's deliberately
   hand-set axis (through the child, judged the more faithful compositional
   read — that call stands). But it left the adjacent "0.81" untouched, so the
   sentence now asserts a symmetry score at an axis it was never computed at.
   Compare the pattern on the two preceding plates, where overlay axis and
   analysis axis agree almost exactly (01: overlay 0.487 vs analysis 0.4875;
   02: overlay 0.412 vs analysis 0.4125) — 03 is the one plate in the chapter
   where they diverge (0.54 vs 0.575), which is exactly why splicing the
   analysis's score onto the overlay's axis reads as one measurement when it
   is two. Fix by decoupling them in the prose — e.g. state the symmetry score
   without implying it was measured at the drawn axis, or note plainly that
   the axis was moved to 0.54 for the child while the raw correlation peak
   (0.81) sits at 0.575.

2. **03-bud-fields-family — the REGISTER OF FRONTAL GAZES polyline misses eye
   level at two of its four vertices.** Points (in overlays/03-bud-fields-family.json)
   are `[[0.24,0.345],[0.42,0.285],[0.55,0.315],[0.71,0.375]]`. On the proof,
   the rightmost vertex (0.71, 0.375) lands on the seated woman's mouth/upper
   lip — her eyes sit visibly above it — and the leftmost vertex (0.24, 0.345)
   lands on the mother's hairline/forehead, above her eyes. Only the middle
   two vertices (the standing girl, Bud) land at eye level. A line labeled as
   a gaze register should trace eyes, not mouths and hairlines. Fix by moving
   these two endpoints down/up respectively to the two women's actual eye
   level.

3. **07-bethlehem-graveyard-steel-mill — the CEMETERY IRON RAILS leading line
   doesn't trace any rail, and the caption's claim follows it into the same
   error.** The primitive's points (`[0.52,0.575]` → `[0.99,0.991]`, arrow)
   match analysis.json's auto-detected generic perspective diagonal almost
   exactly (`x1=0.5166,y1=0.5749,x2=0.9902,y2=0.9914`, flagged by the analyzer
   only as "strong diagonal converging on VP") — it was carried into the
   overlay with a cemetery-themed label rather than drawn from the actual
   rails. On the proof it runs from a grave-monument shoulder, over shrubbery
   and the row-houses' porch roofline, down through open grass to the
   bottom-right corner, and never follows a rail. The photograph does contain
   real horizontal iron/pipe cemetery-plot fencing (visible roughly y 0.62–0.65
   and again y 0.83–0.87), which no primitive marks. chapter.mdx's caption
   then compounds this by asserting "the cemetery iron rails as a diagonal
   depth vector running to the lower right" — the actual rails in the photo
   are horizontal, not diagonal. Fix by either replacing this primitive with
   one that actually traces the visible horizontal rail fencing (and updating
   the caption to match), or, if the diagonal recession line is worth keeping
   for its own sake, relabeling it for what it actually is — a background
   architectural/perspective line — and rewriting the caption clause
   accordingly.

4. **08-negro-church-south-carolina — the left GABLE PITCH line overshoots the
   roof into the trees behind it.** `points: [[0.05,0.576],[0.5,0.296]]` (in
   overlays/08-negro-church-south-carolina.json) copies analysis.json's raw
   detected diagonal (`x1=0.0502,y1=0.5762,x2=0.5569,y2=0.2607`) verbatim
   rather than trimming it to where the physical roof edge actually ends. On
   the proof, the line and its label depart the eave corner partway along and
   continue in a dead-straight diagonal through bare tree branches for roughly
   the last 40% of its length — the "GABLE PITCH" label itself sits on
   branches, not roof. The right-hand GABLE PITCH line, by contrast, correctly
   stops right at its own roof corner. Because of this the two "twin" lines
   render at very different lengths (0.530 vs 0.330 normalized) for an
   architecturally symmetric roof, undercutting the plate's own caption ("the
   twin roof pitches converge on that axis"). Fix by trimming the left line's
   lower-left endpoint to the actual roof/eave corner, matching the right
   line's already-correct behavior.

5. **10-frame-houses-fredericksburg — the SERIAL ROOFLINE polyline's first
   segment traces a fifth, non-matching building, not one of the "four
   repeating fronts" the label and the chapter both name.** Points (in
   overlays/10-frame-houses-fredericksburg.json):
   `[[0.20,0.555],[0.36,0.555],[0.39,0.60],[0.50,0.60],[0.53,0.61],[0.64,0.61],[0.68,0.60],[0.87,0.60]]`.
   The first segment (x 0.20–0.36, y=0.555) runs across the roofline of the
   tall, narrow, porch-less two-story house immediately left of the four
   matching porch-houses — its ridge sits roughly 4–5% of frame height higher
   and it has no porch, unlike the four visually consistent porch-fronted
   houses at x≈0.39–0.87 (segments 2–7) that the "four near-identical" claim
   (used in both the plate caption and Exercise 03's "row of four") actually
   describes. Fix by dropping the first segment so the polyline starts at
   x≈0.39, at the first of the four matching houses.

## Advisories

- **04-fireplace-wall-burroughs** — the CALENDAR `frame_in_frame` box
  (x=0.385, y=0.075, w=0.145, h=0.17) cuts off the bottom ~15% of the actual
  calendar; the "Peters Shoes" advertiser text and rooster icon sit below/
  outside the drawn box.
- **04-fireplace-wall-burroughs** — "the numbers are the strongest in the
  portrait group" loosely bundles the axis position in with the symmetry
  score, but only the symmetry score (0.90) is actually the highest among the
  portrait/frieze plates; the axis (0.425) is farther from center than both
  01's (0.4875) and 03's (0.54).
- **05-roadside-stand-birmingham** — the three `frame_in_frame` boxes mark the
  smaller Pointer sign and two price placards but route around the plate's
  largest, most emblematic lettering — the big hand-painted "FISH" and "LAKE
  FISH" wordmarks the caption is actually describing.
- **07-bethlehem-graveyard-steel-mill** — the caption and sources.md both
  describe three stacked registers (grave cross, row of company houses, mill),
  but only two get an explicit primitive; the middle register, the row of
  houses itself, has no marker of its own and has to be inferred from the gap
  between the other two.
- **08-negro-church-south-carolina** — "the rectangular louvered windows
  mirror left and right" is true of the photo but has no overlay primitive
  behind it, unlike the cupola and roofline claims, which do.
- **09-frame-houses-new-orleans** — the horizon is drawn and quoted at y=0.79,
  which the proof confirms pixel-for-pixel, but analysis.json's own detected
  horizon is y=0.758 (confidence 1.0). The 0.79 read is the more defensible
  one visually — it sits cleanly on the sidewalk/grass edge, while 0.758 falls
  in a messier driveway-apron area — but nothing notes that the analyzer's raw
  value was deliberately overridden.
- **10-frame-houses-fredericksburg** — the LONE VERTICAL telephone-pole line
  is drawn as a dead-straight vertical (x=0.51 throughout), but the actual
  pole leans about 1–2% of frame width off that line. Minor, visible only on
  close inspection.
- **11-company-houses-birmingham** — the ROOF RIDGES RECEDE line's interior
  points partly ride chimney brick rather than the roof ridge itself (one
  point sits on a chimney cap above where that roof's ridge actually is),
  producing a visible non-monotonic zigzag rather than a smooth taper. A prior
  critique round noted this line as "riding the apex sequence" without
  catching this.

Settings honesty: clean — no settings-honesty finding survived verification
this round. chapter.mdx's Callout, research.md, and sources.md continue to
state plainly that no per-frame aperture/shutter/ISO data survives for any of
the eleven plates and invent none.
