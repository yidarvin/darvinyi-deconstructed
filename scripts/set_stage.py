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
    if len(argv) != 3 or argv[1] in {"-h", "--help"}:
        print("usage: python3 scripts/set_stage.py <slug> <sourced|built|approved>")
        return 0 if len(argv) == 2 else 2
    slug, target = argv[1:]
    path = ROOT / "data" / "registry.json"
    original = path.read_text(encoding="utf-8")
    data = json.loads(original)
    entry = next((item for item in data["photographers"] if item.get("slug") == slug), None)
    if entry is None:
        print(f"unknown photographer: {slug}", file=sys.stderr)
        return 1
    current = entry.get("stage")
    if NEXT.get(current) != target:
        print(f"illegal stage transition for {slug}: {current} -> {target}", file=sys.stderr)
        return 1
    minimum = int(entry.get("minImages", 4))
    if target == "sourced":
        raw = ROOT / "raw" / slug
        images = sum(1 for p in raw.iterdir() if p.is_file() and p.suffix.lower() in {".jpg", ".jpeg", ".png", ".tif", ".tiff", ".webp"}) if raw.is_dir() else 0
        if images < minimum:
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
        complete = all(value >= minimum for value in counts.values()) and len(set(counts.values())) == 1
        synced = content_chapter.exists() and site_chapter.exists() and content_chapter.read_bytes() == site_chapter.read_bytes()
        if not complete or not synced or not (base / "manifest.json").exists():
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
