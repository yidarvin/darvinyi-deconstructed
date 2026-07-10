export const meta = {
  name: 'wave1-chapters',
  description: 'Author the four wave-1 photographer chapters (Blossfeldt, Atget, Lange, Evans) citing overlay claims + analyzer tonal/palette findings',
  phases: [
    { title: 'Author', detail: 'one agent per photographer writes content/<slug>/chapter.mdx' },
    { title: 'Lint', detail: 'per chapter: verify prose-gate + plate-id + citation correctness' },
  ],
}

const _args = typeof args === 'string' ? JSON.parse(args) : args
const slugs = _args.slugs

const AUTHOR_SCHEMA = {
  type: 'object',
  additionalProperties: false,
  properties: {
    slug: { type: 'string' },
    plateCount: { type: 'integer' },
    sections: { type: 'integer' },
    wordCount: { type: 'integer' },
    citesTonal: { type: 'boolean' },
    citesOverlays: { type: 'boolean' },
    settingsHonest: { type: 'boolean' },
    selfCheckClean: { type: 'boolean' },
    note: { type: 'string' },
  },
  required: ['slug', 'plateCount', 'sections', 'selfCheckClean', 'note'],
}

const LINT_SCHEMA = {
  type: 'object',
  additionalProperties: false,
  properties: {
    slug: { type: 'string' },
    prosePass: { type: 'boolean' },
    plateIdsValid: { type: 'boolean' },
    allImagesUsed: { type: 'boolean' },
    noPhotographerH1: { type: 'boolean' },
    fixedSomething: { type: 'boolean' },
    remainingIssues: { type: 'string' },
  },
  required: ['slug', 'prosePass', 'plateIdsValid', 'allImagesUsed', 'noPhotographerH1', 'remainingIssues'],
}

const HOUSE = `HOUSE STYLE — this is a chapter of "Deconstructed: How the Masters Composed the Frame", a teaching photobook. Voice: plain, declarative, confident, specific. Short sentences. No hype. You are explaining to a curious reader WHY these photographs are built the way they are, using the measured overlays as evidence.

HARD PROSE GATE (the build fails on any of these in src/chapters/**, and this chapter is copied there):
- NO em dash (the — character, U+2014). Use a period, a comma, a colon, or restructure. Do not use " -- " as a fake em dash either; just rewrite.
- Avoid en dash (U+2013) too; write ranges as "1898 to 1930" and use a plain hyphen only inside hyphenated words.
- BANNED words/phrases (case-insensitive): "delve", "tapestry", "at its core", "navigate the complexity/complexities", "it's important to note", "important to note that", "in today's fast-paced", "whether you're", "it's not just", "worth noting", "in summary", "to recap", "not just a X but Y".
- No TODO markers, no {{PLACEHOLDER}} tokens.

STRUCTURE (MDX, no import lines needed — Plate, Callout, ExerciseCard are global):
- Do NOT start with an h1 of the photographer's name. The page already renders the name and dates as its heading. Start straight into prose (a lead of 2 to 3 short paragraphs establishing this photographer's compositional signature and what the overlays reveal).
- Then 3 to 5 sections, each with a "## " header naming a compositional idea (e.g. "## Frontality", "## Deep space and the vanishing point", "## The subject off-center"). Group the plates by idea.
- EVERY ingested image must appear exactly once as a <Plate>, across all sections, and nowhere twice. Use each image's real id.
- Plate syntax: <Plate slug="SLUG" id="IMAGE_ID" label="Work title, year if known" caption="a one or two sentence compositional read that names what the overlay marks" />
  - label = the photograph's title (and year if the record has one; otherwise omit the year). Keep it short.
  - caption = the compositional read. It MUST reference the actual overlay primitive(s) for that image (the symmetry axis and where it sits, the vanishing point above/below/in frame, the leading line, the frame-in-frame, the subject anchor, the golden-spiral pole), in plain words. Do not invent a primitive the overlay does not contain.
- Weave the analyzer's numeric findings into the prose for several plates: tonal mean/std, p05 and p95 (the near-black and near-white points, i.e. the tonal range), edge_density, and the dominant palette hexes described in words (e.g. "a near-black to chalk-white range", "warm gray midtones"). Cite at least a few concrete numbers so the reader sees the measurement behind the claim.
- Near the end, one <Callout> on camera settings, drawn from research.md: state honestly that no per-frame aperture or shutter survives and what the working method implies. Never invent an f-stop or shutter speed.
- End with exactly two <ExerciseCard n="01" title="..."> ... </ExerciseCard> blocks giving the reader something to try (a compositional exercise in the photographer's mode).

Cite the overlays and the numbers HONESTLY. If an overlay's claim is modest, say so. Accuracy over drama.`

