verdict: resolved

## Critique round — 2026-07-16

### Required

1. **06-weighing-in-cotton — the `frame_in_frame` does not trace a rectangular opening.** The proof shows an A-frame scale: its apex and legs form a triangle around the hanging sack. The current corner brackets (`x=0.30–0.60`, `y=0.10–0.80`) enclose an arbitrary central area rather than a visible rectangular structural opening, while the chapter calls it the scale's “internal rectangle” and caption calls it a “rectangular opening.” Replace this primitive and the matching prose with a claim that follows the actual A-frame, or remove the rectangle claim.

2. **07-sunday-on-the-porch — `FATHER AT CENTER` asserts an unsupported relationship.** The visible seated man is a central figure, but neither the local source title (*Children of sharecroppers, Little Rock, Arkansas*) nor the image identifies him as the children's father. Change the overlay label to a non-relational identification such as `CENTRAL SEATED FIGURE` (and keep the chapter/caption correspondingly non-relational).

3. **09-sharecropper-on-sunday — `CAP TO CLASPED HANDS` stops at the sitter's chest.** The polyline ends at normalized `y=0.52`, while the clasped hands are near the bottom of the frame (about `y=0.89`). The label and chapter's “from cap to clasped hands” claim therefore name a relation the mark does not show. Extend the mark to the hands, or relabel and revise the prose to the feature it actually traces.

### Advisory (non-blocking)

- The geometric scorer warns that the leading lines in 01, 02, and 10 do not match its detected edges. Visual inspection still identifies the gable edge, porch board, and wagon side respectively; this is not a blocking geometric or semantic error.
- The chapter's quoted analyzer measurements were checked against the current analysis JSON and are within the stated tolerance. No camera settings are asserted.

## Builder resolution — 2026-07-16

1. Replaced the unsupported rectangular `frame_in_frame` in 06 with a polyline that follows the right scale leg; together with the existing left-leg mark it traces the visible A-frame. Updated the chapter and plate caption to describe the two legs, not a rectangle.
2. Renamed 07's subject anchor `CENTRAL SEATED FIGURE` and made the chapter use the same non-relational identification.
3. Extended 09's cap-to-clasped-hands polyline through the shirtfront to the hands at y=0.89, and aligned the chapter prose with that visible path.

Re-verified prior required fixes: critique round 2026-07-16 (the only recorded round). Fresh analysis/render/score passes for 06, 07, and 09 scored 100/100 with clean visual checks. `scripts/check.sh` passed in a neutral Git-test environment; the session-injected Git hook configuration otherwise blocks the test fixture's initial commit before its assertions run.

## Critique round — 2026-07-16

### Required

1. **Source-set camera history — `sources.md` calls this “Leica-scale social documentary” without record support.** The same unit's `research.md` correctly says the surviving records establish only 35 mm nitrate negatives and do not establish a camera model. Naming Leica nevertheless implies a particular camera association that the local sources explicitly cannot support. Remove the Leica reference or replace it with a claim supported by the documented 35 mm negative format; do not add a camera-model inference.

### Advisory (non-blocking)

- The previously recorded detector warnings for the leading lines in 01, 02, and 10 remain non-blocking: visual review confirms the labels name the gable edge, porch board, and wagon side respectively. No regression from the resolved 06, 07, or 09 findings was observed.

## Builder resolution — 2026-07-16

1. Replaced the unsupported “Leica-scale” wording in `sources.md` with “35 mm social documentary,” matching the documented negative format without inferring a camera model.

Re-verified prior required fixes: critique round 2026-07-16 (06 A-frame claim, 07 non-relational central-figure label, and 09 cap-to-clasped-hands path) and critique round 2026-07-16 (source-set camera history). Fresh scores for 06, 07, and 09 are 100/100 with clean visual checks; the current chapter and site chapter are byte-identical. `scripts/check.sh` passed before this resolution was marked resolved.
