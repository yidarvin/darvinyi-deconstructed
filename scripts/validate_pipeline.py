#!/usr/bin/env python3
"""Validate Deconstructed's primary queue and built artifact invariants."""
from __future__ import annotations

import glob
import json
import os
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
VALID_RIGHTS = {"pd", "mixed", "copyrighted"}
VALID_STAGES = {"pending", "sourced", "built", "approved"}
IMAGE_EXTS = {".jpg", ".jpeg", ".png", ".tif", ".tiff", ".webp"}


def image_count(path: Path, extensions: set[str] = IMAGE_EXTS) -> int:
    if not path.is_dir():
        return 0
    return sum(1 for item in path.iterdir() if item.is_file() and item.suffix.lower() in extensions)


def first_verdict(slug: str) -> str:
    path = ROOT / "content" / slug / "critique.md"
    if not path.exists():
        return "-"
    return path.read_text(encoding="utf-8").splitlines()[0].strip().lower()


def validate() -> list[str]:
    errors: list[str] = []
    primary_path = ROOT / "data" / "registry.json"
    try:
        data = json.loads(primary_path.read_text(encoding="utf-8"))
    except (OSError, json.JSONDecodeError) as exc:
        return [f"data/registry.json cannot be read: {exc}"]

    photographers = data.get("photographers")
    if not isinstance(photographers, list) or not photographers:
        return ["data/registry.json photographers must be a non-empty array"]

    seen: set[str] = set()
    expected_site: dict[str, str] = {}
    expected_order: list[str] = []
    for index, entry in enumerate(photographers):
        where = f"photographers[{index}]"
        if not isinstance(entry, dict):
            errors.append(f"{where} must be an object")
            continue
        slug = entry.get("slug")
        if not isinstance(slug, str) or not slug:
            errors.append(f"{where}.slug must be a non-empty string")
            continue
        if slug in seen:
            errors.append(f"duplicate photographer slug: {slug}")
        seen.add(slug)
        expected_order.append(slug)
        for field in ("name", "dates", "group"):
            if not isinstance(entry.get(field), str) or not entry.get(field):
                errors.append(f"{slug}: {field} must be a non-empty string")
        stage = entry.get("stage")
        rights = entry.get("rights")
        wave = entry.get("wave")
        minimum = entry.get("minImages", 4)
        if stage not in VALID_STAGES:
            errors.append(f"{slug}: invalid stage {stage!r}")
        if rights not in VALID_RIGHTS:
            errors.append(f"{slug}: invalid rights {rights!r}")
        if not isinstance(wave, int) or not 1 <= wave <= 9:
            errors.append(f"{slug}: wave must be an integer from 1 to 9")
        if not isinstance(minimum, int) or not 1 <= minimum <= 12:
            errors.append(f"{slug}: minImages must be an integer from 1 to 12")
            minimum = 4

        expected_site[slug] = {"pending": "pending", "sourced": "pending", "built": "draft", "approved": "done"}.get(stage, "pending")
        if stage in {"built", "approved"}:
            base = ROOT / "content" / slug
            required = [base / "manifest.json", base / "sources.md", base / "research.md", base / "chapter.mdx", ROOT / "src" / "chapters" / f"{slug}.mdx"]
            for path in required:
                if not path.exists():
                    errors.append(f"{slug}: {stage} stage missing {path.relative_to(ROOT)}")
            counts = {
                "images": image_count(base / "images", {".jpg"}),
                "analysis": len(glob.glob(str(base / "analysis" / "*.analysis.json"))),
                "overlays": len(glob.glob(str(base / "overlays" / "*.json"))),
                "proofs": len(glob.glob(str(base / "proofs" / "*.png"))),
            }
            for kind, count in counts.items():
                if count < minimum:
                    errors.append(f"{slug}: {stage} stage has {count} {kind}, requires at least {minimum}")
            if len(set(counts.values())) != 1:
                errors.append(f"{slug}: artifact counts disagree: {counts}")
        if stage == "approved" and first_verdict(slug) != "verdict: approve":
            errors.append(f"{slug}: approved stage requires critique verdict: approve")

    try:
        site = json.loads((ROOT / "content" / "registry.json").read_text(encoding="utf-8"))
        site_chapters = [c for c in site.get("chapters", []) if c.get("slug") != "how-this-book-is-built"]
        actual_order = [c.get("slug") for c in site_chapters]
        actual_site = {c.get("slug"): c.get("status") for c in site_chapters}
        if actual_order != expected_order:
            errors.append("derived content/registry.json order disagrees with data/registry.json")
        if actual_site != expected_site:
            missing = sorted(set(expected_site) ^ set(actual_site))
            wrong = sorted(slug for slug in set(expected_site) & set(actual_site) if expected_site[slug] != actual_site[slug])
            errors.append(f"derived content/registry.json disagrees with data/registry.json (missing={missing}, wrong={wrong})")
    except (OSError, json.JSONDecodeError) as exc:
        errors.append(f"content/registry.json cannot be read: {exc}")

    for marker in sorted((ROOT / ".pipeline").glob("wave*.shipped")):
        name = marker.name.removeprefix("wave").removesuffix(".shipped")
        if not name.isdigit():
            errors.append(f"invalid shipped marker name: {marker.relative_to(ROOT)}")
            continue
        wave = int(name)
        members = [e for e in photographers if e.get("wave") == wave]
        if not members or any(e.get("stage") != "approved" for e in members):
            errors.append(f"{marker.relative_to(ROOT)} exists before every wave {wave} photographer is approved")

    review = ROOT / "needs-review.txt"
    if review.exists():
        for line in review.read_text(encoding="utf-8").splitlines():
            value = line.strip()
            if value and not (ROOT / value).exists():
                errors.append(f"needs-review.txt references missing path: {value}")
    return errors


def main() -> int:
    errors = validate()
    if errors:
        print("PIPELINE VALIDATION FAILED")
        for error in errors:
            print(f"  error: {error}")
        return 1
    print("pipeline registry and artifact invariants are valid")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
