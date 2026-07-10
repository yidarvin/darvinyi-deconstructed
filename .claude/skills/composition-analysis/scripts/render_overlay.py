#!/usr/bin/env python3
"""Render an overlay spec onto its photograph -> composite PNG for critique.

Usage:
    python3 render_overlay.py IMAGE SPEC.json -o composite.png [--width 1600]

This is the fast in-loop renderer. It draws the SAME normalized-coordinate
primitives the site's OverlayRenderer component draws, so a spec that looks
right here looks right on the site.
"""

import argparse
import math
import os
import sys

from PIL import Image, ImageDraw, ImageFont, ImageOps

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import complib as C

TEAL = C.TEAL + (235,)
TEAL_SOFT = C.TEAL + (150,)
GRID = (255, 255, 255, 95)
LABEL_BG = (10, 12, 14, 170)
LABEL_FG = (235, 250, 247, 255)


def find_font(size):
    for p in ("/usr/share/fonts/truetype/dejavu/DejaVuSansMono.ttf",
              "/usr/share/fonts/truetype/jetbrains-mono/JetBrainsMono-Regular.ttf",
              "/System/Library/Fonts/Menlo.ttc",
              "/Library/Fonts/JetBrainsMono-Regular.ttf"):
        if os.path.exists(p):
            try:
                return ImageFont.truetype(p, size)
            except Exception:
                pass
    try:
        return ImageFont.load_default(size=size)
    except TypeError:
        return ImageFont.load_default()


def dashed(d, p1, p2, fill, width, dash=12, gap=9):
    x1, y1 = p1
    x2, y2 = p2
    L = math.hypot(x2 - x1, y2 - y1)
    if L < 1e-6:
        return
    ux, uy = (x2 - x1) / L, (y2 - y1) / L
    t = 0.0
    while t < L:
        t2 = min(L, t + dash)
        d.line([(x1 + ux * t, y1 + uy * t), (x1 + ux * t2, y1 + uy * t2)],
               fill=fill, width=width)
        t = t2 + gap


def arrow(d, p1, p2, fill, width):
    d.line([p1, p2], fill=fill, width=width)
    x1, y1 = p1
    x2, y2 = p2
    L = math.hypot(x2 - x1, y2 - y1)
    if L < 1e-6:
        return
    ux, uy = (x2 - x1) / L, (y2 - y1) / L
    s = max(10, width * 4.5)
    left = (x2 - ux * s - uy * s * 0.55, y2 - uy * s + ux * s * 0.55)
    right = (x2 - ux * s + uy * s * 0.55, y2 - uy * s - ux * s * 0.55)
    d.polygon([p2, left, right], fill=fill)


