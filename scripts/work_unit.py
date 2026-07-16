#!/usr/bin/env python3
"""Snapshot and enforce the exact atomic work unit selected by the queue.

Global registry validation proves that the repository is internally consistent.
This gate proves the stronger transaction invariant: the invocation changed only
the photographer (or integration unit) selected before Codex started.
"""

from __future__ import annotations

import argparse
import json
import subprocess
import sys
from pathlib import Path
from typing import Any


REGISTRY_FILES = {
    "data/registry.json",
    "content/registry.json",
    "prompts/queue.md",
}


def verdict(root: Path, slug: str) -> str:
    path = root / "content" / slug / "critique.md"
    if not path.exists():
        return "-"
    lines = path.read_text(encoding="utf-8").splitlines()
    if not lines:
        return "-"
    return lines[0].strip().lower().removeprefix("verdict:").strip() or "-"


def needs_review(root: Path) -> list[str]:
    path = root / "needs-review.txt"
    if not path.exists():
        return []
    return [line.strip() for line in path.read_text(encoding="utf-8").splitlines() if line.strip()]


def snapshot(root: Path) -> dict[str, Any]:
    registry = json.loads((root / "data/registry.json").read_text(encoding="utf-8"))
    entries: dict[str, dict[str, Any]] = {}
    for entry in registry["photographers"]:
        slug = entry["slug"]
        entries[slug] = {"registry": entry, "verdict": verdict(root, slug)}
    return {"entries": entries, "needs_review": needs_review(root)}


def git_output(root: Path, *args: str) -> str:
    result = subprocess.run(
        ["/usr/bin/git", "-C", str(root), *args],
        check=True,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        text=True,
    )
    return result.stdout


def changed_paths(root: Path, before_head: str | None) -> set[str]:
    if before_head is None:
        return set()
    paths = {
        line
        for line in git_output(root, "diff", "--name-only", before_head).splitlines()
        if line
    }
    paths.update(
        line
        for line in git_output(root, "ls-files", "--others", "--exclude-standard").splitlines()
        if line
    )
    return paths


def target_slug(unit: str) -> str | None:
    if unit.startswith("audit:"):
        return unit.split(":", 1)[1]
    if unit in {"runtime", "renderer"} or unit.startswith("wave-"):
        return None
    return unit


def same_registry_except_stage(before: dict[str, Any], after: dict[str, Any]) -> bool:
    left = dict(before["registry"])
    right = dict(after["registry"])
    left.pop("stage", None)
    right.pop("stage", None)
    return left == right


def path_allowed(stage: str, slug: str | None, path: str) -> bool:
    if stage in {"recover", "renderer", "ship"}:
        return True
    if slug is None:
        return False
    if path in REGISTRY_FILES:
        return True
    if stage == "critique":
        return path == f"content/{slug}/critique.md"
    if path == "needs-review.txt" and stage == "build":
        return True
    if path.startswith(f"content/{slug}/"):
        return True
    if stage == "build" and path == f"src/chapters/{slug}.mdx":
        return True
    return False


