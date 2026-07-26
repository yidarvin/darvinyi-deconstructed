verdict: approve

## Resolution — 2026-07-26

Re-verified critique history: the sole prior round, **2026-07-26**.

1. Removed `CELESTIAL ARC` from `03-new-head`; the proof no longer claims a contour across blank space.
2. Relabelled the measured anchor in `05-neither-dream-nor-riddle` as `LOWER-LEFT DOLL`, which is the structure it actually marks; revised the accompanying prose so the green figure is no longer described as the anchor.
3. Tightened `CENTRAL LIGHT BOX` in `06-everything-stood-still` to the white rectangular box and removed the false `SHELF SEAM`; revised the caption and prose accordingly.
4. Retargeted `DOCUMENT FIELD` in `09-contemplating` to the upright framed document panel.
5. Removed the unsupported `STORAGE BAY` from `10-glass-storage`; revised its caption and prose accordingly.

The five regenerated proofs received deterministic scores of 100, 97, 100, 97, and 100 respectively (threshold 80), and each passed visual inspection. `scripts/check.sh` passes with the rendered and content chapter files byte-identical.

## Critique round — 2026-07-26

### Required

1. `03-new-head`: `CELESTIAL ARC` is a straight, angled-then-horizontal polyline through blank white space, rather than the gold crescent in the upper-right of the photograph. Replace it with a contour that follows that crescent or remove it. The current primitive falsely teaches the feature it names.

2. `05-neither-dream-nor-riddle`: the `GREEN FIGURE` subject anchor at `(0.254, 0.569)` lands on the head of the large lower-left doll, not on the small green figurine in the upper compartment. Move it to the green figure or relabel it to the doll; the current label is false.

3. `06-everything-stood-still`: `CENTRAL LIGHT BOX` encloses the adjacent teal panel as well as the white rectangular light box, so its frame does not trace the named structure. Tighten the frame to the white box or rename it accurately.

4. `06-everything-stood-still`: the `SHELF SEAM` polyline floats across the interior of the central assembly around `y≈0.52`; it does not follow a visible shelf seam. Retarget it to the actual horizontal shelf edge or remove it.

5. `09-contemplating`: `DOCUMENT FIELD` is encoded as a `frame_in_frame`, but its top and right sides run through blank white space rather than a visible document boundary. Retarget it to the actual framed document, or use a primitive/label that accurately describes the intended white-space relationship.

6. `10-glass-storage`: `STORAGE BAY` does not follow a visible bay or internal frame: its outline crosses mural, white field, and loose storage clutter. Remove it or replace it with a primitive traced to a real structural feature.

### Advisory (non-blocking)

- `04-true-story`: the instrument-window and blue-tile-panel boxes are slightly loose, but both still identify the structures their labels name.
- The scorer gives 97/100 to overlays 05, 08, 09, and 10 solely for using three `frame_in_frame` primitives. The three compartments remain legible and instructional in 05 and 08; this is not a blocking issue. The revisions above should reconsider the frame count in 09 and 10 as part of correcting their false claims.

### Verified

- All ten proofs were visually inspected. The remaining primitives are materially truthful, and the chapter's analyzer-derived palette, tonal, edge-density, and luminance values agree with the current analysis records within the stated tolerance.
- The artist project page identifies the selected 2017 vitrines and documents the 2014–17 Israel Museum archive project, 753-image archive, and twenty photomontages. Each supplied image has a traceable artist-page source and a documented fair-use basis; no camera settings are claimed.

## Critique round — 2026-07-26

### Required

None. The five findings resolved in the preceding resolution have not materially
regressed: the current proofs show the retargeted or removed claims accurately.

### Advisory (non-blocking)

None.

### Verified

- Inspected all ten current proof PNGs against their overlay specs. Each primitive
  remains materially truthful to the named visible feature; the two-primitive
  overlays in `03-new-head` and `06-everything-stood-still` stay concise and
  pedagogically legible rather than becoming an inventory.
- Re-ran deterministic scoring on all ten current specs: seven score 100/100 and
  `05-neither-dream-nor-riddle`, `08-place-they-occupied`, and `09-contemplating`
  score 97/100 solely for the non-blocking three-frame warning. All clear the 80
  threshold.
- Checked every chapter palette, tonal percentile, mean-luminance, and edge-density
  value against its current analysis record; all are within the stated tolerance.
  The chapter makes no camera-setting claim. The ten credited artist-page sources
  remain individually traceable and each fair-use entry documents the complete-frame
  pedagogical need, transformative teaching purpose, creative-work factor, credited
  web-scale use, and non-substitution rationale.
