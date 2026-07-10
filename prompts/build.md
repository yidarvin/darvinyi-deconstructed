You are the BUILDER. Read CLAUDE.md first and follow the model roles.

0. Resolve critiques: for every content/*/critique.md with `verdict: revise`,
   apply each numbered fix — re-run the composition-analysis loop for
   affected images, update overlays/proofs/chapter as needed — then set
   `verdict: resolved`. Commit and push per slug ("resolve critique: <slug>").
1. Active wave: the lowest `wave` in data/registry.json with any photographer
   at stage "sourced". Work them one at a time, registry order. Skip any
   photographer whose raw/<slug>/ contains fewer than 4 image files — they
   are waiting on NEEDED.md drops; name the skipped slugs in your commit
   message. For each <slug> you do work:
   a. Read content/<slug>/sources.md. Write content/<slug>/research.md:
      technique, era, printing, and camera settings ONLY where the historical
      record has them (film-era work usually will not — say so, never
      invent).
   b. Ingest raw/<slug>/ into content/<slug>/images/ using
      .claude/skills/composition-analysis/scripts/ingest.py with
      --manifest content/<slug>/manifest.json.
   c. For every ingested image, run the composition-analysis skill's full
      loop; write specs to content/<slug>/overlays/<id>.json and proofs to
      content/<slug>/proofs/<id>.png; then write proofs/index.html as a
      contact sheet of all proofs.
   d. Write content/<slug>/chapter.mdx: why the photographs work, citing the
      overlay claims and the analyzer's tonal/palette findings, honest about
      settings per (a).
   e. Wire the chapter into the site per template conventions (route, nav,
      index/TOC ordered by registry group) and confirm the production build
      passes.
   f. Set that photographer's registry stage to "built". Commit and push
      ("build: <slug>").
If an image lands in needs-review.txt, keep going — never stall the batch.
Do not write critiques; that is the critic's job.
