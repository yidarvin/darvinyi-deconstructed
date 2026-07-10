#!/usr/bin/env python3
"""Normalize source photographs for the overlay pipeline.

Usage:
    python3 ingest.py SRC(file|dir) OUT_DIR [--long-edge 1600] [--manifest manifest.json]

Why this exists: analysis coordinates and site rendering must agree. That only
holds if every image has EXIF orientation baked in, one color mode, and one
known size. Camera settings (when present) are recorded into the manifest
BEFORE metadata is dropped by re-encoding — for modern digital work this is
the "settings" field; for scans of film-era work EXIF is scanner junk, so
settings come from research, not from here.
"""

import argparse
import hashlib
import json
import os

from PIL import Image, ImageOps
from PIL.ExifTags import TAGS

EXTS = {".jpg", ".jpeg", ".png", ".tif", ".tiff", ".webp"}
WANTED = {"Model", "LensModel", "FNumber", "ExposureTime",
          "ISOSpeedRatings", "PhotographicSensitivity", "FocalLength",
          "DateTimeOriginal", "Make"}


def read_exif(im):
    out = {}
    try:
        exif = im.getexif()
        merged = dict(exif)
        try:
            merged.update(dict(exif.get_ifd(0x8769)))  # Exif sub-IFD
        except Exception:
            pass
        for k, v in merged.items():
            name = TAGS.get(k, str(k))
            if name in WANTED:
                out[name] = str(v).strip()
    except Exception:
        pass
    return out


def ingest_one(path, out_dir, long_edge):
    im = Image.open(path)
    exif = read_exif(im)
    im = ImageOps.exif_transpose(im).convert("RGB")
    w, h = im.size
    if max(w, h) > long_edge:
        s = long_edge / max(w, h)
        im = im.resize((int(w * s), int(h * s)), Image.LANCZOS)
    stem = os.path.splitext(os.path.basename(path))[0]
    out_path = os.path.join(out_dir, stem + ".jpg")
    im.save(out_path, "JPEG", quality=92)
    with open(out_path, "rb") as f:
        sha = hashlib.sha1(f.read()).hexdigest()[:8]
    return {"file": os.path.basename(out_path),
            "width": im.size[0], "height": im.size[1],
            "sha1": sha, "source": os.path.basename(path), "exif": exif}


def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("src")
    ap.add_argument("out_dir")
    ap.add_argument("--long-edge", type=int, default=1600)
    ap.add_argument("--manifest", default=None)
    a = ap.parse_args()
    os.makedirs(a.out_dir, exist_ok=True)

    if os.path.isdir(a.src):
        files = sorted(os.path.join(a.src, f) for f in os.listdir(a.src)
                       if os.path.splitext(f)[1].lower() in EXTS)
    else:
        files = [a.src]

    rows = []
    for f in files:
        try:
            rows.append(ingest_one(f, a.out_dir, a.long_edge))
            print("ok  ", rows[-1]["file"], f"{rows[-1]['width']}x{rows[-1]['height']}")
        except Exception as e:
            print("FAIL", f, e)

    if a.manifest:
        existing = []
        if os.path.exists(a.manifest):
            with open(a.manifest) as fh:
                existing = json.load(fh)
        seen = {r["file"] for r in rows}
        existing = [r for r in existing if r["file"] not in seen]
        with open(a.manifest, "w") as fh:
            json.dump(existing + rows, fh, indent=2)
        print(f"manifest: {a.manifest} ({len(existing) + len(rows)} entries)")


if __name__ == "__main__":
    main()