phase('Author')

const results = await pipeline(
  slugs,
  (s) =>
    agent(
      `Write the chapter file content/${s.slug}/chapter.mdx for the photographer "${s.name}" (${s.dates}), group "${s.part}", in the Deconstructed photobook. Repo root is your current directory.

READ FIRST (all under content/${s.slug}/):
- research.md   (technique, era, printing, and the HONEST settings finding — mirror its settings conclusion)
- sources.md    (which specific works these are)
- every overlays/*.json   (each has "notes" = the compositional thesis, and "primitives" = the measured claims you must cite by their labels/positions)
- every analysis/*.json    (use "tonal" {mean,std,p05,p95,edge_density} and "palette" hex list for the numeric evidence)
List the image ids with:  ls content/${s.slug}/overlays/
There are that many plates; EVERY one must appear exactly once.

${HOUSE}

When done, WRITE the finished MDX to content/${s.slug}/chapter.mdx (create/overwrite it). Then SELF-CHECK your own file and fix any hit before returning:
  grep -nP "\\x{2014}|\\x{2013}" content/${s.slug}/chapter.mdx        (must be empty: no em/en dash)
  grep -niE "delve|tapestry|at its core|important to note|whether you're|worth noting|in summary|to recap" content/${s.slug}/chapter.mdx   (must be empty)
  grep -c "<Plate " content/${s.slug}/chapter.mdx     (must equal the number of images)
Confirm no h1 with the photographer's name, no TODO, no {{PLACEHOLDER}}. Set selfCheckClean=true only if all greps are clean and every image id is used exactly once. Return the structured result.`,
      { label: `author:${s.slug}`, phase: 'Author', schema: AUTHOR_SCHEMA, agentType: 'general-purpose', effort: 'high' }
    ),
  // Lint stage: independent check + minimal fix, no barrier.
  (authored, s) =>
    agent(
      `Lint and, if needed, minimally FIX the chapter content/${s.slug}/chapter.mdx (already written). Repo root is your current directory. Do not rewrite good prose; only correct concrete gate failures.

Run and inspect:
1. grep -nP "\\x{2014}|\\x{2013}" content/${s.slug}/chapter.mdx  — any em dash (U+2014) is a HARD build failure; replace by restructuring (period/comma/colon or plain "to" for ranges). En dash (U+2013) is a warning; replace too.
2. grep -niE "\\bdelve\\b|\\btapestry\\b|at its core|navigate the complexit|it's important to note|important to note that|in today's fast-paced|whether you're|it's not just|worth noting|in summary|to recap" content/${s.slug}/chapter.mdx — any hit must be reworded.
3. grep -nE "TODO:|\\{\\{[A-Z_]+\\}\\}" content/${s.slug}/chapter.mdx — must be empty.
4. Plate ids: every id in a <Plate ... id="X"> must be a real file — check each against:  ls content/${s.slug}/overlays/  and ls content/${s.slug}/images/ . Every image must be used EXACTLY once (no missing, no duplicate).
5. The file must NOT contain an h1 (a line starting with "# ") of the photographer's name; "## " section headers are fine.
6. Sanity: captions should reference overlay primitives that actually exist in that image's overlays/<id>.json; flag (do not fabricate) any caption citing a primitive the overlay lacks.

Apply minimal edits to content/${s.slug}/chapter.mdx to make 1-5 pass. Return the structured result; put anything you could not safely auto-fix in remainingIssues.`,
      { label: `lint:${s.slug}`, phase: 'Lint', schema: LINT_SCHEMA, agentType: 'general-purpose', effort: 'medium' }
    ).then((lint) => ({ authored, lint, slug: s.slug }))
)

const clean = results.filter(Boolean)
log(`chapters done: ${clean.length}/${slugs.length}`)
for (const r of clean) {
  const a = r.authored || {}
  const l = r.lint || {}
  log(`${r.slug}: plates=${a.plateCount} sections=${a.sections} prosePass=${l.prosePass} idsValid=${l.plateIdsValid} allUsed=${l.allImagesUsed} noH1=${l.noPhotographerH1} issues=${l.remainingIssues || 'none'}`)
}

return { chapters: clean }
