verdict: revise

## Critique round — 2026-07-25

### Required fixes

1. `01-red-series-01`: the `subject_anchor` labelled `pedestrian` is at `(0.000, 0.663)`, on the empty left frame edge. The visible pedestrian is near `(0.72, 0.65)`, to the right of the monument. Move or remove the anchor and correct the matching chapter claim that calls the left-edge anchor a pedestrian.

2. `05-unfinished-dissertation-01`: both `frame_in_frame` primitives materially misstate the mounted-image boundaries. The labelled `upper photograph` ends at `x=0.79`, although the visible photograph reaches roughly `x=0.92`; the labelled `television photograph` likewise begins/ends inside the visible screen photograph (approximately `x=0.36–0.92`, with its top above `y=0.52`). Redraw both frames to trace the photographs they name.

3. `10-tea-coffee-cappuccino-01`: the vertical `symmetry_axis` labelled `central figure` is a false compositional claim. It intersects the middle man, but the photograph does not mirror across that axis: its figures, linked arms, and street background differ on either side. Remove it or replace it with an appropriate non-symmetry primitive.

4. `06-by-the-ground-01`: the source record is materially inaccurate for the supplied file. The image is an installation photograph visibly credited `© picture-alliance/dpa`, while `sources.md` calls it a low street view from *By the Ground*, names only Boris Mikhailov/KSP, and bases its fair-use factors on the absent ground-to-figure composition. Correct the title/description, provenance and rights credit, and per-image fair-use rationale for the installation photograph, or replace the asset with the documented series work. The chapter and research note correctly identify the visible installation-view discrepancy but do not repair the source record.

5. `03-overlays-01`: the cited KSP record identifies this work as *Overlays* (1968–1981); it does not substantiate the parenthetical title `Yesterday’s Sandwich` used in the plate, chapter, and shortlist. Remove that parenthetical or add a traceable source establishing it as the title/alias of this image rather than a different work or series.

6. `08-at-dusk-10`: `sources.md` and `research.md` call the process “blue hand-toning,” but the cited KSP artist record describes *At Dusk* as chemically toned black-and-white images using color-toning stains and defects. Correct the process claim to the documented chemical/color toning or add a source for hand application. The chapter’s visible-description phrase “blue-toned print” can remain.

### Advisory (non-blocking)

- `03-overlays-01`: the `left figure to flame` polyline is a useful interpretive connection, but its middle segment crosses open hillside rather than a continuous contour. Relabelling it as an interpretive diagonal or simplifying it would make that distinction clearer.
- `04-luriki-01`: the `hand-colored print` frame is inset from the visible postcard boundary by roughly 4–6% of the frame. It still clearly identifies the correct print field.
- `09-case-history-09`: the `facial center` anchor is on the right nostril rather than the facial midline. It remains on the named face and does not alter the chapter’s reading.
- `12-temptation-of-death-01`: the first `trench edge` segment begins over open grass before the line reaches the trench; tightening that starting point would be cleaner.

All twelve overlay specs score 100/100 against their current analyzer JSON, but the required findings above are semantic/source-truth issues that geometric scoring does not detect. Camera-setting discipline is otherwise sound: the manifest has no EXIF capture data and the chapter appropriately declines to infer settings.

## Builder resolution — 2026-07-25

1. `01-red-series-01`: removed the false detector-driven pedestrian anchor; the chapter now places the visible pedestrian to the monument’s right.
2. `05-unfinished-dissertation-01`: redrew the upper photograph frame to x0.36–0.92 and the television photograph frame to x0.36–0.92 with its top at y0.48; rendered proof is visually clean.
3. `10-tea-coffee-cappuccino-01`: removed the false symmetry axis and revised the chapter to describe only the linked-arm structure and measured street edge.
4. `06-by-the-ground-01`: corrected the record to the supplied installation photograph, identified Deutsche Welle as the source, preserved the visible `© picture-alliance/dpa` credit, and replaced the fair-use rationale with one for its display-wall composition.
5. `03-overlays-01`: removed the unsupported `Yesterday’s Sandwich` parenthetical from the shortlist and both chapter copies.
6. `08-at-dusk-10`: corrected source and research language to chemically toned black-and-white images using color-toning stains and defects.

