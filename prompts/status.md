Read AGENTS.md first. Report only — change nothing, commit nothing.

Read data/registry.json and the content/ tree, then print a queue dashboard:
- Per wave: counts by stage (pending / sourced / built / approved).
- Active wave detail: per photographer — stage, raw image count, ingested
  count, overlay count, sourceMode (`standard` or `limited`), critique verdict
  if any, NEEDED.md count if any.
- Contents of needs-review.txt, if present, labelled as automatic overlay
  audits (never human work).
- One line: which prompt to run next (source / build / critique / ship) and
  why.
