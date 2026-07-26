verdict: resolved

## Critique round — 2026-07-26

### Required fixes

1. **05-red-eyed-woman — remove or replace `PORTRAIT BALANCE`.** The `symmetry_axis` at x=0.625 claims mirror structure, but the proof shows a materially asymmetric collage: different hair masses and incompatible facial constructions sit on either side of the line. The analyzer's 0.815 symmetry correlation is a detector artifact here; the label “PORTRAIT BALANCE” does not change the semantic claim of the primitive type.
2. **06-portrait-in-ruby-and-blue — remove or replace `HEAD BALANCE`.** The `symmetry_axis` at x=0.400 claims mirror structure that is not present. It runs through an offset blue cutout and unequal red, orange, and blue planes. Prune the analyzer's 0.789 symmetry suggestion and use a primitive that truthfully describes the offset profile or color-block structure.
3. **07-tropical-still-life — retarget `PINEAPPLE LEAVES`.** Its line from (0.122, 0.870) to (0.857, 0.099) crosses cloth and fruit for most of its length and ends in the patterned wall; it traces the leaf fan only briefly. Shorten it to the actual leaves or rename/redraw it as a truthful interpretive route.
4. **08-asparagus — correct or remove `TORN PAPER SEAM`.** The y=0.649 `horizon_line` runs roughly 0.06–0.08 frame-height below the ragged red/blue paper boundary, over the lower spear/background. The detected luminance split is not the named torn seam; use a contour on the actual tear if retaining this claim.
5. **08-asparagus — correct or remove `UPPER ASPARAGUS`.** The horizontal polyline at y=0.190 floats above the left half of the upper spear, which slopes from about (0.18, 0.24) to (0.83, 0.18). This exceeds the endpoint tolerance and mis-traces the named subject.
6. **Correct the media chronology in `research.md` and `chapter.mdx`.** The chapter says the later selection is pigment prints, but the source record identifies *Asparagus* (2013) as a C-print. State media by individual work or confine the later pigment-print statement to the documented 2016–20 works.
7. **Correct `chapter.mdx`'s medium claim for 09-screen-selection-7.** It calls *Screen Selection 7* a “painting,” whereas the documented work is a 2016 pigment print. Refer to the work/image/composition instead.

### Advisory (non-blocking)

- **02-red-headed-woman:** `FACE SEAM` is rendered as a frame-wide horizon line although the seam is local to the face; a local contour would teach the claim more clearly.
- **03-reclining-nude:** `BED PLANE` is a full-width horizontal line that reads through the torso rather than along the pictured receding plane; a local or diagonal annotation would be clearer.
- **09-screen-selection-7:** `LOWER REPEAT` does not follow a continuous edge; consider a different primitive if revising this overlay.
- The fair-use records contain all four factors and all twelve cited studio work pages currently resolve. The archive records no distinct copyright notice, so the blanket “Daniel Gordon ... rightsholder” and “nonprofit book” statements would be stronger if sourced or qualified.

### Verification

All twelve current overlay specs pass the deterministic scorer at 100/100. The required overlay findings above are visual/semantic errors that the geometry scorer cannot detect. The source notes contain traceable studio-record and display-derivative links and per-image four-factor rationales; the media corrections above are based on those records.

## Builder resolution — 2026-07-26

Re-verified prior critique round: 2026-07-26 (the only prior round).

1. Removed the false `PORTRAIT BALANCE` symmetry axis from 05 and retained only the cut-paper face, a local facial-cut seam, and the red-shoulder anchor.
2. Removed the false `HEAD BALANCE` symmetry axis from 06 and replaced it with local offset-blue-cutout and ruby-profile contours.
3. Replaced 07’s frame-spanning `PINEAPPLE LEAVES` leading line with a local `PINEAPPLE LEAF FAN` contour.
4. Replaced 08’s false horizon with a polyline on the ragged red-blue tear, and retargeted `UPPER ASPARAGUS` to the spear’s actual slope.
5. Corrected the media chronology: 2008–12 and *Asparagus* (2013) are C-prints; the documented 2016–20 works are pigment prints. Replaced the 09 “painting” reference with “work.”

All four revised proofs were rerendered, visually reviewed, and scored 100/100; `scripts/check.sh` passed. The source and rendered chapter files are byte-identical.