def validate(
    root: Path,
    before: dict[str, Any],
    stage: str,
    wave: int,
    unit: str,
    before_head: str | None,
) -> list[str]:
    del wave  # Wave is retained in the CLI/audit record and checked by selection.
    after = snapshot(root)
    errors: list[str] = []
    slug = target_slug(unit)
    before_entries = before["entries"]
    after_entries = after["entries"]

    if set(before_entries) != set(after_entries):
        errors.append("registry photographer set changed during one atomic unit")

    for candidate in sorted(set(before_entries) & set(after_entries)):
        if candidate == slug:
            continue
        if before_entries[candidate] != after_entries[candidate]:
            errors.append(f"{candidate}: changed outside selected unit {unit}")

    if stage in {"renderer", "ship"}:
        for candidate in sorted(set(before_entries) & set(after_entries)):
            if before_entries[candidate] != after_entries[candidate]:
                errors.append(f"{candidate}: queue state changed during {stage}")
    elif stage != "recover":
        if slug is None or slug not in before_entries or slug not in after_entries:
            errors.append(f"selected unit is not a registry photographer: {unit}")
        else:
            old = before_entries[slug]
            new = after_entries[slug]
            old_stage = old["registry"]["stage"]
            new_stage = new["registry"]["stage"]
            old_verdict = old["verdict"]
            new_verdict = new["verdict"]

            if not same_registry_except_stage(old, new):
                errors.append(f"{slug}: registry fields other than stage changed")

            if stage == "source":
                if old_stage == "pending":
                    if new_stage not in {"pending", "sourced"}:
                        errors.append(f"{slug}: source must remain pending or advance to sourced, got {new_stage}")
                elif old_stage == "sourced":
                    if new_stage != "sourced":
                        errors.append(f"{slug}: source recovery changed stage to {new_stage}")
                else:
                    errors.append(f"{slug}: source selected from invalid stage {old_stage}")
                if new_verdict != old_verdict:
                    errors.append(f"{slug}: source changed critique verdict {old_verdict} -> {new_verdict}")
            elif stage == "build" and unit.startswith("audit:"):
                if old != new:
                    errors.append(f"{slug}: overlay audit changed queue stage or verdict")
                if before.get("needs_review", []) == after.get("needs_review", []):
                    errors.append(f"{slug}: overlay audit did not close or update its audit record")
            elif stage == "build" and old_verdict == "revise":
                if new_stage != old_stage or new_verdict != "resolved":
                    errors.append(
                        f"{slug}: critique resolution must keep stage {old_stage} and set verdict resolved; "
                        f"got stage={new_stage} verdict={new_verdict}"
                    )
            elif stage == "build":
                if old_stage != "sourced" or new_stage != "built":
                    errors.append(
                        f"{slug}: build must transition sourced -> built; got {old_stage} -> {new_stage}"
                    )
                if new_verdict != old_verdict:
                    errors.append(f"{slug}: initial build changed critique verdict {old_verdict} -> {new_verdict}")
            elif stage == "critique":
                valid_approve = new_stage == "approved" and new_verdict == "approve"
                valid_revise = new_stage == "built" and new_verdict == "revise"
                if old_stage != "built" or old_verdict not in {"-", "resolved"}:
                    errors.append(
                        f"{slug}: critique selected from invalid state stage={old_stage} verdict={old_verdict}"
                    )
                if not (valid_approve or valid_revise):
                    errors.append(
                        f"{slug}: critique must end built/revise or approved/approve; "
                        f"got stage={new_stage} verdict={new_verdict}"
                    )
            else:
                errors.append(f"unsupported exact-unit stage: {stage}")

    try:
        paths = changed_paths(root, before_head)
    except (subprocess.CalledProcessError, FileNotFoundError) as exc:
        errors.append(f"cannot inspect work-unit paths: {exc}")
        paths = set()
    for path in sorted(paths):
        if not path_allowed(stage, slug, path):
            errors.append(f"{path}: changed outside selected unit {unit}")

    return errors


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("command", choices=("snapshot", "validate"))
    parser.add_argument("--root", type=Path, default=Path.cwd())
    parser.add_argument("--output", type=Path)
    parser.add_argument("--before", type=Path)
    parser.add_argument("--before-head")
    parser.add_argument("--stage")
    parser.add_argument("--wave", type=int, default=0)
    parser.add_argument("--unit")
    args = parser.parse_args()
    root = args.root.resolve()

    if args.command == "snapshot":
        if args.output is None:
            parser.error("snapshot requires --output")
        args.output.write_text(json.dumps(snapshot(root), indent=2) + "\n", encoding="utf-8")
        return 0

    if args.before is None or args.stage is None or args.unit is None:
        parser.error("validate requires --before, --stage, and --unit")
    before = json.loads(args.before.read_text(encoding="utf-8"))
    errors = validate(root, before, args.stage, args.wave, args.unit, args.before_head)
    if errors:
        print("work-unit boundary violation:", file=sys.stderr)
        for error in errors:
            print(f"  - {error}", file=sys.stderr)
        return 77
    print(f"work-unit boundary valid: stage={args.stage} wave={args.wave} unit={args.unit}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
