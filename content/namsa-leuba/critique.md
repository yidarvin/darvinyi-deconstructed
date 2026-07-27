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
