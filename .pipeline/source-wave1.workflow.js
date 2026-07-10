export const meta = {
  name: 'source-wave1',
  description: 'Source canonical photographs for wave-1 photographers (Blossfeldt, Atget, Lange, Evans): research, download from open institutional sources, verify resolution, write sources.md/NEEDED.md',
  phases: [
    { title: 'Research & Download', detail: 'one agent per photographer: research canonical works, download full-res from Wikimedia/LOC, verify, write sources.md + NEEDED.md' },
    { title: 'Gap-fill', detail: 'top up any photographer with < 8 verified images' },
  ],
}

const REPO = '/Users/darvin/Documents/Projects/darvinyi-deconstructed'

const PHOTOGRAPHERS = [
  {
    slug: 'karl-blossfeldt',
    name: 'Karl Blossfeldt',
    dates: '1865–1932',
    rights: 'Public domain. Urformen der Kunst (1928) and Wundergarten der Natur (1932); author died 1932. Plates published 1928 are PD in the US; treat the set as PD, note the 1932 plates.',
    commons: 'Category:Karl Blossfeldt and Category:Urformen der Kunst on Wikimedia Commons hold the canonical plates.',
    canonical: `Plant close-ups from Urformen der Kunst (1928) / Wundergarten der Natur (1932). Canonical specimens to look for (exact Commons filenames vary — enumerate the category to get them): Aristolochia clematitis (birthwort, coiled buds), Equisetum hyemale (horsetail, segmented stalk), Adiantum pedatum (maidenhair fern, fiddlehead spiral), Impatiens glandulifera (seed capsules), Delphinium, Acanthus mollis, Cucurbita (pumpkin tendrils), Salvia, Blumenbachia, Papaver (poppy seed heads), Dipsacus (teasel), Cornus (dogwood), Saxifraga, Petasites (butterbur), Allium, Cephalaria. Pick 10-12 with the strongest pure geometry (bilateral symmetry, logarithmic spirals, fractal branching). Blossfeldt = the ideal overlay test: single specimen, centered, plain ground.`,
  },
  {
    slug: 'eugene-atget',
    name: 'Eugène Atget',
    dates: '1857–1927',
    rights: 'Public domain. Atget died 1927; all works PD worldwide.',
    commons: 'Category:Photographs by Eugène Atget / Category:Eugène Atget on Wikimedia Commons. BnF Gallica and Getty Open Content also hold high-res Atget; MoMA holds the Abbott-Levy collection.',
    canonical: `"Old Paris" (Vieux Paris) documents. Canonical images to look for: "Boutique, avenue des Gobelins" (mannequins in a shop window), "Coin de la rue de Seine", "Rue des Ursins", the Versailles and Saint-Cloud park studies (statues, urns, misty basins with reflections), "Parc de Sceaux", "L'Éclipse — avril 1912" (crowd craning up at the eclipse — Berenice Abbott's favorite), "Fête du Trône", "Prostitute / Fille publique, La Villette", street trades (Petits Métiers: organ grinder, lampshade seller / marchand d'abat-jour), courtyards and spiral staircases ("Escalier"), tree roots, "Étang de Corot, Ville d'Avray", shopfronts and vitrines with layered reflections, receding cobblestone streets. Pick 10-12 favoring: deep one-point perspective down streets, doorway/arch framing, vitrine reflections and layering, empty-stage geometry.`,
  },
  {
    slug: 'dorothea-lange',
    name: 'Dorothea Lange',
    dates: '1895–1965',
    rights: 'Mixed — source the FSA/OWI-era work, which is US Government work and public domain. Note that "White Angel Breadline" (1933) predates the FSA (her own copyright, held by the Oakland Museum of California) — if you cannot get a clean open-source copy, put it on NEEDED.md with the rights caveat.',
    commons: 'FSA/OWI images live at the Library of Congress (loc.gov, FSA/OWI Black-and-White Negatives) and many are mirrored on Wikimedia Commons (Category:Photographs by Dorothea Lange). For LOC items, append ?fo=json to the item URL to get the highest-res resource links.',
    canonical: `FSA-era documentary. Canonical: "Migrant Mother, Nipomo, California" (1936 — use the iconic tight final frame; the six-frame sequence exists), "Ditched, Stalled, and Stranded, San Joaquin Valley" (1935), "Toward Los Angeles" (1937 — two men walking past the "Next Time Try the Train" billboard), "Tractored Out, Childress County, Texas" (1938 — lone farmhouse, plowed furrows curving around it), "Damaged Child, Shacktown, Elm Grove, Oklahoma" (1936), "Migratory Cotton Picker, Eloy, Arizona" (1940), "Woman of the High Plains, Texas Panhandle" (1938), "Plantation overseer and his field hands, Mississippi Delta" (1936), "Ex-slave with a long memory, Alabama" (1938), "Filipinos cutting lettuce, Salinas" (1935), "Drought refugees / Gas station". Pick 10-12 favoring the pyramid/triangle of Migrant Mother, hands, diagonal breadline, road-as-leading-line, billboard framing.`,
  },
  {
    slug: 'walker-evans',
    name: 'Walker Evans',
    dates: '1903–1975',
    rights: 'Mixed — source the FSA/OWI-era work (1935–1938), which is US Government work and public domain. Note that some pre-FSA (1930–34) and post-FSA work is held by the Met / estate; if only those exist for a title, put it on NEEDED.md.',
    commons: 'FSA/OWI images live at the Library of Congress (loc.gov) and many are mirrored on Wikimedia Commons (Category:Photographs by Walker Evans). The Metropolitan Museum (Open Access) also holds many Evans prints. For LOC items append ?fo=json for the highest-res resource links.',
    canonical: `FSA-era frontal documentary. Canonical: "Allie Mae Burroughs, Hale County, Alabama" (1936 — dead-frontal portrait against vertical board wall), "Floyd Burroughs, cotton sharecropper" (1936), "Bud Fields and his family, Alabama" (1936), "Kitchen wall / Fireplace, Burroughs home" (1936), "Sidewalk and Shopfront, New Orleans" (1935), "Roadside Stand near Birmingham" (1936 — signage), "Penny Picture Display, Savannah" (1936 — grid of studio portraits), "License Photo Studio, New York" (1934), "Bethlehem, Pennsylvania" (1935 — graveyard cross, houses, steel mill stacked in depth), "Negro church, South Carolina" (1936), "Torn Movie Poster" (1930), "Frame houses / Company houses". Pick 10-12 favoring dead-frontality, bilateral symmetry, the wall-as-grid, typologies, and vernacular signage/typography.`,
  },
]

