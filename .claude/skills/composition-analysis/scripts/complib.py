"""Shared helpers for the composition-analysis skill.

Coordinate convention used EVERYWHERE in this skill:
- Points are normalized to the image: x in [0,1] left->right, y in [0,1] top->bottom.
- Distances for scoring are computed in pixel space and divided by the image
  diagonal ("ndist"), so they are aspect-correct and resolution-independent.
"""

import json
import math

import numpy as np
from PIL import Image, ImageOps

PHI = (1 + 5 ** 0.5) / 2
TEAL = (45, 212, 191)          # #2dd4bf
WHITE = (255, 255, 255)


# ---------------------------------------------------------------- image io

def load_image_rgb(path):
    """Open an image, apply EXIF orientation, return (np.uint8 RGB array, W, H).

    EXIF orientation MUST be baked here: browsers honor it, OpenCV does not,
    and a mismatch silently rotates every overlay 90 degrees.
    """
    im = Image.open(path)
    im = ImageOps.exif_transpose(im)
    im = im.convert("RGB")
    w, h = im.size
    return np.asarray(im), w, h


def analysis_scale(arr, max_long_edge=1024):
    """Downscale for analysis speed. Coordinates are normalized, so this is safe."""
    h, w = arr.shape[:2]
    s = max_long_edge / max(w, h)
    if s >= 1.0:
        return arr, 1.0
    import cv2
    out = cv2.resize(arr, (max(8, int(w * s)), max(8, int(h * s))),
                     interpolation=cv2.INTER_AREA)
    return out, s


# ---------------------------------------------------------------- json io

def _json_default(o):
    if isinstance(o, (np.floating,)):
        return float(o)
    if isinstance(o, (np.integer,)):
        return int(o)
    if isinstance(o, (np.bool_,)):
        return bool(o)
    if isinstance(o, np.ndarray):
        return o.tolist()
    raise TypeError(f"not JSON serializable: {type(o)}")


def jdump(obj, path=None, indent=2):
    if path is None:
        return json.dumps(obj, indent=indent, default=_json_default)
    with open(path, "w") as f:
        json.dump(obj, f, indent=indent, default=_json_default)


def jload(path):
    with open(path) as f:
        return json.load(f)


# ---------------------------------------------------------------- geometry

def seg_angle_deg(x1, y1, x2, y2):
    """Angle of a segment in degrees, folded into [-90, 90). 0 = horizontal."""
    a = math.degrees(math.atan2(y2 - y1, x2 - x1))
    while a >= 90:
        a -= 180
    while a < -90:
        a += 180
    return a


def angle_diff(a, b):
    """Smallest difference between two undirected line angles in degrees."""
    d = abs(a - b) % 180
    return min(d, 180 - d)


def point_seg_dist(p, a, b):
    """Distance from point p to segment ab. All args are (x, y) tuples in the
    SAME space (call with pixel coords for aspect-correct results)."""
    px, py = p
    ax, ay = a
    bx, by = b
    dx, dy = bx - ax, by - ay
    L2 = dx * dx + dy * dy
    if L2 <= 1e-12:
        return math.hypot(px - ax, py - ay)
    t = max(0.0, min(1.0, ((px - ax) * dx + (py - ay) * dy) / L2))
    qx, qy = ax + t * dx, ay + t * dy
    return math.hypot(px - qx, py - qy)


def line_intersection(l1, l2):
    """Intersection of two infinite lines given as segments ((x1,y1),(x2,y2)).
    Returns (x, y) or None if near-parallel."""
    (x1, y1), (x2, y2) = l1
    (x3, y3), (x4, y4) = l2
    d = (x1 - x2) * (y3 - y4) - (y1 - y2) * (x3 - x4)
    if abs(d) < 1e-9:
        return None
    a = x1 * y2 - y1 * x2
    b = x3 * y4 - y3 * x4
    return ((a * (x3 - x4) - (x1 - x2) * b) / d,
            (a * (y3 - y4) - (y1 - y2) * b) / d)


# ---------------------------------------------------------------- spiral

def golden_spiral(pole="tr", cw=True, n=400, turns=2.0):
    """Golden (logarithmic) spiral stretched to the unit square.

    pole: which corner region the spiral converges toward: tl|tr|bl|br
    cw:   winding direction (visual chirality; flip if the sweep should
          enter the frame from the other side)
    Returns (points, pole_xy) with everything normalized to [0,1]^2.
    The pole is the convergence point — scoring compares it to the subject.
    """
    b = math.log(PHI) / (math.pi / 2)
    tmax = turns * 2 * math.pi
    ts = [tmax * i / (n - 1) for i in range(n)]
    sgn = 1.0 if cw else -1.0
    pts = [(math.exp(b * t) * math.cos(t),
            sgn * math.exp(b * t) * math.sin(t)) for t in ts]
    xs = [p[0] for p in pts]
    ys = [p[1] for p in pts]
    minx, maxx = min(xs), max(xs)
    miny, maxy = min(ys), max(ys)
    spanx = (maxx - minx) or 1.0
    spany = (maxy - miny) or 1.0
    pts = [((x - minx) / spanx, (y - miny) / spany) for x, y in pts]
    px, py = (0 - minx) / spanx, (0 - miny) / spany  # pole = spiral origin

    want_right = pole in ("tr", "br")
    want_bottom = pole in ("bl", "br")
    flip_x = (px > 0.5) != want_right
    flip_y = (py > 0.5) != want_bottom
    if flip_x:
        pts = [(1 - x, y) for x, y in pts]
        px = 1 - px
    if flip_y:
        pts = [(x, 1 - y) for x, y in pts]
        py = 1 - py
    return pts, (px, py)


GRID_LINES = {"thirds": (1 / 3, 2 / 3), "phi": (1 - 1 / PHI, 1 / PHI)}


def grid_points(kind):
    """Power points (line intersections) of a grid, normalized."""
    g = GRID_LINES[kind]
    return [(gx, gy) for gx in g for gy in g]
