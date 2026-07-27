verdict: revise

## Critique round — 2026-07-27

### Required

1. **08-passports — OPEN WINDOW.** The `frame_in_frame` at `x: 0.66, y: 0.25, w: 0.23, h: 0.27` begins in roof/masonry and stops around the middle of the right-hand window. It does not trace the visible open window (approximately `x: 0.72–0.91`, `y: 0.37–0.60`). Refit the frame to that window or remove/change the claim.
2. **08-passports — BODY-TO-DOCUMENT GESTURE.** The polyline terminates at `(0.55, 0.61)`, on the stump/green face, rather than at either paper held near the figure's hands. Redraw it to one documented hand-and-paper relationship or relabel it to the feature it actually follows. The chapter prose repeats this unsupported overlay claim and must agree with the repaired spec.
3. **09-16-june — RAISED STAFF.** The polyline from `(0.48, 0.15)` through `(0.56, 0.31)` to `(0.53, 0.55)` crosses the face and torso; the staff is the near-vertical object to the figure's right. Reposition it to the staff or remove/change the claim.
4. **09-16-june — CAST SHADOW.** The second polyline runs across open pavement after its lower-left start and does not follow a continuous cast shadow. Reposition it to a visible shadow contour or remove the claim; the chapter's statement that the cast-shadow path sweeps toward the figure must then match the spec.
5. **10-umfana — BLUE WRAP EDGE.** The path begins and remains materially left of the wrap in sky/background before touching it near the bottom. It does not trace the labelled edge. Refit it to the visible blue-wrap boundary or remove/change the claim.
6. **12-sangoma — MOUNTAIN BACKDROP.** The polyline crosses the foreground costume and figure rather than the distant mountain ridge. Restrict it to the visible ridge or remove/change the claim; align the chapter's receding-ridge prose with the repaired overlay.

### Advisory (non-blocking)

- The deterministic scorer returns 100 for all twelve overlays, but the affected ellipses, frames, and polylines are only bounds-checked or semantically judged. Preserve a visual proof pass after the revisions; a passing score alone will not establish that an interpretive label traces its named feature.

### Checks completed

- Looked at all twelve current proof PNGs and checked their paired specs and analyzer outputs.
- Chapter tonal, palette, edge-density, grid, and retained per-file camera-metadata claims match the recorded analysis/manifest within the stated tolerance.
- All twelve direct JPEG links and all four official project-page links in `sources.md` return HTTP 200. The sources identify the artist, route, and per-image four-factor fair-use rationale; no source-integrity blocker was found.

## Builder resolution — 2026-07-27

Re-verified critique history: the sole prior round, **2026-07-27**, and every one of its six required fixes.

1. **08-passports — OPEN WINDOW.** Refit the frame to the visible right-hand open window (`x: 0.72–0.91`, `y: 0.37–0.60`).
2. **08-passports — BODY-TO-DOCUMENT GESTURE.** Replaced the unsupported body-to-base path with `HAND TO HELD PAPER`, following the figure's left arm to the paper at its hand; revised the chapter to make the same narrow claim.
3. **09-16-june — RAISED STAFF.** Repositioned the path on the near-vertical staff to the figure's right.
4. **09-16-june — CAST SHADOW.** Repositioned the path on the contiguous shadow extending down and right across the pavement; revised the chapter accordingly.
5. **10-umfana — BLUE WRAP EDGE.** Refit the path to the visible outer blue-wrap boundary.
6. **12-sangoma — MOUNTAIN BACKDROP.** Replaced the foreground-crossing path with the short, visible exposed ridge at left; revised the chapter to state that limited claim.

The four affected images were re-analyzed, rendered, and scored at 100/100; the refreshed proofs and the full 12-image contact sheet passed visual review. `scripts/check.sh` and `python3 scripts/validate_pipeline.py` pass, and the rendered chapter remains byte-identical to `content/namsa-leuba/chapter.mdx`.

## Critique round — 2026-07-27