function procedure(p, extra) {
  return `You are the SOURCER for the "Deconstructed" photobook. Work photographer ${p.name} (slug: ${p.slug}, ${p.dates}).

Repo root: ${REPO}
Work ONLY inside ${REPO}. Use absolute paths.

GOAL: assemble a shortlist of the 10-12 most compositionally canonical photographs, download at least 8 of them at high resolution from OPEN institutional sources into raw/${p.slug}/, and write content/${p.slug}/sources.md and content/${p.slug}/NEEDED.md.

RIGHTS BASIS: ${p.rights}

WHERE THE IMAGES LIVE: ${p.commons}

CANONICAL WORKS: ${p.canonical}

STRICT DOWNLOAD PROCEDURE — follow exactly:
1. mkdir -p ${REPO}/raw/${p.slug} and ${REPO}/content/${p.slug}
2. Identify the canonical shortlist. Use WebSearch/WebFetch to confirm titles, dates, and which open collection holds a high-res copy. Favor images that are compositionally canonical AND available at good resolution.
3. Get EXACT filenames. Do NOT guess Wikimedia filenames from memory — wrong names silently return an HTML error page. Enumerate the real files with the MediaWiki API, e.g.:
   curl -sL -A "$UA" "https://commons.wikimedia.org/w/api.php?action=query&list=categorymembers&cmtitle=Category:Photographs%20by%20${encodeURIComponent(p.name)}&cmlimit=200&cmtype=file&format=json"
   (also try the other categories named above). Match the returned File: titles against your canonical list.
4. Download the FULL-RESOLUTION original via Special:FilePath (URL-encode the filename, spaces as %20):
   UA='Mozilla/5.0 (compatible; deconstructed-sourcer/1.0) darvinyi-photobook'
   curl -sL -A "$UA" "https://commons.wikimedia.org/wiki/Special:FilePath/<EXACT_FILENAME>" -o ${REPO}/raw/${p.slug}/NN-short-title.jpg
   Name files NN-short-title.jpg with NN zero-padded from 01, short-title a kebab slug of the title (e.g. 01-migrant-mother.jpg).
   For Library of Congress items: fetch "<item-url>?fo=json", read resources[].image / .files for the largest JPEG/TIFF, and curl that. (If you get a TIFF, convert with: sips -s format jpeg in.tif --out out.jpg.)
   Never bypass logins, paywalls, or download protections.
5. VERIFY EVERY FILE immediately after download — this is mandatory:
   file ${REPO}/raw/${p.slug}/NN-*.jpg      -> must say "JPEG". If it says "HTML", the filename was wrong; the image is NOT there. Delete it and find the correct filename (re-enumerate the category).
   sips -g pixelWidth -g pixelHeight ${REPO}/raw/${p.slug}/NN-*.jpg   -> the LONG edge must be >= 1200px. If smaller, find a higher-res copy (another collection) or drop it.
   Delete any file that fails either check. Keep only clean, verified JPEGs.
6. Anything canonical you cannot fetch cleanly from an open source (paywalled, not digitized openly, only under estate/agency, or below 1200px everywhere) goes into content/${p.slug}/NEEDED.md with the exact title, date, and where a good print/scan lives — then move on. Do not stall.
7. Aim for >= 8 verified images in raw/${p.slug}/. It is fine to end with 8-12.

WRITE content/${p.slug}/sources.md in this exact shape:
---
# ${p.name} — sources

<1-2 sentence orientation: what to look for compositionally in this photographer.>

**Rights basis:** <overall statement for this photographer>

## Shortlist

### 01 — <Title> (<date>)
- **Why it matters:** <one line on the composition — the specific geometry>
- **Source:** <best source URL>
- **Rights:** <rights basis for this image>
- **File:** raw/${p.slug}/01-short-title.jpg (<longEdge>px)   ← or "see NEEDED.md" if not downloaded

### 02 — ...
(continue through the whole shortlist, in NN order)
---

WRITE content/${p.slug}/NEEDED.md in this exact shape (create it even if empty, with a line saying none):
---
# ${p.name} — needed

Canonical images not fetchable cleanly from an open source.

### <Title> (<date>)
- **Where a good print/scan lives:** <institution + URL>
- **Note:** <why not fetchable — paywall / not digitized open / under estate / low-res>
---

DO NOT: edit data/registry.json, run any git command, or ingest/build anything. Those are handled centrally after you finish.
${extra || ''}

Before returning, run: ls -la ${REPO}/raw/${p.slug}/ and for each jpg run sips -g pixelWidth -g pixelHeight, so your reported longEdge values are the real on-disk pixel dimensions.

Return the structured manifest describing exactly what is verified on disk and what went to NEEDED.md.`
}

