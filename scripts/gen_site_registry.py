#!/usr/bin/env python3
"""Derive the site's table of contents from the photographer queue.

data/registry.json (the photographer queue) is the single source of truth for what
the book contains and each photographer's build stage. Two downstream files must
agree with it or the build gate (scripts/validate.py) fails:

  content/registry.json  -- the site's table of contents (what Home renders)
  prompts/queue.md       -- the refsite build-gate run queue

Rather than hand-maintain both and let them drift from data/registry.json, this
regenerates them from it. Run after any photographer's `stage` changes:

    python3 scripts/gen_site_registry.py

A fixed intro chapter (how-this-book-is-built) is prepended so the meta chapter
keeps its place. Stage -> site status -> queue status mapping (kept inside the
pairs validate.py allows):

    approved -> done  / DONE
    built    -> draft / PENDING
    else     -> pending / PENDING
"""
from __future__ import annotations

import json
import os
import subprocess

REPO = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

INTRO = {
    "num": 0,
    "slug": "how-this-book-is-built",
    "title": "How this book is built",
    "subtitle": "the grammar and the queue",
    "part": "0. The System",
    "routes": ["meta", "workflow"],
    "status": "done",
}

STAGE_TO_STATUS = {
    "approved": "done",
    "built": "draft",
    "sourced": "pending",
    "pending": "pending",
}
STATUS_TO_QUEUE = {"done": "DONE", "draft": "PENDING", "pending": "PENDING"}


def approved_date(slug: str) -> str | None:
    """ISO date (YYYY-MM-DD) of the last commit touching content/<slug>/critique.md."""
    result = subprocess.run(
        ["git", "log", "-1", "--format=%ad", "--date=short", "--",
         os.path.join("content", slug, "critique.md")],
        cwd=REPO,
        capture_output=True,
        text=True,
        check=False,
    )
    date = result.stdout.strip()
    return date or None


def build_chapters(data: dict) -> list[dict]:
    chapters = [dict(INTRO)]
    for i, p in enumerate(data["photographers"], start=1):
        status = STAGE_TO_STATUS.get(p.get("stage", "pending"), "pending")
        chapter = {
            "num": i,
            "slug": p["slug"],
            "title": p["name"],
            "subtitle": p.get("dates", ""),
            "part": p["group"],
            "status": status,
        }
        if status == "done":
            date = approved_date(p["slug"])
            if date:
                chapter["approvedAt"] = date
        chapters.append(chapter)
    return chapters


def write_registry(chapters: list[dict]) -> None:
    reg = {
        "title": "Deconstructed",
        "subtitle": "How the masters composed the frame.",
        "mode": "book",
        "chapters": chapters,
    }
    path = os.path.join(REPO, "content", "registry.json")
    with open(path, "w", encoding="utf-8") as fh:
        json.dump(reg, fh, indent=2, ensure_ascii=False)
        fh.write("\n")


QUEUE_INTRO = """# Run Queue

Run order, top to bottom, DERIVED from data/registry.json (the photographer queue).
Do not hand-edit: run `python3 scripts/gen_site_registry.py` after changing a
photographer's stage. Statuses: `PENDING`, `DONE`, `SKIPPED`. This table exists so
the refsite build gate (scripts/validate.py) can cross-check the site registry; the
real queue and state live in data/registry.json.
"""


def render_table(chapters: list[dict]) -> str:
    header = ("#", "slug", "item", "status")
    rows = [
        (
            f"{c['num']:02d}",
            c["slug"],
            c["title"],
            STATUS_TO_QUEUE[c["status"]],
        )
        for c in chapters
    ]
    widths = [len(h) for h in header]
    for r in rows:
        for i, cell in enumerate(r):
            widths[i] = max(widths[i], len(cell))

    def fmt(cells):
        return "| " + " | ".join(cells[i].ljust(widths[i]) for i in range(len(header))) + " |"

    out = [fmt(header), "|" + "|".join("-" * (widths[i] + 2) for i in range(len(header))) + "|"]
    out += [fmt(r) for r in rows]
    return "\n".join(out)


def write_queue(chapters: list[dict]) -> None:
    path = os.path.join(REPO, "prompts", "queue.md")
    body = QUEUE_INTRO + "\n" + render_table(chapters) + "\n"
    with open(path, "w", encoding="utf-8") as fh:
        fh.write(body)


def main() -> int:
    data = json.load(open(os.path.join(REPO, "data", "registry.json"), encoding="utf-8"))
    chapters = build_chapters(data)
    write_registry(chapters)
    write_queue(chapters)
    done = sum(1 for c in chapters if c["status"] == "done")
    draft = sum(1 for c in chapters if c["status"] == "draft")
    pending = sum(1 for c in chapters if c["status"] == "pending")
    print(f"wrote content/registry.json + prompts/queue.md: {len(chapters)} chapters "
          f"({done} done, {draft} draft, {pending} pending)")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