def label(d, text, xy, font, anchor_above=True):
    if not text:
        return
    text = str(text).upper()
    bb = d.textbbox((0, 0), text, font=font)
    tw, th = bb[2] - bb[0], bb[3] - bb[1]
    pad = max(3, th // 3)
    x, y = xy
    if anchor_above:
        y = y - th - 3 * pad
    x = min(max(2, x), d._image.size[0] - tw - 2 * pad - 2)
    y = min(max(2, y), d._image.size[1] - th - 2 * pad - 2)
    d.rectangle([x, y, x + tw + 2 * pad, y + th + 2 * pad], fill=LABEL_BG)
    d.text((x + pad, y + pad - bb[1]), text, font=font, fill=LABEL_FG)


def render(image_path, spec, out_path, width=1600):
    im = Image.open(image_path)
    im = ImageOps.exif_transpose(im).convert("RGB")
    W0, H0 = im.size
    if width and W0 != width:
        im = im.resize((width, int(H0 * width / W0)), Image.LANCZOS)
    W, H = im.size
    ov = Image.new("RGBA", (W, H), (0, 0, 0, 0))
    d = ImageDraw.Draw(ov)
    lw = max(2, W // 550)
    lw2 = max(2, W // 800)
    font = find_font(max(13, W // 85))

    gtype = (spec.get("grid") or {}).get("type", "none")
    if gtype in C.GRID_LINES:
        for g in C.GRID_LINES[gtype]:
            dashed(d, (g * W, 0), (g * W, H), GRID, lw2)
            dashed(d, (0, g * H), (W, g * H), GRID, lw2)

    for p in spec.get("primitives", []):
        t = p.get("type")
        if t == "horizon_line":
            y = p["y"] * H
            dy = math.tan(math.radians(p.get("angle", 0))) * (W / 2)
            d.line([(0, y - dy), (W, y + dy)], fill=TEAL, width=lw)
            label(d, p.get("label", "horizon"), (0.02 * W, y), font)
        elif t == "leading_line":
            pts = [(x * W, y * H) for x, y in p["points"]]
            for a, b in zip(pts, pts[1:-1] or []):
                d.line([a, b], fill=TEAL, width=lw)
            if p.get("arrow", True) and len(pts) >= 2:
                arrow(d, pts[-2], pts[-1], TEAL, lw)
            elif len(pts) >= 2:
                d.line([pts[-2], pts[-1]], fill=TEAL, width=lw)
            label(d, p.get("label"), pts[0], font)
        elif t == "vanishing_point":
            x, y = p["x"] * W, p["y"] * H
            r = max(7, W // 130)
            d.ellipse([x - r, y - r, x + r, y + r], outline=TEAL, width=lw)
            d.line([(x - 2 * r, y), (x + 2 * r, y)], fill=TEAL, width=lw2)
            d.line([(x, y - 2 * r), (x, y + 2 * r)], fill=TEAL, width=lw2)
            label(d, p.get("label", "vp"), (x + 2.4 * r, y - r), font, False)
        elif t == "subject_anchor":
            x, y = p["x"] * W, p["y"] * H
            r = p.get("r", 0.035) * min(W, H)
            d.ellipse([x - r, y - r, x + r, y + r], outline=TEAL, width=lw)
            for dx, dy in ((1, 0), (-1, 0), (0, 1), (0, -1)):
                d.line([(x + dx * r * 0.6, y + dy * r * 0.6),
                        (x + dx * r * 1.4, y + dy * r * 1.4)], fill=TEAL, width=lw2)
            label(d, p.get("label", "subject"), (x - r, y - r - 4), font)
        elif t == "symmetry_axis":
            if p.get("orientation", "vertical") == "vertical":
                x = p["pos"] * W
                dashed(d, (x, 0), (x, H), TEAL_SOFT, lw, dash=18, gap=12)
                label(d, p.get("label", "axis"), (x + 6, 0.03 * H), font, False)
            else:
                y = p["pos"] * H
                dashed(d, (0, y), (W, y), TEAL_SOFT, lw, dash=18, gap=12)
                label(d, p.get("label", "axis"), (0.02 * W, y), font)
        elif t == "golden_spiral":
            pts, pole = C.golden_spiral(p.get("pole", "tr"), p.get("cw", True))
            d.line([(x * W, y * H) for x, y in pts], fill=TEAL, width=lw,
                   joint="curve")
            px, py = pole[0] * W, pole[1] * H
            r = max(4, W // 300)
            d.ellipse([px - r, py - r, px + r, py + r], fill=TEAL)
        elif t == "diagonal":
            corners = {"tl": (0, 0), "tr": (W, 0), "bl": (0, H), "br": (W, H)}
            a = corners.get(p.get("from", "bl"), (0, H))
            b = corners.get(p.get("to", "tr"), (W, 0))
            dashed(d, a, b, TEAL_SOFT, lw2, dash=16, gap=10)
        elif t == "frame_in_frame":
            x, y = p["x"] * W, p["y"] * H
            w2, h2 = p["w"] * W, p["h"] * H
            s = min(w2, h2) * 0.18
            for cx, cy, sx, sy in ((x, y, 1, 1), (x + w2, y, -1, 1),
                                   (x, y + h2, 1, -1), (x + w2, y + h2, -1, -1)):
                d.line([(cx, cy), (cx + sx * s, cy)], fill=TEAL, width=lw)
                d.line([(cx, cy), (cx, cy + sy * s)], fill=TEAL, width=lw)
            label(d, p.get("label"), (x, y - 4), font)
        elif t == "polyline":
            pts = [(x * W, y * H) for x, y in p["points"]]
            d.line(pts, fill=TEAL, width=lw, joint="curve")
            label(d, p.get("label"), pts[0], font)
        elif t == "ellipse":
            cx, cy = p["cx"] * W, p["cy"] * H
            rx, ry = p["rx"] * W, p["ry"] * H
            d.ellipse([cx - rx, cy - ry, cx + rx, cy + ry], outline=TEAL, width=lw)
            label(d, p.get("label"), (cx - rx, cy - ry - 4), font)

    out = Image.alpha_composite(im.convert("RGBA"), ov).convert("RGB")
    out.save(out_path)
    return out_path


if __name__ == "__main__":
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("image")
    ap.add_argument("spec")
    ap.add_argument("-o", "--out", required=True)
    ap.add_argument("--width", type=int, default=1600)
    a = ap.parse_args()
    render(a.image, C.jload(a.spec), a.out, a.width)
    print(f"wrote {a.out}")
