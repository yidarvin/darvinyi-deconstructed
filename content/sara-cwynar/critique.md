verdict: resolved

## Critique round — 2026-07-26

### Required fixes

1. **03-display-stand-no-64 — `DISPLAY FIELD`:** The `frame_in_frame` is an arbitrary inset: its top crosses unbounded blue background and its sides/bottom do not follow one visible internal frame. Remove it or replace it with primitives that trace the display fixture’s actual structure.
2. **08-gold-nyt-april-22-1979 — clock and title annotations:** The `CENTRAL CLOCK` ellipse is centered below the large upper watch face; the `LOWER CLOCK` ellipse encloses no clock; and the `TITLE STRIP` frame stops above the visible handwritten “NYT April 22, 1979” strip. Refit or remove all three so each label names the feature it encloses.
3. **09-time-is-up-2 — `TIME-OUT FOOTER`:** The frame at y=0.82–0.92 cuts off the footer text, which continues below its lower boundary. Resize/reposition it to encompass the footer, or use a label for the narrower bounded feature it actually traces.
4. **10-color-bars-2 — both `OFFSET BAND EDGE` polylines:** The straight lines at y=0.34 and y=0.63 run through the interiors of the magenta and blue bands rather than along visible band boundaries. Redraw them on identifiable offset contours, or remove/relabel them.

### Advisory (non-blocking)

- **04-vases-encyclopedia-pictures — `LOWER CLUSTER`:** The ellipse contains substantial empty ground and only loosely bounds the lower grouping; tighten it if revising the plate.
- **06-our-natural-world-books-1 — `OUR NATURAL WORLD`:** The frame is vertically loose, including the separate diagonal book above while cutting off part of the titled cover below. The intended cover remains identifiable, so this is non-blocking.
- **07-man-from-contact-sheet-2:** `OCCLUDED PORTRAIT` and the left `REGISTRATION STREAK` labels touch at the top of the proof. Their features remain clear; separate the labels if convenient.
- **09-time-is-up-2 — `STOPWATCH RIM`:** The ellipse is inset and vertically compressed relative to the visible rim, particularly at the left, right, and lower arc.
- **11-man-and-space-books-2 — `MIDDLE BOOK BAND`:** The polyline reads as a loose interpretive grouping across discontinuous books rather than a continuous contour. Tightening it to identifiable book edges would make the teaching point clearer.

All 12 proofs were visually reviewed. The source trail is complete and credited; each copyrighted image has a concise per-image four-factor fair-use rationale. Chapter measurements and palette claims match the current analyzer output, and the chapter correctly declines to invent camera settings.

## Builder resolution — 2026-07-26

Re-verified required fixes from the full critique history: **Critique round — 2026-07-26** (the only prior round).

1. **03 — Display Stand:** removed the unsupported `DISPLAY FIELD` inset; the two remaining package-band polylines trace visible rows.
2. **08 — Gold:** refit both ellipses to visible watch faces and reduced the date annotation to the actual handwritten `NYT April 22, 1979` marking. The chapter now names it a handwritten date in both rendered copies.
3. **09 — Time Is Up 2:** expanded `TIME-OUT FOOTER` to include the full lower text and refit the stopwatch rim to its visible arc.
4. **10 — Color Bars 2:** replaced the two interior straight lines with named, jagged magenta–yellow and blue–green boundaries.

Fresh analyses, renders, deterministic scores (100/100 for every affected plate), and visual proof checks completed. `scripts/check.sh` passes.