Reverified prior critique rounds: 2026-07-25 (`effcd5f70183777229c68fa1aa041101efca5f59`), the only prior round in `git log -p -- content/boris-mikhailov/critique.md`. Re-ran analysis, render, visual proof review, and strict scoring for the three affected overlays; each scores 100/100. `scripts/check.sh` passes, and `content/boris-mikhailov/chapter.mdx` remains byte-identical to `src/chapters/boris-mikhailov.mdx`.

## Critique round — 2026-07-25

### Required fixes

1. `12-temptation-of-death-01`: the plate label, source-shortlist heading, and research note give *Temptation of Death* the unsupported date span `2017–2019`. The cited KSP artist and project records identify this series as `2019`. Correct the date consistently to the documented year, or add a traceable source that establishes the broader range. This is a factual date claim, not a compositional interpretation.

### Advisory (non-blocking)

None. The prior round's advisories remain non-blocking and show no material regression in the current proofs.

## Builder resolution — 2026-07-25

1. `12-temptation-of-death-01`: corrected the series date to `2019` in the shortlist, research note, and both byte-identical chapter copies, matching the cited KSP records.
2. Independent visual review also tightened the *Luriki* print boundary and *Unfinished Dissertation* upper-image boundary, removed the perspectivally false installation-view rectangle, and relabelled the two semantically over-specific overlay claims as a procession band and upper-body contour. The affected proofs were regenerated and visually passed.
3. Tightened the *At Dusk*, *Case History*, *Industrial Zone*, and *Temptation of Death* source rationales so they describe the supplied frames rather than unsupported subjects or historical inferences.

Reverified every required fix from the full critique history: the initial 2026-07-25 round (`effcd5f70183777229c68fa1aa041101efca5f59`, six required fixes) and the follow-up 2026-07-25 round (`1dfb8d8`, the `Temptation of Death` date). All twelve current overlay specs pass strict scoring at 100/100, their proofs received a visual pass, `scripts/check.sh` and `python3 scripts/validate_pipeline.py` pass, and `content/boris-mikhailov/chapter.mdx` remains byte-identical to `src/chapters/boris-mikhailov.mdx`.

## Critique round — 2026-07-25

### Required fixes

1. `07-i-am-not-i-10`: the horizontal primitive at `y=0.636`, labelled `floor break`, follows the analyzer's luminance split but not a visible floor boundary. In the proof it crosses the sitter and stool, while the visible floor plane begins materially lower in the frame. Remove it or replace/relabel it with a primitive that truthfully identifies the feature, and revise the matching plate caption and chapter sentence that call it a floor break. The 100/100 geometric score does not validate this semantic claim.

### Advisory (non-blocking)

- `01-red-series-01` and `06-by-the-ground-01` use two clear primitives rather than the usual three to five; both still make truthful, readable claims. Adding an interpretive subject anchor could deepen the teaching argument, but is not needed for accuracy.
- `02-red-series-10`: the `central face` anchor visibly lands on a background placard portrait, while the spec note calls the compositional destination a `central veteran`. Clarifying that distinction would prevent ambiguity, but the on-proof label still names a face that is present.
- `05-unfinished-dissertation-01`: the two frame callouts are slightly loose at their shared boundary, but each still clearly identifies the photograph it names.
- `09-case-history-09`: `facial center` remains slightly right of the face's midline, on the nostril; it is still inside the named facial focus and has not materially regressed.
- `10-tea-coffee-cappuccino-01`: the measured line reads as a distant street-level/vehicle-roof band rather than a discrete edge in parts of the frame. A label refinement would be clearer, but it does not change the chapter's reading.

All twelve current specs score 100/100 against their analyzer JSON. Source inspection found traceable KSP project records for the eleven Mikhailov images and a traceable Deutsche Welle record plus the visible picture-alliance/dpa credit for the installation photograph; the fair-use rationales retain all four factors. No camera-setting claim was found.