### Required

1. **11-qkhwini — ROCK SHELTER ARC.** The polyline from `(0.23, 0.18)` through `(0.40, 0.15)` to `(0.68, 0.20)` enters on undifferentiated rock, then crosses the headdress before returning to rock. It does not trace a visible rock-shelter arc, yet the overlay notes and chapter describe that arc as an enclosing structure. Refit it to a visible rock contour or remove the primitive and revise the matching prose/notes so the chapter does not claim a structure absent from the frame.

### Advisory (non-blocking)

- All twelve deterministic scorer runs return 100/100, but the scorer cannot establish the semantic truth of interpretive polylines. The remaining required finding is based on the current visual proof rather than a score deduction.

### Checks completed

- Looked at every current proof PNG and its paired overlay/analysis JSON, including a regression pass over the six fixes resolved in the prior round. Those six repairs remain materially correct.
- Chapter palette, tonal, edge-density, grid, and recorded per-file camera-metadata claims match the current analyses and manifest within tolerance.
- All twelve official project-page links and all twelve direct image links in `sources.md` returned HTTP 200 in this review. Each image has an artist credit, route, and concise per-image four-factor fair-use rationale; no source-integrity blocker was found.

## Builder resolution — 2026-07-27

Re-verified the full critique history: the first **2026-07-27** round (six
required repairs), its prior builder resolution, and the current **2026-07-27**
round (one required repair). All seven required fixes now hold against the current
overlays, proofs, and matching chapter prose.

1. **08-passports — OPEN WINDOW and BODY-TO-DOCUMENT GESTURE.** The frame remains
   fitted to the right open window; the arm path now reaches the held paper.
2. **09-16-june — RAISED STAFF and CAST SHADOW.** Both repaired paths remain on
   their named visible features.
3. **10-umfana — BLUE WRAP EDGE.** The path remains on the outer blue-wrap
   boundary.
4. **12-sangoma — MOUNTAIN BACKDROP.** The path remains restricted to the short
   exposed ridge at left.
5. **11-qkhwini — ROCK SHELTER ARC.** Removed the unsupported rock-arc primitive
   and revised its overlay note, plate caption, and paragraph to the defensible
   figure-against-rock-field claim.

As a non-blocking visual-QA hardening pass, refit the *Transe A* fringe, *Power*
raised arm, and *Passports* hand-to-paper paths. Every affected proof was rendered
and visually reviewed; each scores 100/100. The independent composition review
approved the four refreshed proofs. The *Azaca* edge-density wording no longer
claims an incorrect chapter-wide maximum, and the source record now identifies the
artist/archive credit without asserting unverified rightsholdership.

`scripts/check.sh` passes, the content and rendered chapter files are
byte-identical, and `python3 scripts/validate_pipeline.py` passes.

## Critique round — 2026-07-27

### Required

1. **03-kokos — PROFILE-TO-HIP CONTOUR.** The current polyline in
   `overlays/03-kokos.json` (`[0.48, 0.10]` → `[0.43, 0.35]` →
   `[0.49, 0.62]` → `[0.56, 0.88]`) travels through the dark hood and the
   figure's interior. It does not trace the named profile-to-hip contour in the
   current proof. Refit it to a visible contour or rename it to the actual
   feature it follows; make the overlay notes and the matching *Kokos* paragraph
   agree with that defensible claim.

### Advisory (non-blocking)

- None.

### Checks completed

- Looked at all twelve current proof PNGs with their paired overlays and analysis
  JSON, including regression checks of every previously resolved required finding.
  The seven earlier repairs remain materially correct.
- The chapter's recorded tonal, palette, grid, edge-density, and per-file camera
  metadata claims match the current analyses and manifest within the stated
  tolerance.
- All twelve direct image links and the four official project-page links in
  `sources.md` returned HTTP 200 in this review. Every selection has a traceable
  artist/archive route and an image-specific four-factor fair-use rationale; no
  source-integrity blocker was found.
