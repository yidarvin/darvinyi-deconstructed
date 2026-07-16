# Deconstructed — build contract

## Model roles
- All active pipeline stages run on GPT-5.6 Terra at High effort (set in
  run.sh via BUILD_MODEL / CRITIC_MODEL and EFFORT). The CRITIC's fresh-eyes
  independence is procedural — a separate ephemeral invocation with the
  adversarial critique.md prompt — not model diversity. The legacy generic
  runqueue.sh uses GPT-5.6 Sol at High effort because it previously occupied
  the higher-capability model role. Override models explicitly only when a
  run calls for it; keep reasoning effort High.
- SOURCER / BUILDER / SHIP / STATUS. Prompts: source.md, build.md,
  ship.md, status.md.
- CRITIC. Prompt: critique.md. Writes ONLY content/<slug>/critique.md
  and the registry `stage` field; never edits site content.
- critique.md first line: `verdict: approve` | `verdict: revise` |
  `verdict: resolved` (builder sets resolved after applying fixes; critic
  re-reviews resolved).

## The queue
data/registry.json IS the queue. Per photographer: `rights`
(pd|mixed|copyrighted), `wave` (1-9, PD-first), `stage`
(pending -> sourced -> built -> approved), and optional `minImages` (default
4) for historically small surviving corpora. A prompt's active wave is the
lowest wave containing photographers at its input stage. Prompts update stages
as they complete work; nothing else tracks state.

## Overlays: use the composition-analysis skill. Specs only, never hand-draw SVG.
Per image: analyze -> draft a spec from suggested_primitives + photographic
judgment -> render -> LOOK at the composite PNG -> score -> apply the emitted
fixes. Accept at score >= 80 AND a clean visual pass. Max 3 render/score
iterations. On non-convergence: write the conservative fallback (best-fit
grid + subject_anchor) and append the image path to needs-review.txt as an
automatic audit record. The next builder pass must re-check every record,
either improve it or verify the conservative fallback against the scorer and
visual pass, then clear the record. needs-review.txt is never a human queue or
a stop condition; never stall the batch on one image.

## Layout
content/<slug>/
  images/    ingested 1600px jpgs (committed)
  analysis/  <id>.analysis.json
  overlays/  <id>.json          # the specs the site renders
  proofs/    <id>.png + index.html contact sheet
  manifest.json  sources.md  NEEDED.md  research.md  chapter.mdx  critique.md
raw/<slug>/ holds source originals and is gitignored.

## Rendering
ONE OverlayRenderer component consumes overlay JSON. The schema and required
style are the contract in
.agents/skills/composition-analysis/references/overlay-spec.md — image at
natural aspect, NO object-fit crop, teal #2dd4bf strokes, dashed white grid,
JetBrains Mono uppercase labels.

## Git
The parent runner commits and pushes per photographer, per critique, and per
integration pass after exact-unit validation. Stage agents never commit or push;
they leave one bounded unit in the worktree for the runner's transaction gate.

Every state transition goes through `python3 scripts/set_stage.py`; agents never
hand-edit a registry stage. Source, build, and critique invocations process exactly
one photographer or one recovery unit, then stop. The supervisor independently
snapshots the selected slug and validates both its state transition and changed paths
before it commits or publishes. A different photographer changing is a hard boundary
failure, even when global validation passes.

## Unattended operation

There is no human review or asset-drop step. When a source set is under its
minimum, the SOURCER retries lawful public-source recovery itself: institutional
APIs and IIIF endpoints first, then public browser retrieval or a documented
screen capture only when the page explicitly permits reuse and the resulting
image is usable. Never bypass authentication, a paywall, or a technical access
control; never fabricate a historical image. Keep retry diagnostics in
NEEDED.md, but treat them as agent work items, not requests for a person.

The durable macOS service runs `scripts/pipeline-supervisor.sh` from this
repository. It retries transient failures with capped exponential backoff,
invokes the recovery role after repeated deterministic failures, enforces one
mutating runner with an atomic lock, and remains alive after queue completion.
It pins Git to `/usr/bin/git` through `scripts/service-bin/git` because that
stable Apple executable has the macOS Full Disk Access grant; never let the
service resolve versioned Homebrew Git ahead of it. Git synchronization failures
are infrastructure retries and must never invoke a Terra recovery agent.
Before work, it enforces a free-disk floor and may delete only recomputable
`raw/<slug>/` inputs for already built or approved chapters whose ingested image
set is complete. Runtime logs, locks, and heartbeats live under
`.pipeline/runtime/` and are never committed.
