#!/usr/bin/env python3
"""Write content/<slug>/proofs/index.html: a QA contact sheet of every proof PNG.

Per the composition-analysis agent-loop, after a photographer's overlays are drawn
we emit a plain <img> grid of all composites so anyone (no human required) can eyeball
the batch at a glance. Reads overlays/<id>.json for each proof's one-line thesis.

    python3 scripts/contact_sheet.py <slug> [<slug> ...]
"""
from __future__ import annotations

import glob
import html
import json
import os
import sys

REPO = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

PAGE = """<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>{slug} - proofs</title>
<style>
  :root {{ color-scheme: dark; }}
  body {{ background:#0a0e0f; color:#e6edf0; font-family:"JetBrains Mono",ui-monospace,monospace; margin:0; padding:2rem; }}
  h1 {{ font-size:1rem; font-weight:700; letter-spacing:.02em; }}
  h1 .c {{ color:#55707b; }}
  p.sub {{ color:#7d919b; font-size:.8rem; margin-top:-.3rem; }}
  .grid {{ display:grid; grid-template-columns:repeat(auto-fill,minmax(320px,1fr)); gap:1.25rem; margin-top:1.5rem; }}
  figure {{ margin:0; border:1px solid #1e2a30; border-radius:.5rem; background:#10171a; padding:.6rem; }}
  figure img {{ width:100%; height:auto; display:block; border-radius:.25rem; background:#000; }}
  figcaption {{ margin-top:.5rem; font-size:.72rem; color:#7d919b; line-height:1.4; }}
  figcaption .id {{ color:#2dd4bf; }}
</style>
</head>
<body>
<h1><span class="c">/* </span>{slug} - proofs<span class="c"> */</span></h1>
<p class="sub">{n} plates. Deterministic overlays rendered by the composition-analysis skill.</p>
<div class="grid">
{cards}
</div>
</body>
</html>
"""

CARD = """<figure>
  <img src="{png}" alt="{id}" loading="lazy">
  <figcaption><span class="id">{id}</span><br>{thesis}</figcaption>
</figure>"""


def thesis_for(slug: str, pid: str) -> str:
    ov = os.path.join(REPO, "content", slug, "overlays", f"{pid}.json")
    try:
        with open(ov, encoding="utf-8") as fh:
            return html.escape(json.load(fh).get("notes", ""))
    except (OSError, json.JSONDecodeError):
        return ""


def sheet_for(slug: str) -> None:
    proofs_dir = os.path.join(REPO, "content", slug, "proofs")
    pngs = sorted(glob.glob(os.path.join(proofs_dir, "*.png")))
    cards = []
    for png in pngs:
        pid = os.path.basename(png)[:-4]
        cards.append(CARD.format(png=os.path.basename(png), id=html.escape(pid), thesis=thesis_for(slug, pid)))
    out = PAGE.format(slug=html.escape(slug), n=len(pngs), cards="\n".join(cards))
    with open(os.path.join(proofs_dir, "index.html"), "w", encoding="utf-8") as fh:
        fh.write(out)
    print(f"{slug}: contact sheet with {len(pngs)} proofs")


def main(argv: list[str]) -> int:
    if len(argv) < 2:
        print("usage: contact_sheet.py <slug> [<slug> ...]", file=sys.stderr)
        return 2
    for slug in argv[1:]:
        sheet_for(slug)
    return 0


if __name__ == "__main__":
    raise SystemExit(main(sys.argv))
