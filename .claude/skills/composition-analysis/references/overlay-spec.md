# Overlay Spec v1 — the contract

One JSON file per image. The skill's `render_overlay.py` and the site's
`OverlayRenderer` React component both consume this format; the renderer on
either side must draw the image at its **natural aspect ratio** (SVG viewBox
= natural size, no object-fit cropping), or alignment breaks.

```json
{
  "version": 1,
  "image": "atget-001.jpg",
  "grid": { "type": "thirds" },
  "primitives": [ ... ],
  "notes": "one-line compositional thesis (prose lives elsewhere)"
}
```

`grid.type`: `"thirds"` (lines at 1/3, 2/3) | `"phi"` (0.382, 0.618) | `"none"`.

All coordinates normalized: x ∈ [0,1] left→right, y ∈ [0,1] top→bottom.

## Primitives

| type | fields | claim it makes |
|---|---|---|
| `horizon_line` | `y`, `angle` (deg, default 0), `label` | the frame is split by this dominant horizontal |
| `leading_line` | `points` [[x,y],...], `arrow` (bool), `label` | this edge/contour steers the eye |
| `vanishing_point` | `x`, `y`, `label` | diagonals converge here |
| `subject_anchor` | `x`, `y`, `r` (default 0.035), `label` | the subject sits here |
| `symmetry_axis` | `orientation` ("vertical"/"horizontal"), `pos`, `label` | the frame mirrors across this axis |
| `golden_spiral` | `pole` ("tl"/"tr"/"bl"/"br"), `cw` (bool) | the composition sweeps into this corner's phi-point |
| `diagonal` | `from`, `to` (corner names) | corner-to-corner structural diagonal |
| `frame_in_frame` | `x`, `y`, `w`, `h`, `label` | an internal frame (door, window, arch) |
| `polyline` | `points`, `label` | interpretive path (gaze, contour) — judged visually, not geometrically |
| `ellipse` | `cx`, `cy`, `rx`, `ry`, `label` | circular/oval structure |

Spiral pole coordinates (for reasoning about placement): tl→(0.286, 0.276),
tr→(0.714, 0.276), bl→(0.286, 0.724), br→(0.714, 0.724). Pick the corner
whose pole lands on the primary subject.

## Style constants (site + renderer must match)

- Stroke: teal `#2dd4bf`; grid: white at ~37% opacity, dashed.
- Labels: uppercase, mono (JetBrains Mono on site), dark backing box.
- Stroke width ≈ imageWidth / 550, minimum 2px.
