# darvinyi-refsite-template

A template for **queue-built reference sites**: interactive textbooks and survey
sites where each chapter (or paper) is researched and built one at a time by OpenAI
Codex, from a queue, in a consistent house style, and deployed as a static site on
Vercel.

This is the reusable skeleton. The build *procedure* lives in the companion
`refsite-runner` skill. This repo is the *noun*; the skill is the *verbs*. The repo
owns all the tooling (validators, the prose gate, status mutation, scaffolding), so
one command is the entire definition of mechanical done: `npm run check`.

## Stack

Vite 8, React 19, TypeScript, MDX for chapter prose with embedded React widgets,
react-router 7+ with readable slugs, Tailwind 3.4 bound to CSS-variable design
tokens, self-hosted fonts. Static output, no backend.

## Quick start

```bash
npm install
npm run dev          # http://localhost:5173
npm run check        # the full gate: validate, prose, test, build, lint
```

The dev server renders the example Chapter 0, which documents the system itself.

Node 22.22+ or 24+ is required (see `.nvmrc`). The Python scripts need `python3`,
which is present on macOS and on the Ubuntu CI runner. Vercel only runs
`npm run build`, which stays python-free.

## Commands

| Command             | What it does                                                        |
|---------------------|---------------------------------------------------------------------|
| `npm run dev`       | Vite dev server.                                                    |
| `npm run build`     | Typecheck, production build into `dist/`, then write the sitemap.   |
| `npm run check`     | The gate: validate, prose lint, test, build, lint. Definition of done. |
| `npm run validate`  | Cross-check the queue, the registry, and the chapter files.         |
| `npm run lint:prose`| Scan chapter prose for em dashes and banned AI tells.               |
| `npm run test`      | Vitest: assert every chapter and widget actually renders.           |
| `npm run lint`      | ESLint (advisory in the gate).                                      |
| `npm run preview`   | Serve the production build locally.                                 |
| `./run.sh start`    | Install and start the durable autonomous Codex queue service.       |
| `./run.sh stop`     | Stop the autonomous service without changing queue state.           |
| `./run.sh status`   | Show queue progress, runtime health, failures, and the next action.  |
| `./run.sh doctor`   | Check Codex auth/models, disk, queue invariants, and service setup.  |

Scaffolding and status changes go through the repo scripts, not by hand:

```bash
python3 scripts/new_chapter.py --slug the-settled-body --num 1 --title "The settled body"
python3 scripts/mark.py the-settled-body done
```

`new_chapter.py` stamps the mdx plus the figure and widget stubs, and writes both the
registry entry and the queue row. `mark.py` sets the status in both files at once and
refuses if the result would not validate, so a chapter with unfinished markers cannot
be marked done.

## Deploy

Push to GitHub, import to Vercel (framework preset **Vite**, output **dist**).
`vercel.json` already contains the SPA rewrite so deep links to `/some-slug` work. Set
a top-level `"url"` in `content/registry.json` to have the build emit `dist/sitemap.xml`.
To keep it in your local-first world, add your Gitea NAS remote as a mirror:

```bash
git remote add origin      git@github.com:yidarvin/<name>.git
git remote set-url --add --push origin git@github.com:yidarvin/<name>.git
git remote set-url --add --push origin ssh://gitea@<nas>:3030/yidarvin/<name>.git
```

## How the pieces fit

- `content/registry.json` is the database: the ordered list of chapters and their
  status, plus the site `title`, `subtitle`, `mode`, and optional `url`. The home page
  renders the whole book from it, including unwritten chapters as dimmed rows.
- `prompts/queue.md` is the run list. The next item is the first PENDING row. It must
  agree with the registry; `npm run validate` checks that.
- `prompts/notes/<slug>.md` holds optional build notes for an item.
- `src/chapters/<slug>.mdx` is a chapter. It uses the shared primitives (`Figure`,
  `Widget`, `ExerciseCard`, `Callout`) and imports its own bespoke figure and
  signature widget from `_figures/` and `_widgets/`.
