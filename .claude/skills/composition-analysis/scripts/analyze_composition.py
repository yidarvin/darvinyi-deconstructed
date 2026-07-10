#!/usr/bin/env python3
"""Measure the compositional geometry of a photograph and emit JSON ground truth.

Usage:
    python3 analyze_composition.py IMAGE [-o out.json] [--no-suggest]

Everything downstream (drafting, scoring, revising overlays) keys off this
output. Coordinates are normalized (x,y in [0,1], y down). See complib.py.
"""

import argparse
import math
import os
import sys

import cv2
import numpy as np

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import complib as C


# ------------------------------------------------------------------ lines

def detect_lines(gray, w, h):
    v = float(np.median(gray))
    lo, hi = int(max(0, 0.66 * v)), int(min(255, 1.33 * v))
    edges = cv2.Canny(cv2.GaussianBlur(gray, (3, 3), 0), lo, hi)
    edge_density = float(edges.mean() / 255.0)

    min_len = int(0.10 * min(w, h))
    raw = cv2.HoughLinesP(edges, 1, np.pi / 180,
                          threshold=max(40, int(0.06 * min(w, h))),
                          minLineLength=min_len,
                          maxLineGap=int(0.02 * min(w, h)))
    lines = []
    if raw is not None:
        diag = math.hypot(w, h)
        for x1, y1, x2, y2 in raw[:, 0, :]:
            a = C.seg_angle_deg(x1, y1, x2, y2)
            L = math.hypot(x2 - x1, y2 - y1) / diag
            lines.append({"x1": x1 / w, "y1": y1 / h, "x2": x2 / w, "y2": y2 / h,
                          "angle_deg": a, "length": L})
        lines.sort(key=lambda l: -l["length"])
        # greedy de-dup: drop near-parallel lines whose midpoints almost touch
        kept = []
        for l in lines:
            mx, my = (l["x1"] + l["x2"]) / 2, (l["y1"] + l["y2"]) / 2
            dup = False
            for k in kept:
                kmx, kmy = (k["x1"] + k["x2"]) / 2, (k["y1"] + k["y2"]) / 2
                if C.angle_diff(l["angle_deg"], k["angle_deg"]) < 4 and \
                        math.hypot(mx - kmx, my - kmy) < 0.05:
                    dup = True
                    break
            if not dup:
                kept.append(l)
            if len(kept) >= 12:
                break
        lines = kept
    for l in lines:
        a = abs(l["angle_deg"])
        l["class"] = "horizontal" if a <= 8 else "vertical" if a >= 82 else "diagonal"
    return lines, edge_density


# ---------------------------------------------------------------- horizon

