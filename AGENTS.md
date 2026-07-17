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

An optional `sourceMode: "limited"` is the audited non-blocking fallback for a
photographer whose usable source set remains below `minImages` after one
exhaustive open-plus-fair-use source pass. It is never inferred from a missing
file: the SOURCER records `fallback: limited` in NEEDED.md and invokes
`python3 scripts/set_stage.py <slug> sourced --limited`. A limited chapter may
contain zero to `minImages - 1` real photographs. It still receives research,
prose, source notes, build validation, and independent critique, and its rendered
chapter must contain the exact visible lead-in `**Limited image availability.**`
explaining which canonical images could not be acquired under this policy. Never
fabricate, generate, or substitute an image to avoid this fallback. Limited mode
advances the queue; it is not a stop or human-review state.
Use it only for a stable content/access roadblock demonstrated by a successful
source investigation. A network outage, rate limit, authentication failure,
permission error, full disk, broken tool, or unavailable service is transient
infrastructure and must fail for supervisor retry; it must never be converted
into a limited chapter.

The registry `rights` field describes the corpus; it is not an exclusion gate.
Source public-domain and openly licensed images first. For a canonical work with
no adequate open rendition, the SOURCER may use a publicly accessible image for
this book's criticism, scholarship, and composition teaching under a documented
U.S. fair-use rationale. Fair use is assessed per image under all four statutory
factors, not presumed merely because the project is educational. `sources.md`
must identify the route as `open` or `fair-use`, preserve the source link and
credit/copyright notice, explain why the complete image is pedagogically needed,
and note why the web-sized use does not substitute for the source or a licensed
reproduction.

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

## Git and publication
The parent runner commits every photographer, critique, resolution, and integration
unit after exact-unit validation. Intermediate commits stay local. It pushes only at
a validated publication boundary: an approving critique, a shared renderer pass, or
a wave integration pass. An approving push includes the chapter's accumulated source,
build, and critique history, so remote pushes correspond to deployable content rather
than intermediate review churn. Stage agents never commit or push; they leave one
bounded unit in the worktree for the runner's transaction gate.

Every state transition goes through `python3 scripts/set_stage.py`; agents never
hand-edit a registry stage. Source, build, and critique invocations process exactly
one photographer or one recovery unit, then stop. The supervisor independently
snapshots the selected slug and validates both its state transition and changed paths
before it commits or publishes. A different photographer changing is a hard boundary
failure, even when global validation passes.

## Unattended operation

There is no human review or asset-drop step. When a source set is under its
minimum, the SOURCER retries automatic recovery itself: open institutional APIs
and IIIF endpoints first, then other publicly accessible institutional or
authoritative pages under the documented fair-use fallback above. A direct
download is preferred; a documented browser screen capture is allowed when the
image is publicly visible but no file rendition is offered. The normal minimum
is 640px on the long edge. A rare, compositionally essential work may be used at
480-639px only after the SOURCER verifies that the subject and teaching structure
remain legible; record that exception in `sources.md`. Never upscale merely to
pass the threshold. Never bypass authentication, a paywall, robots/access
restrictions, or another technical access control; never fabricate or materially
retouch a historical image. Keep retry diagnostics in NEEDED.md, but treat them
as agent work items, not requests for a person. Re-evaluate old NEEDED.md entries
that failed only the retired open-only or 1200px rules instead of repeating them.
If the set still cannot reach `minImages` after that exhaustive current-policy
pass, record and use limited mode immediately; never leave the photographer
pending for another identical retry.

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