const MANIFEST_SCHEMA = {
  type: 'object',
  additionalProperties: false,
  required: ['slug', 'downloaded', 'needed', 'summary'],
  properties: {
    slug: { type: 'string' },
    downloaded: {
      type: 'array',
      items: {
        type: 'object',
        additionalProperties: false,
        required: ['n', 'title', 'date', 'file', 'longEdge', 'sourceUrl', 'rights'],
        properties: {
          n: { type: 'integer' },
          title: { type: 'string' },
          date: { type: 'string' },
          file: { type: 'string', description: 'repo-relative path, e.g. raw/karl-blossfeldt/01-aristolochia.jpg' },
          longEdge: { type: 'integer', description: 'actual on-disk long-edge pixels from sips' },
          sourceUrl: { type: 'string' },
          rights: { type: 'string' },
          whyItMatters: { type: 'string' },
        },
      },
    },
    needed: {
      type: 'array',
      items: {
        type: 'object',
        additionalProperties: false,
        required: ['title', 'date', 'whereItLives'],
        properties: {
          title: { type: 'string' },
          date: { type: 'string' },
          whereItLives: { type: 'string' },
          note: { type: 'string' },
        },
      },
    },
    summary: { type: 'string' },
  },
}

phase('Research & Download')
const first = await parallel(PHOTOGRAPHERS.map((p) => () =>
  agent(procedure(p), {
    label: `source:${p.slug}`,
    phase: 'Research & Download',
    schema: MANIFEST_SCHEMA,
    agentType: 'general-purpose',
    effort: 'high',
  })
))

log(`First pass complete: ${first.map((m, i) => `${PHOTOGRAPHERS[i].slug}=${m ? (m.downloaded ? m.downloaded.length : 0) : 'FAILED'}`).join(', ')}`)

phase('Gap-fill')
const filled = await parallel(PHOTOGRAPHERS.map((p, i) => () => {
  const m = first[i]
  const have = m && m.downloaded ? m.downloaded.length : 0
  if (have >= 8) return Promise.resolve(m)
  const extra = `\n\nTHIS IS A GAP-FILL PASS. A previous pass left raw/${p.slug}/ with ${have} verified image(s) — short of the target of 8. First run: ls -la ${REPO}/raw/${p.slug}/ to see what already exists (keep those; do not re-download or duplicate them, continue the NN numbering after the highest existing NN). Find and download MORE canonical images to reach at least 8 verified (>=1200px) JPEGs total, then rewrite content/${p.slug}/sources.md and content/${p.slug}/NEEDED.md to reflect the COMPLETE set now on disk. Return the manifest for the COMPLETE set (everything in raw/${p.slug}/), not just the new ones.`
  return agent(procedure(p, extra), {
    label: `gapfill:${p.slug}`,
    phase: 'Gap-fill',
    schema: MANIFEST_SCHEMA,
    agentType: 'general-purpose',
    effort: 'high',
  })
}))

const manifests = filled.map((m, i) => m || first[i]).filter(Boolean)
log(`Done: ${manifests.map((m) => `${m.slug}=${m.downloaded ? m.downloaded.length : 0}`).join(', ')}`)
return { manifests }