- `src/styles/tokens.css` is the house style, in one place.
- `scripts/` holds the tooling: `validate.py`, `prose_lint.py`, `new_chapter.py`,
  `mark.py`, `check.sh`, `sitemap.mjs`. `prose-lint.config.json` tunes the prose gate.
- `.github/workflows/check.yml` runs `npm run check` on every push and pull request, so
  the gate travels with every clone.

## Making this the template on GitHub

Push this repo, then in GitHub: Settings -> **Template repository**. New sites start
from "Use this template", so the skeleton and this README travel with every project.

## Scaffolding checklist for a new site

After "Use this template", before the first run:

1. `package.json` -> rename `name`.
2. `content/registry.json` -> set `title`, `subtitle`, `mode` (`book` or `graph`), and
   optionally `url`; replace the seed chapters.
3. `index.html` -> set the `<title>`, `description`, and the `og:` meta tags.
4. `src/components/Layout.tsx` -> update the `source` link.
5. `LICENSE` -> confirm the holder.
6. Seed `prompts/queue.md` with one PENDING row per chapter, matching the registry,
   then say **"run the next one"**.

## Building chapters

With the `refsite-runner` skill installed at `~/.agents/skills/refsite-runner/`,
open Codex in this repo and say **"run the next one"**. To batch unattended with
the legacy queue driver:

```bash
./runqueue.sh -n 20
```

`runqueue.sh` commits locally by default. Its `--push` flag is an explicit
deploy-triggering opt-in; the active `run.sh` service instead publishes only approved
chapters and integration boundaries.

Active pipeline stages use `gpt-5.6-terra` at High effort. The legacy queue
driver uses `gpt-5.6-sol` at High effort. Use `./run.sh doctor` to verify the
local Codex setup and `./run.sh --dry-run next` to inspect a stage without
mutating the repository.

For fully unattended operation, run `./run.sh start` once. It installs a
per-user launchd service whose plist points to the repository-owned
`scripts/pipeline-supervisor.sh`, so reboots do not lose the executable. The
supervisor processes one photographer or recovery unit per ephemeral Codex
call, rejects overlapping runners, validates every boundary, retries failures
with bounded backoff, and invokes an automatic recovery role after repeated
failures. It also protects against disk exhaustion by pruning only raw source
originals that are already represented by a complete ingested set in a built
or approved chapter.

An inaccessible photographer never stalls the queue. After one exhaustive
open-source and documented fair-use pass, the source agent records
`sourceMode: "limited"` through the stage command. The chapter then proceeds with
whatever real images were usable, including zero, as a substantive prose-led page
with a visible image-availability explanation. The normal build, critique, and
approval gates still apply; the fallback never fabricates a substitute image or
creates a human-review stop.

On macOS, the service intentionally routes Git through
`scripts/service-bin/git` to `/usr/bin/git`. Full Disk Access is attached to an
executable identity, and Homebrew Git uses a versioned ad-hoc identity that can
change on upgrade. The driver commits every validated atomic unit locally but pushes
only when a chapter is approved, the shared renderer changes, or a wave integration
pass completes. An approval push carries that chapter's accumulated source, build,
and review commits in one deploy-triggering update. Permission, authentication, and
network publication failures retry from a durable marker without spending a Codex
recovery call.

Useful checks:

```bash
./run.sh status
./run.sh service-status
tail -f .pipeline/runtime/supervisor.log
./run.sh stop
```

Runtime files under `.pipeline/runtime/` are local and ignored. Queue state, chapter
artifacts, critiques, ship markers, and local commits remain the durable work journal;
publication-boundary pushes are the production audit trail.

Each unattended invocation is pinned to a machine-readable photographer slug before
Codex starts. Codex cannot publish directly: temporary Git hooks and an invalid child
push URL hold the transaction locally. The parent validates that only the selected
unit changed, runs the full gate, then commits locally. It publishes only an approved
chapter or integration boundary. A globally valid change to the wrong photographer is
rejected as a work-unit boundary violation.
