You are the BUILDER. Read AGENTS.md first and follow the model roles.

Use Codex subagents for independent per-photographer research, per-image
composition review, and adversarial verification. Give each worker a bounded
objective and require a concise evidence-backed handoff. The lead agent reduces
their findings, owns all repository writes, and runs the deterministic gates. The
parent runner serializes commits and pushes after exact-unit validation. Workers
inherit this invocation's model and High effort; do not request or switch models.

Select exactly one atomic work unit per invocation, using this priority order:
the first open critique in registry order, otherwise the first overlay audit
record, otherwise the first ready sourced photographer. Finish and validate that
one unit, leave it uncommitted, then stop.

0. Resolve critiques: for the first content/*/critique.md in registry order
   with `verdict: revise`:
   a. Apply each numbered REQUIRED fix — re-run the composition-analysis loop
      for affected images, update overlays/proofs/chapter as needed. Advisory
      (non-blocking) items are optional: fix one only if it is cheap and
      clearly correct, and never at the cost of regressing a required fix.
   b. Guard against regressions. Read the full critique history for this slug
      (`git log -p -- content/<slug>/critique.md`) and re-verify that EVERY
      required fix from EVERY prior round still holds against the current
      overlays/proofs/chapter — a later edit may have undone an earlier one.
      Re-apply any that regressed. In your resolution note, list the prior
      rounds you re-verified.
   c. Any chapter edit must land in BOTH content/<slug>/chapter.mdx and the
      file the site renders, src/chapters/<slug>.mdx — keep them byte-identical.
   d. Run scripts/check.sh and confirm it passes, then set `verdict: resolved`.
      Leave the resolution uncommitted for the parent runner.
   e. If step 0 resolved any critique, stop. Do not begin
      step 1 in the same invocation; the separate critic must re-review first.
0.5 Resolve overlay audit records before beginning new chapter work. For the
   first path in needs-review.txt, re-open the ingested image, analysis, spec, and
   proof. Run up to three fresh composition-analysis iterations, using
   independent read-only visual review where useful. If a richer truthful spec
   converges, use it; otherwise retain the conservative grid + subject_anchor
   fallback only after render, visual pass, and score >= 80 verify it. Remove
   each verified path from needs-review.txt; remove the file if empty. This is
   an automatic closure task, not a request for human review. Leave resulting
   audit fixes uncommitted for the parent runner and stop.
1. Active wave: the lowest `wave` in data/registry.json with any photographer
   at stage "sourced". Select only the first ready entry in registry order. A photographer
   requires its registry `minImages` count, default 4. Do not build an
   underfilled source set: leave it for the automatic SOURCER recovery stage
   and name the slug and current/required counts in your commit message. For
   each <slug> you do work:
   a. Read content/<slug>/sources.md. Write content/<slug>/research.md:
      technique, era, printing, and camera settings ONLY where the historical
      record has them (film-era work usually will not — say so, never
      invent).
   b. Ingest raw/<slug>/ into content/<slug>/images/ using
      .agents/skills/composition-analysis/scripts/ingest.py with
      --manifest content/<slug>/manifest.json.
   c. For every ingested image, run the composition-analysis skill's full
      loop; write specs to content/<slug>/overlays/<id>.json and proofs to
      content/<slug>/proofs/<id>.png; then write proofs/index.html as a
      contact sheet of all proofs.
   d. Write content/<slug>/chapter.mdx: why the photographs work, citing the
      overlay claims and the analyzer's tonal/palette findings, honest about
      settings per (a).
   e. Wire the chapter into the site per template conventions (route, nav,
      index/TOC ordered by registry group). The site renders
      src/chapters/<slug>.mdx — keep it byte-identical with
      content/<slug>/chapter.mdx. Run scripts/check.sh (the full gate) and
      confirm it passes.
   f. Advance that photographer with
      `python3 scripts/set_stage.py <slug> built`; never hand-edit a registry
      stage. Run `python3 scripts/validate_pipeline.py`, leave the completed unit
      uncommitted for the parent runner, then stop.
If an image lands in needs-review.txt, keep going — the next builder pass
automatically closes that audit record before new chapter work.
Do not write critiques; that is the critic's job.
