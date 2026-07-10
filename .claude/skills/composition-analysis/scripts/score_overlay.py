#!/usr/bin/env python3
"""Score an overlay spec against measured image geometry -> the loop's error signal.

Usage:
    python3 score_overlay.py ANALYSIS.json SPEC.json [--threshold 80] [--strict]

Output JSON: {score, pass, deductions:[{primitive, points, reason, fix}], warnings}
Every deduction carries a concrete "fix" so the revising agent knows exactly
what to change. Warnings cost fewer points: an annotation the detectors can't
see is sometimes deliberate interpretation, not an error.
"""

import argparse
import math
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import complib as C


def score(analysis, spec, strict=False):
    W, H = analysis["width"], analysis["height"]
    diag = math.hypot(W, H)
    px = lambda p: (p[0] * W, p[1] * H)
    nd = lambda a, b: math.hypot(a[0] - b[0], a[1] - b[1]) / diag  # a,b in px

    ded, warn = [], []

    def hit(primitive, points, reason, fix):
        ded.append({"primitive": primitive, "points": round(points, 1),
                    "reason": reason, "fix": fix})

    def soft(primitive, points, reason, fix):
        warn.append({"primitive": primitive, "points": round(points, 1),
                     "reason": reason, "fix": fix})

    prims = spec.get("primitives", [])
    if not prims:
        return {"score": 0, "pass": False,
                "deductions": [{"primitive": "spec", "points": 100,
                                "reason": "empty spec", "fix": "add primitives"}],
                "warnings": []}

    # ---- anchor targets: eyes > face centers > saliency
    targets = []
    for f in analysis.get("faces", []):
        if f.get("eye_center"):
            targets.append(tuple(f["eye_center"]))
        targets.append((f["x"] + f["w"] / 2, f["y"] + f["h"] * 0.4))
    sal = analysis.get("saliency", {})
    if sal.get("peak"):
        targets.append(tuple(sal["peak"]))
    for r in sal.get("regions", []):
        targets.append((r["cx"], r["cy"]))

    det_lines = analysis.get("lines", [])
    horizon = analysis.get("horizon")
    vp = analysis.get("vanishing_point")
    sym = analysis.get("symmetry", {})

    def nearest_line(pts_norm, want_angle):
        """Best detected line for a spec polyline: (avg ndist, angle diff)."""
        best = (9e9, 180)
        samples = [pts_norm[0], pts_norm[-1],
                   ((pts_norm[0][0] + pts_norm[-1][0]) / 2,
                    (pts_norm[0][1] + pts_norm[-1][1]) / 2)]
        for l in det_lines:
            a, b = px((l["x1"], l["y1"])), px((l["x2"], l["y2"]))
            avg = sum(C.point_seg_dist(px(s), a, b) for s in samples) / (3 * diag)
            adiff = C.angle_diff(want_angle, l["angle_deg"])
            if avg < best[0]:
                best = (avg, adiff)
        return best

    # ---- grid choice
    gtype = (spec.get("grid") or {}).get("type", "none")
    grids = analysis.get("grids", {})
    if gtype in ("thirds", "phi") and grids:
        other = "phi" if gtype == "thirds" else "thirds"
        if grids.get(other, 0) - grids.get(gtype, 0) > 0.10:
            hit("grid", 8,
                f"chose {gtype} grid but {other} fits measured features better "
                f"({grids[other]:.2f} vs {grids[gtype]:.2f})",
                f"set grid.type to '{other}'")

    seen_types = {}
    for i, p in enumerate(prims):
        t = p.get("type", "?")
        tag = f"{t}[{i}]"
        seen_types[t] = seen_types.get(t, 0) + 1

        coords = []
        for k in ("x", "y", "pos", "cx", "cy"):
            if k in p:
                coords.append(p[k])
        for pt in p.get("points", []):
            coords += list(pt)
        if any(c < -0.02 or c > 1.02 for c in coords):
            hit(tag, 8, "coordinates outside the frame",
                "clamp all coordinates to [0,1]")
            continue

        if t == "horizon_line":
            if not horizon:
                (soft if not strict else hit)(tag, 5 if not strict else 10,
                    "no horizontal structure detected to support this line",
                    "remove it, or verify visually that a real horizon exists")
                continue
            dy = abs(p["y"] - horizon["y"])
            if dy > 0.015:
                hit(tag, min(30, (dy - 0.015) * 400),
                    f"y={p['y']:.3f} but detected horizontal structure at "
                    f"y={horizon['y']:.3f} (off by {dy:.3f})",
                    f"set y to {horizon['y']:.3f}")
            da = C.angle_diff(p.get("angle", 0), horizon.get("angle_deg", 0))
            if da > 2.5:
                hit(tag, min(10, (da - 2.5) * 2),
                    f"angle {p.get('angle', 0):.1f}° vs detected "
                    f"{horizon['angle_deg']:.1f}°",
                    f"set angle to {horizon['angle_deg']:.1f}")

        elif t == "subject_anchor":
            if not targets:
                soft(tag, 3, "no subject signal detected", "verify visually")
                continue
            d = min(nd(px((p["x"], p["y"])), px(t2)) for t2 in targets)
            if d > 0.03:
                bx, by = min(targets, key=lambda t2: nd(px((p["x"], p["y"])), px(t2)))
                hit(tag, min(25, (d - 0.03) * 300),
                    f"anchor is {d:.3f} diag away from nearest measured subject",
                    f"move anchor toward ({bx:.3f}, {by:.3f})")

        elif t in ("leading_line", "diagonal"):
            if t == "diagonal":
                corners = {"tl": (0, 0), "tr": (1, 0), "bl": (0, 1), "br": (1, 1)}
                pts = [corners.get(p.get("from", "bl"), (0, 1)),
                       corners.get(p.get("to", "tr"), (1, 0))]
            else:
                pts = [tuple(q) for q in p["points"]]
            want_angle = C.seg_angle_deg(pts[0][0] * W, pts[0][1] * H,
                                         pts[-1][0] * W, pts[-1][1] * H)
            avg_d, adiff = nearest_line(pts, want_angle)
            near_vp = vp and C.point_seg_dist(
                px((vp["x"], vp["y"])), px(pts[0]), px(pts[-1])) / diag < 0.06
            if avg_d < 0.05 and adiff < 10:
                extra = max(0.0, avg_d - 0.015) * 150 + max(0.0, adiff - 4) * 0.8
                if extra > 1:
                    hit(tag, min(12, extra),
                        f"tracks a real line but is off by {avg_d:.3f} diag / "
                        f"{adiff:.1f}°",
                        "snap endpoints onto the detected edge")
            elif near_vp:
                pass  # supported by convergence even if no single edge matches
            else:
                (hit if strict else soft)(tag, 12 if strict else 6,
                    "does not track any detected edge or the vanishing point",
                    "trace an actual edge/contour, or drop this line")

        elif t == "vanishing_point":
            if not vp:
                (hit if strict else soft)(tag, 8 if strict else 4,
                    "no converging diagonals detected",
                    "remove, or verify convergence visually")
                continue
            d = nd(px((p["x"], p["y"])), px((vp["x"], vp["y"])))
            if d > 0.04:
                hit(tag, min(15, (d - 0.04) * 250),
                    f"marker is {d:.3f} diag from measured convergence "
                    f"({vp['x']:.3f}, {vp['y']:.3f})",
                    f"move to ({vp['x']:.3f}, {vp['y']:.3f})")

        elif t == "symmetry_axis":
            vertical = p.get("orientation", "vertical") == "vertical"
            measured = sym.get("vertical" if vertical else "horizontal", 0)
            axis = sym.get("vertical_axis_x" if vertical else "horizontal_axis_y", 0.5)
            if measured < 0.55:
                hit(tag, 12,
                    f"claimed symmetry but measured correlation is only "
                    f"{measured:.2f}",
                    "remove the axis or re-examine the image")
            else:
                dp = abs(p.get("pos", 0.5) - axis)
                if dp > 0.02:
                    hit(tag, min(10, (dp - 0.02) * 200),
                        f"axis at {p.get('pos', 0.5):.3f}, measured at {axis:.3f}",
                        f"set pos to {axis:.3f}")

        elif t == "golden_spiral":
            _, pole = C.golden_spiral(p.get("pole", "tr"), p.get("cw", True))
            primary = [(analysis["subject_anchor"]["x"],
                        analysis["subject_anchor"]["y"])] if \
                analysis.get("subject_anchor") else []
            primary += [tuple(f["eye_center"]) for f in analysis.get("faces", [])
                        if f.get("eye_center")]
            if primary:
                d = min(nd(px(pole), px(t2)) for t2 in primary)
                if d > 0.10:
                    hit(tag, min(12, (d - 0.10) * 120),
                        f"spiral pole lands {d:.3f} diag from any measured "
                        f"subject",
                        "change 'pole' corner (tl/tr/bl/br) so it converges "
                        "on the subject")
            if gtype == "thirds":
                soft(tag, 3, "spiral over a thirds grid mixes systems",
                     "use grid.type 'phi' with spirals, or drop the grid")

        elif t in ("frame_in_frame", "polyline", "ellipse"):
            pass  # interpretive primitives: bounds-checked above, judged visually

        else:
            hit(tag, 6, f"unknown primitive type '{t}'",
                "use a type from references/overlay-spec.md")

    if len(prims) > 6:
        hit("spec", 4 * (len(prims) - 6),
            f"{len(prims)} primitives — overlays past ~5 stop teaching",
            "keep the 3-5 strongest claims")
    for t, n in seen_types.items():
        if n > 2 and t not in ("leading_line", "polyline"):
            soft("spec", 3, f"{n}x '{t}' primitives", "one is usually enough")

    total = sum(d["points"] for d in ded) + sum(w["points"] for w in warn)
    return {"score": max(0, round(100 - total, 1)),
            "deductions": ded, "warnings": warn}


if __name__ == "__main__":
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("analysis")
    ap.add_argument("spec")
    ap.add_argument("--threshold", type=float, default=80)
    ap.add_argument("--strict", action="store_true")
    a = ap.parse_args()
    res = score(C.jload(a.analysis), C.jload(a.spec), strict=a.strict)
    res["threshold"] = a.threshold
    res["pass"] = res["score"] >= a.threshold
    print(C.jdump(res))
