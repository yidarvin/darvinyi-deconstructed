#!/usr/bin/env python3
"""Advance one photographer stage and regenerate the derived queue files."""
from __future__ import annotations

import json
import os
import subprocess
import sys
import tempfile
import stat
from pathlib import Path

from pipeline_policy import (
    LIMITED_CHAPTER_DISCLOSURE,
    LIMITED_SOURCE_MARKER,
    is_limited,
    minimum_images,
    required_images,
)

ROOT = Path(__file__).resolve().parent.parent
NEXT = {"pending": "sourced", "sourced": "built", "built": "approved"}


def count(path: Path, suffix: str) -> int:
    return sum(1 for item in path.glob(f"*{suffix}") if item.is_file())


def atomic_json(path: Path, data: dict) -> None:
    fd, tmp_name = tempfile.mkstemp(prefix=f".{path.name}.", dir=path.parent)
    try:
        mode = stat.S_IMODE(path.stat().st_mode) if path.exists() else 0o644
        os.fchmod(fd, mode)
        with os.fdopen(fd, "w", encoding="utf-8") as handle:
            json.dump(data, handle, indent=1, ensure_ascii=False)
            handle.write("\n")
            handle.flush()
            os.fsync(handle.fileno())
        os.replace(tmp_name, path)
    finally:
        if os.path.exists(tmp_name):
            os.unlink(tmp_name)


def main(argv: list[str]) -> int:
    args = argv[1:]
    limited = "--limited" in args
    args = [arg for arg in args if arg != "--limited"]
    if len(args) != 2 or args[0] in {"-h", "--help"}:
        print("usage: python3 scripts/set_stage.py <slug> <sourced|built|approved> [--limited]")
        return 0 if args and args[0] in {"-h", "--help"} else 2
    slug, target = args
    if limited and target != "sourced":
        print("--limited is valid only for the sourced target", file=sys.stderr)
        return 2
    path = ROOT / "data" / "registry.json"
    original = path.read_text(encoding="utf-8")
    data = json.loads(original)
    entry = next((item for item in data["photographers"] if item.get("slug") == slug), None)
    if entry is None:
        print(f"unknown photographer: {slug}", file=sys.stderr)
        return 1
    current = entry.get("stage")
    limited_same_stage = limited and current == "sourced" and target == "sourced" and not is_limited(entry)
    if NEXT.get(current) != target and not limited_same_stage:
        print(f"illegal stage transition for {slug}: {current} -> {target}", file=sys.stderr)
        return 1
    minimum = minimum_images(entry)
    if target == "sourced":
        raw = ROOT / "raw" / slug
        images = sum(1 for p in raw.iterdir() if p.is_file() and p.suffix.lower() in {".jpg", ".jpeg", ".png", ".tif", ".tiff", ".webp"}) if raw.is_dir() else 0
        if limited:
            base = ROOT / "content" / slug
            needed = base / "NEEDED.md"
            sources = base / "sources.md"
            needed_text = needed.read_text(encoding="utf-8").lower() if needed.exists() else ""
            if images >= minimum:
                print(f"refusing {slug} --limited: {images} images already meet minimum {minimum}", file=sys.stderr)
                return 1
            if not sources.exists() or LIMITED_SOURCE_MARKER not in needed_text:
                print(
                    f"refusing {slug} --limited: sources.md and NEEDED.md marker "
                    f"'{LIMITED_SOURCE_MARKER}' are required",
                    file=sys.stderr,
                )
                return 1
            entry["sourceMode"] = "limited"
        elif images < minimum:
            print(f"refusing {slug} -> sourced: {images} raw images, requires {minimum}", file=sys.stderr)
            return 1
    elif target == "built":
        base = ROOT / "content" / slug
        content_chapter = base / "chapter.mdx"
        site_chapter = ROOT / "src" / "chapters" / f"{slug}.mdx"
        counts = {
            "images": count(base / "images", ".jpg"),
            "analysis": count(base / "analysis", ".analysis.json"),
            "overlays": count(base / "overlays", ".json"),
            "proofs": count(base / "proofs", ".png"),
        }
        required = required_images(entry)
        complete = all(value >= required for value in counts.values()) and len(set(counts.values())) == 1
        synced = content_chapter.exists() and site_chapter.exists() and content_chapter.read_bytes() == site_chapter.read_bytes()
        disclosed = not is_limited(entry) or (
            content_chapter.exists() and LIMITED_CHAPTER_DISCLOSURE in content_chapter.read_text(encoding="utf-8")
        )
        manifest = base / "manifest.json"
        manifest_valid = manifest.exists()
        if manifest_valid and is_limited(entry):
            try:
                manifest_rows = json.loads(manifest.read_text(encoding="utf-8"))
                manifest_valid = isinstance(manifest_rows, list) and len(manifest_rows) == counts["images"]
            except (OSError, json.JSONDecodeError):
                manifest_valid = False
        if is_limited(entry) and counts["images"] >= minimum:
            complete = False
        if not complete or not synced or not disclosed or not manifest_valid:
            print(f"refusing {slug} -> built: incomplete artifacts {counts} or unsynchronized chapter", file=sys.stderr)
            return 1
    elif target == "approved":
        critique = ROOT / "content" / slug / "critique.md"
        verdict = critique.read_text(encoding="utf-8").splitlines()[0].strip().lower() if critique.exists() else ""
        if verdict != "verdict: approve":
            print(f"refusing {slug} -> approved: critique is not approve", file=sys.stderr)
            return 1

    entry["stage"] = target
    atomic_json(path, data)
    generated = subprocess.run([sys.executable, "scripts/gen_site_registry.py"], cwd=ROOT)
    if generated.returncode != 0:
        fd, restore_name = tempfile.mkstemp(prefix=f".{path.name}.restore.", dir=path.parent)
        with os.fdopen(fd, "w", encoding="utf-8") as handle:
            handle.write(original)
            handle.flush()
            os.fsync(handle.fileno())
        os.chmod(restore_name, stat.S_IMODE(path.stat().st_mode))
        os.replace(restore_name, path)
        subprocess.run([sys.executable, "scripts/gen_site_registry.py"], cwd=ROOT, check=False)
        print("derived queue generation failed; primary registry restored", file=sys.stderr)
        return 1
    print(f"advanced {slug}: {current} -> {target}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main(sys.argv))