def detect_horizon(gray, lines, h):
    """Sky/ground luminance split cross-checked against Hough horizontals.
    May land on any dominant horizontal structure, not only a literal horizon."""
    rows = gray.mean(axis=1)
    k = max(5, (h // 40) | 1)
    rows_s = np.convolve(rows, np.ones(k) / k, mode="same")
    d = np.abs(np.gradient(rows_s))
    lo, hi = int(0.10 * h), int(0.90 * h)
    band = d[lo:hi]
    if band.size == 0:
        return None
    yi = int(np.argmax(band)) + lo
    conf_g = float(np.clip((d[yi] - band.mean()) / (4 * band.std() + 1e-9), 0, 1))
    y_g = yi / h

    horiz = [l for l in lines if l["class"] == "horizontal"]
    for l in horiz:
        ym = (l["y1"] + l["y2"]) / 2
        if abs(ym - y_g) < 0.04:
            return {"y": ym, "angle_deg": l["angle_deg"],
                    "confidence": min(1.0, conf_g + 0.35), "method": "both"}
    if conf_g > 0.25:
        return {"y": y_g, "angle_deg": 0.0, "confidence": conf_g,
                "method": "gradient"}
    long_h = [l for l in horiz if l["length"] > 0.35 and 0.15 < (l["y1"] + l["y2"]) / 2 < 0.85]
    if long_h:
        l = long_h[0]
        return {"y": (l["y1"] + l["y2"]) / 2, "angle_deg": l["angle_deg"],
                "confidence": min(0.75, 0.4 + l["length"] * 0.5), "method": "hough"}
    return None


# ---------------------------------------------------------- vanishing point

def detect_vp(lines, w, h):
    diags = [l for l in lines if 15 < abs(l["angle_deg"]) < 75]
    if len(diags) < 2:
        return None
    pts = []
    for i in range(len(diags)):
        for j in range(i + 1, len(diags)):
            a, b = diags[i], diags[j]
            if C.angle_diff(a["angle_deg"], b["angle_deg"]) < 8:
                continue
            p = C.line_intersection(((a["x1"] * w, a["y1"] * h), (a["x2"] * w, a["y2"] * h)),
                                    ((b["x1"] * w, b["y1"] * h), (b["x2"] * w, b["y2"] * h)))
            if p and -0.5 * w <= p[0] <= 1.5 * w and -0.5 * h <= p[1] <= 1.5 * h:
                pts.append(p)
    if not pts:
        return None
    pts = np.array(pts)
    c = np.median(pts, axis=0)
    r = 0.10 * math.hypot(w, h)
    sel = pts
    for _ in range(8):
        m = np.hypot(pts[:, 0] - c[0], pts[:, 1] - c[1]) < r
        if not m.any():
            break
        sel = pts[m]
        c = sel.mean(axis=0)
    inliers = int(len(sel))
    if inliers < 2:
        return None
    return {"x": float(np.clip(c[0] / w, -0.25, 1.25)),
            "y": float(np.clip(c[1] / h, -0.25, 1.25)),
            "inliers": inliers, "confidence": min(1.0, inliers / 5)}


# ---------------------------------------------------------------- saliency

def spectral_saliency(gray):
    h, w = gray.shape
    s = 64 / max(h, w)
    small = cv2.resize(gray, (max(8, int(w * s)), max(8, int(h * s))))
    f = np.fft.fft2(small.astype(np.float64))
    logmag = np.log1p(np.abs(f))
    sr = logmag - cv2.blur(logmag, (3, 3))
    sal = np.abs(np.fft.ifft2(np.exp(sr) * np.exp(1j * np.angle(f)))) ** 2
    sal = cv2.GaussianBlur(sal, (9, 9), 2.5)
    sal = (sal - sal.min()) / (np.ptp(sal) + 1e-9)
    return cv2.resize(sal, (w, h))


def saliency_features(gray, w, h):
    sal = spectral_saliency(gray)
    yi, xi = np.unravel_index(int(np.argmax(sal)), sal.shape)
    peak = [xi / w, yi / h]
    mask = (sal > 0.6).astype(np.uint8)
    num, _, stats, cents = cv2.connectedComponentsWithStats(mask, 8)
    regions = []
    for i in range(1, num):
        x, y, bw, bh, area = stats[i]
        frac = area / (w * h)
        if frac < 0.003:
            continue
        regions.append({"cx": cents[i][0] / w, "cy": cents[i][1] / h,
                        "x": x / w, "y": y / h, "w": bw / w, "h": bh / h,
                        "area_frac": float(frac)})
    regions.sort(key=lambda r: -r["area_frac"])
    return {"peak": peak, "regions": regions[:3]}


# ------------------------------------------------------------------ faces

def detect_faces(gray, w, h):
    out = []
    try:
        base = cv2.data.haarcascades
        fc = cv2.CascadeClassifier(base + "haarcascade_frontalface_default.xml")
        pc = cv2.CascadeClassifier(base + "haarcascade_profileface.xml")
        ec = cv2.CascadeClassifier(base + "haarcascade_eye.xml")
        mins = (max(24, int(0.05 * min(w, h))),) * 2
        rects = list(fc.detectMultiScale(gray, 1.1, 5, minSize=mins))
        rects += list(pc.detectMultiScale(gray, 1.1, 5, minSize=mins))
        for (x, y, fw, fh) in rects:
            roi = gray[y:y + int(fh * 0.65), x:x + fw]
            eyes = []
            for (ex, ey, ew, eh) in ec.detectMultiScale(roi, 1.1, 6)[:2]:
                eyes.append([(x + ex + ew / 2) / w, (y + ey + eh / 2) / h])
            eye_center = [sum(p[0] for p in eyes) / len(eyes),
                          sum(p[1] for p in eyes) / len(eyes)] if eyes else None
            out.append({"x": x / w, "y": y / h, "w": fw / w, "h": fh / h,
                        "eyes": eyes, "eye_center": eye_center})
    except Exception:
        pass
    out.sort(key=lambda f: -(f["w"] * f["h"]))
    return out[:4]


# --------------------------------------------------------------- symmetry

def _ncc(a, b):
    a = a - a.mean()
    b = b - b.mean()
    d = math.sqrt(float((a * a).sum()) * float((b * b).sum())) + 1e-9
    return float((a * b).sum() / d)


def symmetry(gray):
    s = cv2.GaussianBlur(cv2.resize(gray, (160, 160)).astype(np.float64), (5, 5), 0)
    best_v, best_x = -1.0, 0.5
    for off in range(-20, 21, 2):
        c = 80 + off
        half = min(c, 160 - c)
        if half < 40:
            continue
        v = _ncc(s[:, c - half:c], np.fliplr(s[:, c:c + half]))
        if v > best_v:
            best_v, best_x = v, c / 160
    best_h, best_y = -1.0, 0.5
    for off in range(-20, 21, 2):
        c = 80 + off
        half = min(c, 160 - c)
        if half < 40:
            continue
        v = _ncc(s[c - half:c, :], np.flipud(s[c:c + half, :]))
        if v > best_h:
            best_h, best_y = v, c / 160
    return {"vertical": (best_v + 1) / 2, "vertical_axis_x": best_x,
            "horizontal": (best_h + 1) / 2, "horizontal_axis_y": best_y}


# ------------------------------------------------------------------ grids

def grid_fit(anchor, horizon, vp, w, h):
    feats = []
    if anchor:
        feats.append(("point", (anchor["x"], anchor["y"]), 1.0))
    if horizon and horizon["confidence"] > 0.4:
        feats.append(("y", horizon["y"], 0.8))
    if vp and vp["confidence"] > 0.5 and 0 <= vp["x"] <= 1 and 0 <= vp["y"] <= 1:
        feats.append(("point", (vp["x"], vp["y"]), 0.6))
    diag = math.hypot(w, h)
    out = {}
    for kind in ("thirds", "phi"):
        glines = C.GRID_LINES[kind]
        gpts = C.grid_points(kind)
        num = den = 0.0
        for typ, val, wt in feats:
            if typ == "y":
                d = min(abs(val - g) for g in glines)
                s = max(0.0, 1 - d / 0.12)
            else:
                px, py = val[0] * w, val[1] * h
                d = min(math.hypot(px - gx * w, py - gy * h) for gx, gy in gpts) / diag
                s = max(0.0, 1 - d / 0.15)
            num += wt * s
            den += wt
        out[kind] = num / den if den else 0.0
    out["best"] = "thirds" if out["thirds"] >= out["phi"] else "phi"
    return out


# ---------------------------------------------------------------- suggest

def suggest(res):
    prims = []
    anchor = res.get("subject_anchor")
    horizon = res.get("horizon")
    vp = res.get("vanishing_point")
    sym = res.get("symmetry", {})
    lines = res.get("lines", [])

    faces = res.get("faces", [])
    portrait = any(f["w"] * f["h"] > 0.02 for f in faces)
    if horizon and horizon["confidence"] >= 0.35 and not (
            portrait and horizon["method"] == "gradient"):
        prims.append({"type": "horizon_line", "y": round(horizon["y"], 3),
                      "angle": round(horizon["angle_deg"], 1),
                      "label": "horizon",
                      "confidence": round(horizon["confidence"], 2),
                      "why": f"luminance split / dominant horizontal ({horizon['method']})"})
    if anchor:
        prims.append({"type": "subject_anchor", "x": round(anchor["x"], 3),
                      "y": round(anchor["y"], 3), "r": 0.035,
                      "label": anchor["source"].replace("_", " "),
                      "confidence": 0.9 if "face" in anchor["source"] else 0.6,
                      "why": f"strongest subject signal: {anchor['source']}"})
    vp_min = 0.8 if portrait else 0.5
    min_lead = 0.35 if portrait else 0.0
    if vp and vp["confidence"] >= vp_min and (not portrait or vp["inliers"] >= 5):
        prims.append({"type": "vanishing_point", "x": round(vp["x"], 3),
                      "y": round(vp["y"], 3),
                      "confidence": round(vp["confidence"], 2),
                      "why": f"{vp['inliers']} converging diagonals"})
        for l in [l for l in lines if l["class"] == "diagonal" and l["length"] >= min_lead][:2]:
            prims.append({"type": "leading_line",
                          "points": [[round(l["x1"], 3), round(l["y1"], 3)],
                                     [round(l["x2"], 3), round(l["y2"], 3)]],
                          "arrow": True, "label": "leading line",
                          "confidence": round(min(1.0, l["length"] * 2), 2),
                          "why": "strong diagonal converging on VP"})
    elif lines and lines[0]["class"] == "diagonal" and lines[0]["length"] > max(0.3, min_lead):
        l = lines[0]
        prims.append({"type": "leading_line",
                      "points": [[round(l["x1"], 3), round(l["y1"], 3)],
                                 [round(l["x2"], 3), round(l["y2"], 3)]],
                      "arrow": True, "label": "leading line",
                      "confidence": round(min(1.0, l["length"] * 2), 2),
                      "why": "dominant diagonal"})
    if sym.get("vertical", 0) > 0.78:
        prims.append({"type": "symmetry_axis", "orientation": "vertical",
                      "pos": round(sym["vertical_axis_x"], 3),
                      "confidence": round(sym["vertical"], 2),
                      "why": "strong left/right mirror correlation"})
    prims.sort(key=lambda p: -p.get("confidence", 0))
    return prims[:4]


# ------------------------------------------------------------------ main

def analyze(path, do_suggest=True, analysis_long_edge=1024):
    arr, W, H = C.load_image_rgb(path)
    small, _ = C.analysis_scale(arr, analysis_long_edge)
    gray = cv2.cvtColor(small, cv2.COLOR_RGB2GRAY)
    h, w = gray.shape

    lines, edge_density = detect_lines(gray, w, h)
    horizon = detect_horizon(gray, lines, h)
    vp = detect_vp(lines, w, h)
    sal = saliency_features(gray, w, h)
    faces = detect_faces(gray, w, h)
    sym = symmetry(gray)

    if faces and faces[0]["eye_center"]:
        anchor = {"x": faces[0]["eye_center"][0], "y": faces[0]["eye_center"][1],
                  "source": "face_eyes"}
    elif faces:
        f = faces[0]
        anchor = {"x": f["x"] + f["w"] / 2, "y": f["y"] + f["h"] * 0.4,
                  "source": "face"}
    else:
        anchor = {"x": sal["peak"][0], "y": sal["peak"][1], "source": "saliency"}

    grids = grid_fit(anchor, horizon, vp, w, h)

    small_rgb = cv2.resize(small, (min(w, 200), min(h, 200)))
    samp = small_rgb.reshape(-1, 3).astype(np.float32)
    if len(samp) > 6000:
        samp = samp[np.random.default_rng(0).choice(len(samp), 6000, replace=False)]
    crit = (cv2.TERM_CRITERIA_EPS + cv2.TERM_CRITERIA_MAX_ITER, 20, 1.0)
    _, labels, centers = cv2.kmeans(samp, 5, None, crit, 3, cv2.KMEANS_PP_CENTERS)
    counts = np.bincount(labels.ravel(), minlength=5)
    order = np.argsort(-counts)
    palette = ["#%02x%02x%02x" % tuple(int(c) for c in centers[i]) for i in order]

    res = {
        "version": 1,
        "image": os.path.basename(path),
        "width": W, "height": H, "aspect": round(W / H, 4),
        "tonal": {"mean": float(gray.mean() / 255), "std": float(gray.std() / 255),
                  "p05": float(np.percentile(gray, 5) / 255),
                  "p95": float(np.percentile(gray, 95) / 255),
                  "edge_density": edge_density},
        "palette": palette,
        "lines": lines,
        "horizon": horizon,
        "vanishing_point": vp,
        "saliency": sal,
        "faces": faces,
        "symmetry": sym,
        "subject_anchor": anchor,
        "grids": grids,
    }
    if do_suggest:
        res["suggested_primitives"] = suggest(res)
    return res


if __name__ == "__main__":
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("image")
    ap.add_argument("-o", "--out")
    ap.add_argument("--no-suggest", action="store_true")
    a = ap.parse_args()
    res = analyze(a.image, do_suggest=not a.no_suggest)
    if a.out:
        C.jdump(res, a.out)
        print(f"wrote {a.out}")
    else:
        print(C.jdump(res))
