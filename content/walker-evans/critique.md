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

## Builder resolution (2026-07-11)

All five round-4 required fixes applied and re-rendered/re-scored through the
composition-analysis loop (all four affected plates pass ≥80 with a clean
visual pass on the first re-render).

1. **03-bud-fields-family axis/symmetry pairing.** chapter.mdx's plate-03
   sentence no longer implies the 0.81 symmetry score was measured at the
   0.54 axis. It now reads: "the group holds together on a hand-set axis at
   0.54, run through Bud and the seated child rather than the frame's raw
   correlation peak; the analyzer's own strongest mirror match, a vertical
   symmetry of 0.81, actually peaks a little further right, at 0.575." The
   overlay's hand-set axis (0.54) is untouched, per the round-3 judgment that
   it is the more faithful read.
2. **03-bud-fields-family gaze register.** Measured actual eye level for both
   flagged sitters directly off the ingested image (pixel-grid crops, not
   guessed): the left woman's eyes sit at y≈0.36 (endpoint was 0.345, on her
   brow), the right woman's eyes sit at y≈0.335 (endpoint was 0.375, on her
   mouth/upper lip). Updated both endpoints; the two middle vertices (the
   standing girl, Bud) were checked the same way and confirmed already
   correct, left as-is. Re-rendered proof shows the line running through all
   four sitters' eyes.
