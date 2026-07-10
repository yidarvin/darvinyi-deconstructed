You are the BUILDER. Read CLAUDE.md first and follow the model roles.

0. Resolve critiques: for every content/*/critique.md with `verdict: revise`,
   apply each numbered fix — re-run the composition-analysis loop for affected
   images, update overlays/proofs/chapter as needed — then set
   `verdict: resolved`. Commit and push per slug ("resolve critique: <slug>").
1. Read data/registry.json and work the photographers in _meta.batch1 that do
   not yet have a chapter.mdx, one at a time. For each <slug>:
   a. Research the photographer and the specific images in raw/<slug>/:
      canonical selection, technique, era, and camera settings only if the
      historical record has them (film-era work usually will not — say so,
      never invent). Write content/<slug>/research.md and set
      researched=true for that photographer in data/registry.json.
   b. Ingest raw/<slug>/ into content/<slug>/images/ using
      .claude/skills/composition-analysis/scripts/ingest.py with
      --manifest content/<slug>/manifest.json.
   c. For every ingested image, run the composition-analysis skill's full
      loop; write the spec to content/<slug>/overlays/<id>.json and the proof
      to content/<slug>/proofs/<id>.png. Then write
      content/<slug>/proofs/index.html as a contact sheet of all proofs.
   d. Write content/<slug>/chapter.mdx: why the photographs work, citing the
      overlay claims and the analyzer's tonal/palette findings.
   Commit and push after each photographer with a descriptive message.
If any image lands in needs-review.txt, keep going — do not stall the batch.
Do not write critiques; that is the critic's job.
