verdict: revise

## Critique round — 2026-07-18

### Required fixes

1. `02-nova-1971-b`: Remove or retype the `horizon_line` at `y: 0.275` labelled `wall-to-shadow shift`. In the proof it crosses the hat/hair and dark field; there is no horizontal wall-to-shadow boundary at that position. The analyzer's gradient detection is not a visual feature the line can truthfully name.
2. `03-elle-1969-a`: Rework or omit `frame_in_frame` `central mirror bay`. Its current bounds (`x: .31–.69`, `y: .05–.89`) place the brackets inside the open central field rather than on the visible mirror seams, so it does not trace the internal frame named by the label.
3. `05-nova-1973-a`: Remove or retype the `vanishing_point` `seated figure hinge`: the cross sits at the cigarette hand, not a convergence of diagonals. Also correct the `horizon_line` label `chair and floor edge`; at `y: .688` it runs across chair/armrest structure and no floor edge is visible.
4. `06-nova-1973-b`: Remove or retype both the `horizon_line` `green-field shift` and the `vanishing_point` `exchange between figures`. The proof has no horizontal field transition at `y: .457`, and the indicated gesture area is not a convergence point.
5. `07-nova-1971-c`: Rebuild or remove `frame_in_frame` `mirror room` and the `vanishing_point` `room's mirrored hinge`. The large axis-aligned frame does not land on a visible mirror boundary (it cuts through wallpaper, chandelier, and lower room), and the point does not identify converging architectural lines.
6. `08-nova-1971-d`: Replace or omit `frame_in_frame` `bed rectangle`. The bed is a perspective-skewed quadrilateral; the current axis-aligned bounds invent top/right edges through the wallpaper and bedside area. This also contradicts the chapter's correct claim that the bed is an actual rectangle rather than a diagram imposed by the overlay.
7. `09-marie-claire-1973-a`: Rename or move the `subject_anchor` `joined hands`. At `(.535, .305)` it circles the cigarette/sleeve-cuff area; the figures' hands are not joined there.
8. `12-us-vogue-monaco`: Redraw or relabel the polyline `whip and raised arm`. Its present route cuts across the bodies instead of following the visible whip from its left-hand grip and its upper span to the raised hand. The chapter and caption explicitly rely on the whip as a kinetic diagonal.

### Advisory (non-blocking)

- `01-nova-1971-a` has a scorer warning for the chair-rail line, but the proof still visibly follows the raised rail; it is not a blocking defect. The `face and raised arms` anchor sits closer to the upper torso than the face, so a more exact label would be clearer.
- `06-nova-1973-b`'s `left figure's vertical` is visibly a slanted contour. Consider a label such as `left figure's rising contour`, but it still reads as the left figure's upright directional force and is not a separate blocking issue.

### Verified without finding a blocking issue

- All twelve proofs were visually reviewed. The remaining primitives are materially legible, and the chapter's measured edge-density and palette claims match the corresponding analysis values within tolerance. The chapter makes no invented camera-setting claim and explicitly limits its illumination observations to the supplied reproductions.
- Each supplied image has a reachable official Foundation exhibition page and direct public display rendition. `sources.md` supplies a per-image credit, route, source link, and four-factor fair-use rationale; no access-control bypass is evidenced.