3. **07-bethlehem cemetery iron rails.** The generic detected diagonal never
   traced a rail. Located the actual horizontal iron pipe fence running the
   width of the cemetery plots (posts at roughly x=0.03 and x=0.90, pipe at
   y≈0.885–0.89) and replaced the primitive with a line tracing it
   (arrow removed — it's a foreground boundary rail, not a depth vector).
   chapter.mdx's clause "the cemetery iron rails as a diagonal depth vector
   running to the lower right" is rewritten to "a low iron pipe rail fencing
   the grave plots as a near-level line at the base of the frame." Re-rendered
   proof shows the line running along the actual pipe through both fence
   posts and the hanging chain.
4. **08-negro-church left gable pitch.** Trimmed the overshooting endpoint
   from (0.05, 0.576) to the actual eave/roof corner at (0.19, 0.483),
   measured directly off the image with a pixel grid. Re-rendered proof shows
   the line stopping cleanly at the roofline, matching the right line's
   already-correct behavior; the two lines now read as a visually symmetric
   pair.
5. **10-frame-houses-fredericksburg serial roofline.** Dropped the first
   segment (the two points tracing the tall, porch-less fifth house); the
   polyline now starts at (0.39, 0.60), the first of the four matching
   porch-fronted houses the label and caption describe. Re-rendered proof
   confirms the line now runs only across the four matching fronts.

Full `bash scripts/check.sh` (validate, prose lint, tests, build, lint) passes
clean after these edits.

## Round 5 review (2026-07-11)

Fresh-eyes re-review: all eleven proof PNGs viewed directly and cross-checked
against their overlay JSON, analysis JSON, chapter.mdx, sources.md, and
research.md. In parallel, ran an independent per-plate visual-truthfulness and
caption-accuracy pass (one blind reviewer per plate, vision on the actual
proof pixels) followed by adversarial verification (a second, skeptical pass
instructed to try to refute every raised issue) before treating anything as
real. One purported issue did not survive verification — a claimed "0.94 vs
0.90" mismatch on plate 11 — because the actual chapter.mdx text reads 0.90,
matching analysis.json's 0.8993; there is no error there, and it is not
carried below.

This round surfaced a site-wiring defect that outranks everything else below
it, plus new problems on plates 03, 07, and 09, plus an escalation of a stale
advisory on 04.

## Required fixes

1. **Site-wide — src/chapters/walker-evans.mdx (the file the site actually
   renders) is three resolve-cycles out of date and has never picked up the
   last two rounds of fixes.** `git log` shows src/chapters/walker-evans.mdx
   was last written at commit f718050 ("resolve critique: walker-evans"),
   while content/walker-evans/chapter.mdx has since moved through three more
   commits (8524282, d8690ae, 481facd) applying the round-3 and round-4 fixes
   above. `diff src/chapters/walker-evans.mdx content/walker-evans/chapter.mdx`
   shows four paragraphs still differ, and this is not just stale wording —
   on two plates the live copy now actively contradicts its own overlay:
   - **Plate 03**: the live site says "an axis at 0.57," but the overlay's
     drawn CENTRAL AXIS is at 0.54 (the round-3/4 fix moved the chapter's
     number to match the overlay; the overlay itself never changed). A reader
     comparing the live page to the plate sees the axis in a visibly
     different place than the number claims.
   - **Plate 07**: the live site says "the cemetery iron rails as a diagonal
     depth vector running to the lower right" — this is the exact wrong
     description round-4 fix 3 identified and replaced (the primitive was
     moved to trace the real, near-horizontal iron rail; the caption was
     rewritten to "a low iron pipe rail fencing the grave plots as a
     near-level line at the base of the frame"). The live site still asserts
     a diagonal that is not there.
   - **Plate 04**: the live site still says "papered planks" (fixed to "bare
     planks" back in round 2, since only the calendar and tacked pictures are
     paper).
   - **Plate 10**: the live site still says "the single wire" (fixed in round
     2 to "the upper wire the overlay traces," acknowledging two wires are
     visible in the sky and only one is marked).
   Fix by re-syncing content/walker-evans/chapter.mdx to
   src/chapters/walker-evans.mdx (whatever this project's normal
   chapter-wiring step is). Also worth noting as a process gap: build.md's
   step 0 ("resolve critiques... apply each numbered fix... commit and push")
   does not mention re-wiring the chapter into the site the way step 1.e does
   for the initial build, so every resolve cycle since f718050 has updated
   content/ without touching src/. Confirming the re-sync happens as a normal
   part of resolving a critique (or adding it explicitly to that step) would
   stop this from recurring on the next round.

2. **03-bud-fields-family — the caption's face count is wrong.** "Five faces
   meet the camera" undercounts by one. The photograph shows six people with
   visible faces: the left woman, the baby asleep in her lap, the standing
   girl, Bud, the seated toddler ("CHILD AT THE AXIS"), and the right woman.
   The sentence's own arithmetic doesn't reach five either: "four sharing a
   shallow eye-line register" (left woman, girl, Bud, right woman) plus "the
   sleeping baby's face tilts up out of the line" plus "the toddler sits
   below it" is four-plus-one-plus-one, i.e. six. Fix by changing "Five" to
   "Six" in the Plate caption, and in overlays/03-bud-fields-family.json's
   `notes` field, which currently repeats the same "five faces" line.

3. **03-bud-fields-family — the light direction is stated backwards.** "Evans
   lets the deep shadow of the interior anchor the bottom while the faces
   catch the light in a level row." Pixel sampling of the proof shows the
   opposite: the bottom of the frame (the porch floor) is the best-lit region
   in the picture (mean roughly 127-145/255 across crops, with visible wood
   grain), while the genuinely deep, near-black shadow is the open doorway at
   upper-left/center behind the standing girl (mean roughly 55/255, minimum
   value 1). The top third of the frame is darker overall than the bottom
   third. Fix by rewriting the clause so the shadow anchors the top/doorway,
   not the bottom.

4. **07-bethlehem-graveyard-steel-mill — the STEEL-MILL BASE line doesn't
   mark the mill.** The leading_line at points `[0.40,0.35]` to
   `[0.99,0.347]`, and the matching chapter clause ("the steel-mill base as a
   level line across the upper frame"), both claim to mark the mill's base,
   but on the proof this line sits exactly on the brick row house's
   corbelled cornice band (the arched brick banding under its roofline, with
   double-hung windows visible below it). The mill's furnaces and stacks sit
   higher in the frame (roughly y 0.02-0.30), separated from this line by a
   visible gap and the row house's own roof edge; the mill's actual base is
   occluded and not in frame at all. Fix by relabeling the primitive to what
   it truthfully marks (e.g. "ROW HOUSE CORNICE") and rewriting the matching
   chapter clause, since as written both the overlay and the prose assert
   something not visible in the photograph.

5. **04-fireplace-wall-burroughs — self-contradicted superlative, unresolved
   since round 4.** "the numbers are the strongest in the portrait group"
   (referring to plate 04's 0.90 vertical symmetry) is directly contradicted
   twenty lines later by the chapter's own description of plate 08 as "the
   most symmetric frame in the chapter" (0.95). This was raised as an
   advisory in round 4 and left unfixed; escalating it to required because it
   is now a plain, checkable self-contradiction within the same document, not
   just an imprecise phrase. Fix by dropping the superlative or restricting
   the comparison to a claim that is actually true (e.g. cite the 0.90 and
   0.42 numbers without asserting they are the strongest in any group).

6. **09-frame-houses-new-orleans — the symmetry and "near-identical" claims
   overclaim what the photo shows.** The frame is not actually bilaterally
   symmetric: a wrought-iron fence occupies the foreground on the left only,
   while a utility pole, a bare tree, and a sliver of a fourth house sit on
   the right only, with no left-side counterparts. Separately, "near-identical"
   facades overstates it: house 1's roofline (a full triangular pediment plus
   a curved bracketed bow-cornice at its corner) is visibly different in
   style from houses 2 and 3, which both show plain flat parapets with dentil
   molding and neither pediment nor bracket. Fix by softening "near-identical"
   (e.g. "matching in scale and rhythm") and either dropping the CENTRAL AXIS
   symmetry_axis primitive or captioning it honestly as marking the shared
   vertical beat of the porch columns rather than true bilateral mirror
   symmetry of the whole frame.

## Advisories

- **04-fireplace-wall-burroughs** — carried forward from round 4: the
  CALENDAR frame_in_frame box still cuts off the bottom ~15% of the calendar
  sheet (the "Peters Shoes" text and rooster icon sit outside the drawn box).
  Still true, still minor, not blocking.
- All other round-4 fixes (03 gaze-register vertices, 07 cemetery iron rails
  primitive, 08 gable pitch trim, 10 serial-roofline first segment) were
  re-checked directly against the current proofs and hold clean in
  content/walker-evans/chapter.mdx and its overlays — the defects found this
  round are new ones, not regressions of prior fixes (with the caveat that
  none of those fixes are visible on the live site; see required fix 1).

Settings honesty: clean. chapter.mdx's Callout, research.md's Camera settings
section, and sources.md all state plainly that no per-frame aperture/shutter/
ISO survives for this 1930s FSA work and invent none. The ingest manifest's
Phase One/iXH scanner EXIF (modern archival digitization metadata, not
Evans's camera) does not leak into any prose.

## Builder resolution (2026-07-11)

Required fix 1 (site-wide chapter desync) was already resolved in a prior
pass (commits 662dbc8, eaa37a5) before this session started: content/ and
src/chapters/ are byte-identical and scripts/check.sh now gates that
directly, closing the process gap the finding raised. This pass applied the
remaining five required fixes.

1. **03-bud-fields-family face count.** Changed "Five faces meet the camera"
   to "Six" in the Plate caption and the matching "five faces" phrase in
   overlays/03-bud-fields-family.json's `notes` field to "six". No overlay
   geometry changed; no re-render needed.
2. **03-bud-fields-family light direction.** Rewrote the sentence: the open
   doorway at upper left (behind the standing girl), not the porch floor, is
   the frame's deepest shadow, confirmed by inspecting the proof directly.
   chapter.mdx now reads "the deepest shadow in the frame is the open doorway
   at upper left behind the standing girl, not the floor; Evans lets that
   void anchor the top of the composition while the sunlit porch boards
   ground the bottom." Text-only fix.
3. **07-bethlehem-graveyard-steel-mill mislabeled line.** Relabeled the
   leading_line primitive from "STEEL-MILL BASE" to "ROW HOUSE CORNICE" in
   overlays/07-bethlehem-graveyard-steel-mill.json (points unchanged — they
   already traced the row house's brick cornice band, only the label lied
   about what it traced). Re-rendered and re-scored: 99/100, clean visual
   pass, label sits exactly on the arched brick banding. chapter.mdx's clause
   now reads "the row houses' cornice line as the middle register beneath
   the mill," which as a side effect also gives the row-of-houses register
   (previously unmarked, noted only as an advisory) its own primitive.
4. **04-fireplace-wall-burroughs self-contradiction.** Dropped the
   superlative; "and the numbers are the strongest in the portrait group"
   removed so the sentence states the 0.90/0.42 measurements without ranking
   them against plate 08's 0.95.
5. **09-frame-houses-new-orleans overclaim.** Softened "Near-identical" to
   "matching in scale and rhythm" in the Plate caption (house 1's pediment
   and bow-cornice do read differently from houses 2 and 3's flat parapets).
   Kept the CENTRAL AXIS symmetry_axis primitive and the 0.92 measurement
   (both are real, unchanged) but recaptioned it honestly in prose: the
   sentence now states plainly that the axis measures the porch columns'
   structural rhythm, not a literal whole-frame mirror, and names the
   asymmetric foreground/background elements (fence left-only; pole, tree,
   and a fourth house's sliver right-only) that make a literal-mirror
   reading false.

`content/walker-evans/chapter.mdx` and `src/chapters/walker-evans.mdx` were
re-synced (byte-identical) after every text edit above. Full
`bash scripts/check.sh` (validate, chapter-sync, prose lint, tests, build,
lint) passes clean.

## Round 6 review (2026-07-11)

Fresh-eyes re-review: all eleven proof PNGs viewed directly (not just the
overlay JSON) and cross-checked against overlays/*.json, analysis/*.json,
chapter.mdx, sources.md, and research.md. Ran an independent per-plate
truthfulness/pedagogy/prose-match pass first (one blind reviewer per plate,
vision on the actual proof pixels), then personally re-inspected the six
highest-signal plates (01, 04, 05, 07, 09, 10, 11) myself against the raw
proof PNGs before writing anything below — every required fix here is
something I looked at with my own eyes, not just a relayed claim.

Two purported issues from the per-plate pass did not survive my own
verification and are not carried below: the 02 "doorframe post" leading_line
being near-vertical (the caption already explicitly reframes it as standing
the figure up, and the void it's paired with doesn't need its own primitive
to be true) and the 11 "vertical symmetry of 0.90" line (round 5 already
confirmed this number matches analysis.json exactly (0.8993) and is not an
error; lacking a drawn primitive for it doesn't make the sentence false).

This round surfaced three new, previously-uncaught truthfulness/chapter-
accuracy problems, none of them overlapping with rounds 1-5 above.

## Required fixes

1. **04-fireplace-wall-burroughs — the horizon_line is mislabeled "TABLE
   EDGE," and there is no table anywhere in this photograph.** The plate is
   titled "Fireplace and wall detail, Burroughs cabin" and shows exactly
   that: a fireplace surround with a scalloped mantel runner, two vases and
   a small dish on the mantel shelf, and the brick firebox opening below.
   The dominant horizontal the overlay correctly finds at y=0.768 is the
   front edge of that mantel shelf/runner, not a table edge — there is no
   table in the frame at all. chapter.mdx repeats the same error: "the table
   edge registering as a horizontal line low in the frame near y 0.77."
   sources.md already has this right ("tacked mantel objects"), so this is
   an overlay-label + chapter-prose problem, not a research problem. Fix by
   renaming the primitive's `label` in overlays/04-fireplace-wall-burroughs.json
   from "TABLE EDGE" to something like "MANTEL EDGE," and changing
   chapter.mdx's "the table edge" to "the mantel edge" (or "the mantel
   shelf's edge").

2. **05-roadside-stand-birmingham — the caption calls the whole stacked
   sign facade "fish-market signs," but the topmost box is a house-mover's
   advertisement, unrelated to the fish market.** The `frame_in_frame` box
   labeled POINTER SIGN (x 0.355-0.67, y 0.178-0.336) plainly encloses
   hand-lettered text reading "F.M. POINTER / The Old Reliable / HOUSE
   MOVER" — nothing about fish. Only the two lower SPECIAL SIGN boxes
   (river-fish price boards listing catfish, trout, perch, drum, buffalo,
   eel) are actually fish-market signage; the large "FISH... Honest
   Weights, Square Dealing" wordmark and "LAKE FISH" lettering painted
   directly on the storefront (unmarked by any primitive, an advisory
   carried since round 4) are the market's own signs. The caption's "A
   dead-frontal facade where hand-lettered fish-market signs stack into
   typographic rectangles" misdescribes the Pointer box specifically. Fix
   by rewording the caption/prose so it doesn't call the house-mover's sign
   a fish-market sign — e.g. describe the facade as stacked, unrelated
   vernacular signage (a house-mover's ad planted above a fish market's own
   price boards), which is if anything a more interesting, more honest
   observation about how Evans found this kind of layered typography.

3. **01-allie-mae-burroughs — "The clapboard behind her is a grid" is false
   in the same paragraph that correctly says otherwise.** The wall is plain
   horizontal board siding with no vertical members — the same sentence's
   own preceding clause and the caption both accurately call it "ruled
   horizontal banding," and the overlay's own primitive for it is a
   `horizon_line`, not a grid. Calling the identical wall "a grid" three
   sentences later contradicts the plate's own caption and overlay. Reserve
   "grid" for walls that actually read as a rectilinear lattice in both
   directions (04's fireplace wall, 06's penny-picture wall). Fix by
   rewording, e.g. "The clapboard behind her is a ruled ground, her
   features are a symmetry."

## Advisories

- **04-fireplace-wall-burroughs** — the CENTRAL AXIS (pos 0.425) sits a
  little left of the mirror line suggested by the two matching vases on the
  mantel top (centers roughly average to ~0.44); the TACKED PICTURES box
  only encloses the top pair of images, though at least two more tacked/
  framed pictures are visible lower on the same wall panel; the CALENDAR
  box's bottom edge still clips the "Peters Shoes" line (carried forward
  from rounds 4-5, still true, still not blocking).
- **07-bethlehem-graveyard-steel-mill** — the WHITE GRAVE CROSS polyline
  undershoots the actual carved stone: both arm tips extend visibly past
  the teal outline, and the stem continues down past the outline's bottom
  edge to the base/pedestal blocks.
- **01-allie-mae-burroughs** — the FACE ellipse clips off the chin and
  jawline; doesn't mislocate the face, but a slightly larger/lower oval
  would fully enclose it.
- **09-frame-houses-new-orleans** — "a bare tree" (introduced by the round-5
  fix to this same sentence) misdescribes the tree at right, which is
  visibly in leaf in the photograph. Change to "a tree" or "a leafy tree."

Settings honesty: clean, as in every prior round — chapter.mdx's Callout,
research.md's Camera settings section, and sources.md all state plainly that
no per-frame aperture/shutter/ISO data survives for this 1930s FSA work and
invent none; the Phase One/Sinar/Kodak entries in manifest.json are archival
scanner metadata and never leak into any prose as if they were Evans's
camera settings.

## Builder resolution (2026-07-11)

All three round-6 required fixes applied.

1. **04-fireplace-wall-burroughs TABLE EDGE mislabel.** Renamed the
   `horizon_line` primitive's label in
   overlays/04-fireplace-wall-burroughs.json from "TABLE EDGE" to
   "MANTEL EDGE" (no geometry changed — the line already sat correctly on
   y=0.768). Changed chapter.mdx's "the table edge registering as a
   horizontal line low in the frame near y 0.77" to "the mantel edge...".
   Re-rendered the proof through the composition-analysis loop: score 100,
   clean visual pass, the label now sits directly on the white mantel
   shelf's front edge above the firebox opening. No table exists anywhere
   in the frame; sources.md already correctly said "tacked mantel objects."
2. **05-roadside-stand-birmingham fish-market overclaim.** Reworded the
   plate caption from "hand-lettered fish-market signs stack into
   typographic rectangles" to "stacked, unrelated vernacular signage, a
   house-mover's hand-lettered ad planted above the fish market's own price
   boards" — matching what the POINTER SIGN box actually encloses (an
   "F.M. POINTER ... HOUSE MOVER" ad) versus the two SPECIAL SIGN boxes
   (genuine river-fish price boards). No overlay geometry changed; no
   re-render needed. Written without an em dash per house style
   (prose-lint.config.json bans U+2014 in src/chapters/**/*.mdx) — first
   draft used one and prose lint caught it; rewritten as a comma-chained
   appositive instead.
3. **01-allie-mae-burroughs clapboard-is-a-grid contradiction.** Changed
   "The clapboard behind her is a grid" to "The clapboard behind her is a
   ruled ground," consistent with the same paragraph's own "ruled
   horizontal banding" description and the overlay's `horizon_line`
   primitive (plain board siding, no vertical members — not a lattice).
   Text-only; no re-render needed. The chapter's other "grid" references
   (plate 04's tacked-object frieze, plate 06's literal picture-panel wall)
   are unrelated claims about different walls and were left untouched.

Independently verified each fix (three separate read-only passes against
the rendered proof PNGs, overlay JSON, analysis JSON, chapter.mdx, and
src/chapters/walker-evans.mdx) before closing this out — all three came
back clean with no residual issues.

content/walker-evans/chapter.mdx and src/chapters/walker-evans.mdx were
re-synced (byte-identical) after every text edit. Full `bash scripts/check.sh`
(validate, chapter-sync, prose lint, tests, build, lint) passes clean.

## Round 7 review (2026-07-11)

Fresh-eyes re-review, run as twelve independent passes (one reviewer per
plate, plus one dedicated chapter-wide consistency pass cross-checking
superlatives, quoted numbers, and site-sync state across all 11 plates at
once), each with vision on the actual proof PNGs, overlay JSON, analysis
JSON, chapter.mdx, sources.md, and research.md. Every raw finding then went
through adversarial verification: three independent verifiers per finding,
each instructed to try to refute it by independently re-deriving the pixel
geometry or re-reading the source files, with a majority required to
survive. 11 raw findings surfaced; all 11 survived verification unanimously
(0 refuted). I then personally re-inspected the proof PNGs for 04, 06, 07,
09, 10, and 11 myself before writing anything below — every required fix
here is something I looked at directly, not just a relayed claim. Confirmed
`bash scripts/check.sh` passes clean and content/walker-evans/chapter.mdx is
still byte-identical to src/chapters/walker-evans.mdx before starting (no
regression of the round-5 site-sync defect).

01-allie-mae-burroughs, 02-floyd-burroughs, 03-bud-fields-family,
05-roadside-stand-birmingham, and 08-negro-church-south-carolina came back
clean from their per-plate reviewers.

## Required fixes

1. **04-fireplace-wall-burroughs — the CALENDAR frame_in_frame box clips the
   bottom of the calendar it claims to enclose.** `overlays/04-fireplace-wall-burroughs.json`
   draws the box at x=0.385, y=0.075, w=0.145, h=0.17 (pixel box x=616-848,
   y=149-488 on the 1600x1993 proof). I looked at the proof directly: the
   bottom bracket lands mid-way through the date grid, around the
   "17 18 19 20 21 22" row. Below the box, still clearly part of the same
   calendar sheet, sit the final "25 26 27 28 29" row and the "Peters Shoes
   ... Leather Footwear" printer's imprint line, both legible and both
   outside the drawn rectangle — the sheet's true bottom edge sits at roughly
   y=518-522px (frac ~0.26), about 32px/1.6%-of-frame-height past the box's
   bottom. Fix by increasing `h` from 0.17 to about 0.19-0.20 (keeping y at
   0.075) so the box reaches the sheet's actual bottom edge, then re-render
   and re-check.

2. **06-penny-picture-display-savannah — the APPLIED STUDIO SIGN box clips
   the tops of several of its own letters.** `overlays/06-penny-picture-display-savannah.json`
   draws the box at x=0.06, y=0.315, w=0.86, h=0.145 (pixel box x=96-1472,
   y=631-921 on the 1600x2003 proof). I looked at the proof directly: S and T
   sit roughly flush with the box's top edge, but D, I, and O visibly rise
   above it — the felt letters were cut with uneven baselines/heights and the
   box's flat top edge doesn't clear the tallest of them. Fix by raising the
   top edge (lower `y`, taller `h`) to roughly y=0.303-0.305 so all six
   letters of STUDIO sit fully inside the box, then re-render.

3. **06-penny-picture-display-savannah — the caption and overlay notes both
   flatly claim "no horizon," which the analyzer's own highest-confidence
   detection in this file contradicts.** `analysis/06-penny-picture-display-savannah.analysis.json`
   records `horizon.y = 0.7539, confidence = 0.9218` — the single highest
   confidence value anywhere in that file, and one of only two entries in
   `suggested_primitives`. At that y (~px 1510 of 2003) the proof shows a
   real, nearly full-width level seam between the third and fourth rows of
   panel sheets — the same kind of level line the chapter elsewhere calls a
   horizon (the plate-04 mantel edge, the plate-05 roofline, the plate-09
   curb). The body sentence "The analyzer finds no leading depth at all" is
   accurate (`vanishing_point` is null) — that is a distinct claim from "no
   horizon," and the caption conflates the two. Fix by either qualifying the
   claim ("no landscape horizon, no depth") or naming the y=0.754 seam
   explicitly and explaining why it doesn't count as a compositional horizon,
   instead of flatly asserting none exists.

4. **07-bethlehem-graveyard-steel-mill — the CEMETERY IRON RAILS line
   overshoots the actual rail into open grass.** The primitive
   (`overlays/07-bethlehem-graveyard-steel-mill.json`) runs from [0.03, 0.887]
   to [0.90, 0.886]. On the proof, the physical iron pipe rail terminates at
   a corner fence-post with a hanging chain at roughly x=0.78-0.80 — visible
   in the image just right of center-bottom; from there to the line's stated
   endpoint at x=0.90 (about 10% of the frame width) the teal stroke crosses
   only tall grass and weeds, with no rail, post, or fence structure beneath
   it. The left ~85% of the line does correctly trace the rail. Fix by
   shortening the second point to approximately [0.79, 0.887] so the line
   ends at the visible corner post.

5. **10-frame-houses-fredericksburg — the LONE VERTICAL: TELEPHONE POLE line
   is drawn dead-straight, but the actual pole leans.** The primitive
   (`overlays/10-frame-houses-fredericksburg.json`) runs from (0.51, 0.54) to
   (0.51, 0.93) — a perfect vertical. Direct pixel measurement of the source
   image shows the pole itself sits at roughly x=0.525 at y=0.54 (where the
   line begins) and drifts to roughly x=0.507-0.51 by y=0.86-0.90, a real
   ~4° lean and a visible gap between the teal stroke and the pole trunk near
   the top of the line. This was flagged as a minor advisory back in round 4
   ("the actual pole leans about 1-2% of frame width off that line") and left
   unfixed for three rounds; now that it's been measured precisely and the
   overlay-spec requires leading lines to trace the real contour, it's a
   checkable truthfulness defect, not just a nitpick. Fix by re-measuring the
   pole's true centerline top and bottom and redrawing the line to follow it
   (roughly [[0.525,0.54],[0.508,0.93]]), or, if the lean is judged too minor
   to bother tracing, drop the "LONE VERTICAL" framing and soften
   chapter.mdx's "the lone vertical pole" phrasing so it isn't claiming a
   plumb line the photograph doesn't show.

6. **11-company-houses-birmingham — the chapter cites a 0.90 vertical
   symmetry for this plate without acknowledging it isn't a real mirror, on
   the one plate the chapter itself names as breaking its own discipline.**
   chapter.mdx's own line for this plate says "This is the one plate where
   Evans breaks his own flatness for effect" — the near house looms hugely at
   right, the row recedes in scale to the left, and nothing here mirrors
   across a center. Looking at the proof, this reads as unambiguously
   perspectival, not frontal-symmetric. Two paragraphs earlier the chapter
   explains plate 07's low 0.63 score with an explicit causal claim
   ("because the composition is horizontal banding rather than a mirror"),
   but offers no equivalent explanation for why plate 11's equally
   non-mirrored, perspectival composition still scores 0.90 — nearly as high
   as the genuinely frontal-symmetric plates (04's 0.90, 09's 0.92, 08's
   0.95). Plates 03 and 09 both hedge their symmetry numbers against the
   frame's actual asymmetric content; plate 11 doesn't, even though the
   overlay itself quietly declines to draw the `symmetry_axis` primitive that
   `analysis.json`'s `suggested_primitives` proposed (pos 0.5, confidence
   0.9) — an implicit admission the axis isn't a meaningful visual claim
   here. Fix by adding a hedge in the same style as plates 03/09 (the 0.90 is
   a coarse left-right tonal-band correlation, not a real mirror, since the
   near house has no counterpart on the left) or cutting the number so it
   doesn't read as validating the chapter's symmetry thesis on the plate
   explicitly framed as the exception to it.

7. **Chapter-wide — 09-frame-houses-new-orleans's curb is quoted at a number
   that doesn't match the analyzer, and the gap is never disclosed.**
   chapter.mdx states "The curb is marked as a level horizon at y 0.79,"
   matching the overlay's hand-set `horizon_line` (`overlays/09-frame-houses-new-orleans.json`,
   y=0.79) but not `analysis/09-frame-houses-new-orleans.analysis.json`,
   where `horizon.y = 0.758` (confidence 1.0) — a 3-percentage-point gap.
   Every other horizon/axis number quoted elsewhere in the chapter matches
   its analysis.json value to the thousandth. Looking at the proof, 0.79 is
   the more defensible read — it sits on the actual sidewalk/grass boundary,
   while 0.758 falls in a messier driveway-apron area — but nothing says so.
   This was flagged as an advisory back in round 4 ("nothing notes that the
   analyzer's raw value was deliberately overridden") and has sat unresolved
   for three rounds since; unlike plate 03, which explicitly discloses that
   its hand-set axis (0.54) departs from the analyzer's raw peak (0.575),
   plate 09's curb override is silent. Fix by adding a clause disclosing the
   deliberate departure, matching the chapter's own plate-03 convention, or
   moving the overlay's curb to 0.758 and updating the prose to "y 0.76" if
   the raw reading is judged the more honest one instead.

## Advisories

- **06-penny-picture-display-savannah** — the caption's "the field mirrored
  on a central column and broken only by the applied STUDIO lettering"
  implies a near-literal reflection, but this plate's 0.71 symmetry is the
  second-lowest in the chapter (only 07's 0.63 is lower) and the actual
  content isn't mirrored at all — every panel shows different, unrelated
  people, so any symmetry here is structural/grid-level only. Plate 09, with
  a considerably higher 0.92 score, gets an explicit hedge ("not a literal
  mirror of the whole frame, since..."); plate 06 gets the more confident,
  unhedged language despite a weaker score and more obviously non-mirrored
  content.
- **06-penny-picture-display-savannah** — the closing Callout's "These are
  8x10 and 4x5 view-camera negatives ... The FSA negatives carry no
  per-frame aperture or shutter log" is framed as a blanket statement
  covering all 11 plates ("every plate shows"), but sources.md and
  research.md both single out plate 06 as the one image that "falls outside
  the FSA negative file" and is instead "reproduced from the Metropolitan
  Museum of Art's Open Access (CC0) print." No settings are invented for it,
  so this doesn't break the core settings-honesty rule, but the blanket
  framing folds plate 06 into an FSA-negative provenance claim the chapter's
  own sourcing docs contradict for that one image.
- **09-frame-houses-new-orleans** — two of the three "REPEATED COLUMNS"
  `leading_line` primitives carry `label: ""` in
  `overlays/09-frame-houses-new-orleans.json`; only the first instance is
  labeled. A reader looking at the rendered proof alone sees two unexplained
  teal verticals. Every other overlay in this chapter labels every instance
  of a repeated primitive (08's two GABLE PITCH lines, 05's two SPECIAL SIGN
  boxes); plate 09 is the one exception.
- **Chapter-wide** — the opening paragraph names "horizon lines that sit
  dead level" as one of the analyzer's three defining signatures, and plate
  01's caption calls its clapboard band "a level line" with no hedge, but
  `analysis/01-allie-mae-burroughs.analysis.json` records the largest
  measured horizon tilt in the chapter for that exact line (angle_deg=2.97,
  confidence 1.0, method "both") — the plate with the single largest,
  most-confidently-measured tilt gets the least hedged "level" language of
  any plate. Separately, plate 05's own caption calls its roofline
  "ruler-flat" while its body text two lines later calls the same line
  "nearly level" — a small internal inconsistency in how flat the same line
  is claimed to be.

Settings honesty: clean on the core rule — no per-frame f-stop, shutter
speed, or ISO is invented anywhere for any of the eleven 1930s plates, and
the Phase One/Sinar/Kodak entries in manifest.json (modern archival scanner
metadata) do not leak into chapter.mdx, sources.md, or research.md as if
they were Evans's own camera settings. The one settings-adjacent issue this
round is the narrower provenance-framing gap on plate 06 captured as an
advisory above.

## Builder resolution (2026-07-11)

Regression gate first: dispatched one independent read-only re-verification
pass per plate (all 11) plus a chapter-wide numeric-consistency and
settings-honesty sweep, checking every required fix from every prior round
(1, 3, 4, 5, 6) against the current overlays/proofs/chapter — before making
any round-7 edits. All held clean, nothing regressed:
- 01: sources.md's "horizontal" clapboard call and chapter.mdx's "ruled
  ground" (not "grid") phrasing both hold.
- 02: no prior fixes on record; overlay and chapter still match the image
  and invent no settings.
- 03: the hand-set 0.54 axis, the decoupled 0.54-vs-0.575/0.81 prose, the
  gaze-register vertices at true eye level, the "six faces" caption/notes,
  and the doorway-not-floor shadow direction all hold.
- 05: the house-mover/fish-market sign distinction holds.
- 07: the real cemetery-rail primitive and the "row house cornice"
  relabeling both hold (checked against the pre-fix state, since this plate
  also got a new round-7 fix below).
- 08: both gable-pitch lines still stop cleanly at their eave corners.
- 09: the "matching in scale and rhythm" softening and the porch-rhythm
  (not literal-mirror) axis caption hold.
- 10: the serial-roofline's first segment still starts at the first
  matching house (checked against the pre-fix state, since this plate also
  got a new round-7 fix below).
- 11: no prior required fixes on record.
- Global sweep: zero findings — no silently-wrong quoted number anywhere in
  the chapter, no invented settings, manifest.json's scanner EXIF never
  leaks into prose as Evans's own camera data.
Three long-standing advisories were re-confirmed as still open and, per
build.md, correctly left unfixed since they're optional and not free
side-effects of a required fix: 01's FACE ellipse still clips the
chin/jawline; 07's WHITE GRAVE CROSS polyline still slightly undershoots the
carved stone; 11's ROOF RIDGES RECEDE line still kinks along chimney brick.

All seven round-7 required fixes applied and re-rendered/re-scored through
the composition-analysis loop (every touched plate converged on the first
render/score pass, all clean visual passes, all scores >= 93):

1. **04 CALENDAR box.** Increased `h` from 0.17 to 0.19 (x/y/w unchanged)
   after confirming the calendar sheet's true bottom edge directly against
   the source JPEG. Score 100, zero deductions.
2. **06 APPLIED STUDIO SIGN box.** Raised the top edge from y=0.315 to
   y=0.304 (h grown from 0.145 to 0.156, bottom edge held fixed) so all six
   STUDIO letters, including the three that used to poke out (D, I, O), sit
   fully inside. Score 100.
3. **06 "no horizon" overclaim.** Reworded both the overlay's `notes` field
   and chapter.mdx's plate-06 caption from "no horizon and no depth" to "no
   landscape horizon or leading depth," acknowledging analysis.json's real
   0.92-confidence seam at y=0.754 (a join between two rows of
   contact-printed panels, not a compositional horizon) without
   contradicting the accurate "no leading depth" claim (vanishing_point is
   null).
4. **07 CEMETERY IRON RAILS overshoot.** Shortened the line's second point
   from [0.90, 0.886] to [0.79, 0.887] after pixel-verifying the actual
   rail/post junction; the line now ends at the corner post/chain instead of
   crossing open grass. Score 93. chapter.mdx's existing wording doesn't
   name an endpoint, so no text change was needed.
5. **10 LONE VERTICAL pole lean.** Measured the pole's centerline directly
   off the ingested image using a clean, uncluttered sub-segment and linear
   regression (independent of the critique's own estimate, which it
   corroborated: ~4.9° lean vs. the critique's ~4°). Redrew the line to
   [[0.527,0.54],[0.505,0.93]]. Score 94. Judged chapter.mdx's "the lone
   vertical pole" phrasing still accurate as a compositional-role label (the
   frame's one vertical accent), not a plumbness claim, so left it
   unchanged.
6. **11 symmetry hedge.** Added a hedge to the 0.90 vertical-symmetry
   sentence: "...a coarse left-right tonal-band correlation rather than a
   real mirror, since the looming near house has no counterpart on the
   left..." — text-only, no overlay change.
7. **09 curb-number disclosure.** Added a disclosure clause matching plate
   03's convention: the hand-set curb at y=0.79 (the sidewalk/grass edge) is
   now explicitly distinguished from the analyzer's raw luminance split at
   0.758 (a messier driveway-apron area a few feet closer).

Two cheap, clearly-correct advisories fixed alongside the above (optional
per build.md, taken because they cost nothing and were directly verified
against the image): 09's "a bare tree" corrected to "a leafy tree" (the tree
at right is visibly in leaf, not bare) in both chapter.mdx and, together
with softening its overlay notes' own "near-identical" phrasing to match
the chapter's fix, and 09's two blank `label: ""` REPEATED COLUMNS
primitives filled in (all three now labeled, re-rendered, re-scored at
87.2). No other advisories were touched.

`content/walker-evans/chapter.mdx` and `src/chapters/walker-evans.mdx` were
re-synced (byte-identical) after every text edit. Full `bash scripts/check.sh`
(validate, chapter-sync, prose lint, tests, build, lint) passes clean.

## Round 8 review (2026-07-11)

First review under the new materiality-bar rubric (REQUIRED vs ADVISORY,
explicit tolerances: 0.03 on normalized coordinates/scores, 2-sig-fig
rounding OK, ~2% frame margin on endpoints; do not re-litigate settled
findings absent material regression; when unsure, ADVISORY). Method: eleven
independent fresh-eyes per-plate passes (one reviewer per plate, vision on
the actual proof PNG plus the overlay JSON, analysis JSON, and that plate's
chapter prose, each told what was already settled/fixed so it wouldn't
re-flag non-regressions), a twelfth chapter-wide sweep for cross-plate
contradictions and settings honesty, and adversarial verification of every
REQUIRED candidate (three independent skeptics per finding, instructed to
try to refute it, majority required to survive). I then personally
re-inspected all eleven proof PNGs myself, at full resolution and in tight
crops where needed, before writing anything below.

Regression check: every required fix from rounds 1-7 was re-verified against
the current proofs and holds clean, with no material regression -
01's "ruled ground" phrasing, 03's decoupled 0.54/0.575/0.81 axis
disclosure and eye-level gaze register and six-faces caption and
doorway-shadow direction, 04's MANTEL EDGE label and enlarged CALENDAR box
(now clears the sheet's bottom rows through the "Peters Shoes" line) and
dropped superlative, 05's house-mover/fish-market distinction, 06's raised
APPLIED STUDIO SIGN box (all six letters now sit inside it) and "no
landscape horizon or leading depth" wording, 07's relabeled ROW HOUSE
CORNICE and shortened CEMETERY IRON RAILS line (confirmed by direct crop:
it now ends exactly at the corner fence-post/chain), 08's trimmed left
GABLE PITCH line, 09's curb disclosure/softened caption/porch-rhythm axis
framing, 10's dropped fifth-house roofline segment and re-leaned telephone
pole, and 11's symmetry hedge were all checked directly against the current
proof PNGs and text and confirmed intact. `scripts/check.sh` (validate,
chapter-sync, prose lint, tests, build, lint) passes clean and
content/walker-evans/chapter.mdx remains byte-identical to
src/chapters/walker-evans.mdx.

Ten of eleven plates (01, 02, 03, 04, 06, 07, 08, and effectively 05, 09, 10
apart from the items below, plus the chapter-wide sweep) came back clean or
advisory-only. One REQUIRED issue surfaced and survived unanimous
adversarial verification (all three independent verifiers, plus my own
direct pixel check below).

## Required fixes

1. **09-frame-houses-new-orleans — the curb-disclosure sentence has the
   spatial relationship backwards on two counts.** chapter.mdx's clause "the
   analyzer's own raw luminance split at 0.758, which falls a few feet
   closer in a messier driveway-apron area" gets both the direction and the
   location wrong. I drew both candidate lines directly on
   images/09-frame-houses-new-orleans.jpg (1600x1279): y=0.758 -> row 969,
   y=0.79 -> row 1010. In this level, frontal shot the grass fills the
   foreground at the bottom of the frame, so a larger normalized y (lower in
   frame) is nearer the camera and a smaller y (higher in frame, nearer the
   building line) is farther. Row 969 (0.758) sits at the back edge of the
   sidewalk near the fence/porch-steps line - farther away, not closer. Row
   1010 (0.79, the hand-set curb) sits at the sidewalk-to-grass edge -
   nearer the camera. A tight crop over the driveway curb-cut and
   storm-drain grate (x 0.35-0.70) confirms the grate itself sits right at
   the 0.79 line, not the 0.758 line, which crosses plain, unbroken sidewalk
   pavement above it. So the sentence calls the farther line "closer" and
   attributes the messiness to the wrong one of the two lines - a reader who
   checks the claim against the plate finds both halves of it backwards.
   This traces to phrasing introduced in round 4 as an advisory and carried
   into round 7's disclosure clause without ever being pixel-checked; this is
   the first round to verify it, and it fails. The overlay's own CURB LINE
   primitive is correctly placed at 0.79 and does not need to change - this
   is a text-only fix. Fix by rewriting the clause so it correctly states
   that the analyzer's raw split (0.758) sits farther back on plain
   sidewalk, while the hand-set curb (0.79) sits nearer the camera at the
   messier driveway-apron/storm-drain seam.

## Advisories

- **05-roadside-stand-birmingham** - both SPECIAL SIGN `frame_in_frame` boxes
  bound only the white-lettered price-board text and stop exactly at the
  seam with the attached black price-digit strip (20/15/15/15/20), which is
  part of the same physical placard; the boxes still unambiguously trace the
  correct signs, they just don't enclose the full panel.
- **05-roadside-stand-birmingham** - the POINTER SIGN box's top edge sits
  about 1% of frame height below the visible top of the "F.M.POINTER"
  lettering, marginally grazing the tallest letters' ascenders; within the
  ~2% endpoint tolerance.
- **09-frame-houses-new-orleans** - the prose's asymmetry list (fence
  left-only; pole, tree, and a fourth house's sliver right-only) omits a
  comparable partial building visible at the very left edge of the frame,
  making the one-sidedness argument read slightly more absolute than the
  image actually is. Doesn't make either stated clause false.
- **10-frame-houses-fredericksburg** - the sky actually shows two comparably
  prominent diagonal wires; the overlay traces one and the body text calls
  it "the only incident," slightly overstating the sky's bareness. Doesn't
  undermine the chapter's point about a near-empty sky with one vertical
  accent.
- **10-frame-houses-fredericksburg** - the SERIAL ROOFLINE's first traced
  segment (the first of the four matching houses) sits 0.019-0.027
  normalized above that house's true roof fascia - the largest deviation of
  the polyline's three segments, but still inside the 0.03 tolerance and
  still clearly tracing that roofline.
- Carried forward, re-checked this round and still open, still non-blocking:
  01's FACE ellipse clipping the chin/jawline and the unhedged "level line"
  language against the plate's 2.97-degree measured tilt; 04's CENTRAL AXIS
  sitting a little left of the vase-implied mirror line and the TACKED
  PICTURES box only enclosing the top pair of images; 05's "ruler-flat"
  vs. "nearly level" wording inconsistency and the unmarked large FISH/LAKE
  FISH wordmarks; 06's more-confident-than-09 mirror language against a
  lower, non-mirrored-content score, and the Callout's blanket "every plate"
  framing against 06's Met-CC0 (non-FSA) provenance; 07's WHITE GRAVE CROSS
  polyline undershooting the carved stone; 11's ROOF RIDGES RECEDE line
  riding chimney brick in a slight zigzag.

Settings honesty: clean. No per-frame aperture, shutter speed, or ISO is
invented anywhere in chapter.mdx for any of the eleven 1930s plates; the
Phase One/Sinar/Kodak archival-scanner EXIF in manifest.json does not leak
into chapter.mdx, sources.md, or research.md as if it were Evans's own camera
settings. The chapter-wide sweep found zero cross-plate numeric
contradictions and zero settled points regressed.
