#!/usr/bin/env python3
"""Reclaim disk by deleting recomputable raw inputs for built/approved chapters."""
from __future__ import annotations

import argparse
import json
import shutil
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent


def free_mb() -> int:
    usage = shutil.disk_usage(ROOT)
    return usage.free // (1024 * 1024)


def candidates() -> list[tuple[int, Path, str]]:
    data = json.loads((ROOT / "data" / "registry.json").read_text(encoding="utf-8"))
    found: list[tuple[int, Path, str]] = []
    raw_root = (ROOT / "raw").resolve()
    for entry in data["photographers"]:
        if entry.get("stage") not in {"built", "approved"}:
            continue
        slug = entry["slug"]
        path = ROOT / "raw" / slug
        resolved = path.resolve()
        minimum = int(entry.get("minImages", 4))
        ingested = len(list((ROOT / "content" / slug / "images").glob("*.jpg")))
        if not path.is_dir() or path.is_symlink() or resolved.parent != raw_root or ingested < minimum:
            continue
        size = sum(item.stat().st_size for item in path.rglob("*") if item.is_file() and not item.is_symlink())
        if size:
            found.append((size, path, slug))
    return sorted(found, key=lambda item: item[0], reverse=True)


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--apply-if-low", type=int, metavar="FREE_MB")
    parser.add_argument("--dry-run", action="store_true")
    args = parser.parse_args()
    target = args.apply_if_low
    before = free_mb()
    if target is not None and before >= target:
        print(f"raw prune not needed: {before}MB free >= {target}MB floor")
        return 0
    reclaimed = 0
    for size, path, slug in candidates():
        print(f"{'would prune' if args.dry_run else 'pruning'} raw/{slug}: {size // (1024 * 1024)}MB")
        if not args.dry_run:
            shutil.rmtree(path)
        reclaimed += size
        if target is not None and before + reclaimed // (1024 * 1024) >= target:
            break
    after = before if args.dry_run else free_mb()
    print(f"free disk: {before}MB -> {after}MB")
    if target is not None and not args.dry_run and after < target:
        print(f"unable to reach {target}MB floor using safe raw candidates")
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
