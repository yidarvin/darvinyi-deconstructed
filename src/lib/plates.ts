// plates.ts --- typed access to the photobook's plates. A "plate" is one ingested
// photograph plus the overlay spec drawn over it. The three artifacts a plate needs
// live under content/<slug>/ and are pulled in at build time with import.meta.glob:
//
//   images/<id>.jpg      the ingested 1600px photograph (asset URL)
//   overlays/<id>.json   the overlay spec the OverlayRenderer draws
//   manifest.json        per-image natural dimensions (for the SVG viewBox)
//
// A chapter references a plate by (slug, id) via the <Plate> MDX component; nothing
// is hand-wired per image. Overlays that have not been built yet are simply absent
// from the map, and <Plate> falls back to showing the bare photograph.
import type { OverlaySpec } from "../components/OverlayRenderer";

interface ManifestEntry {
  file: string;
  width: number;
  height: number;
  sha1?: string;
  source?: string;
  exif?: Record<string, string>;
}

export interface Plate {
  slug: string;
  id: string;
  src: string;
  width: number;
  height: number;
  spec?: OverlaySpec;
}

const imageUrls = import.meta.glob("../../content/*/images/*.jpg", {
  query: "?url",
  import: "default",
  eager: true,
}) as Record<string, string>;

const overlaySpecs = import.meta.glob("../../content/*/overlays/*.json", {
  import: "default",
  eager: true,
}) as Record<string, OverlaySpec>;

const manifests = import.meta.glob("../../content/*/manifest.json", {
  import: "default",
  eager: true,
}) as Record<string, ManifestEntry[]>;

/** ".../content/<slug>/images/<id>.jpg" -> { slug, id }. */
function parsePath(path: string): { slug: string; id: string } | null {
  const m = path.match(/\/content\/([^/]+)\/[^/]+\/([^/]+)\.(?:jpg|json)$/);
  if (!m) return null;
  return { slug: m[1], id: m[2] };
}

function slugOfManifest(path: string): string | null {
  const m = path.match(/\/content\/([^/]+)\/manifest\.json$/);
  return m ? m[1] : null;
}

// slug -> id -> ManifestEntry, so a plate can find its natural dimensions.
const dims: Record<string, Record<string, ManifestEntry>> = {};
for (const [path, entries] of Object.entries(manifests)) {
  const slug = slugOfManifest(path);
  if (!slug || !Array.isArray(entries)) continue;
  const byId: Record<string, ManifestEntry> = {};
  for (const e of entries) {
    byId[e.file.replace(/\.jpg$/, "")] = e;
  }
  dims[slug] = byId;
}

const specs: Record<string, Record<string, OverlaySpec>> = {};
for (const [path, spec] of Object.entries(overlaySpecs)) {
  const parsed = parsePath(path);
  if (!parsed) continue;
  (specs[parsed.slug] ??= {})[parsed.id] = spec;
}

const plates: Record<string, Record<string, Plate>> = {};
for (const [path, src] of Object.entries(imageUrls)) {
  const parsed = parsePath(path);
  if (!parsed) continue;
  const { slug, id } = parsed;
  const dim = dims[slug]?.[id];
  (plates[slug] ??= {})[id] = {
    slug,
    id,
    src,
    width: dim?.width ?? 1600,
    height: dim?.height ?? 1600,
    spec: specs[slug]?.[id],
  };
}

export function getPlate(slug: string, id: string): Plate | undefined {
  return plates[slug]?.[id];
}

/** All plates for a photographer, ordered by id (the ingest naming is zero-padded). */
export function platesForSlug(slug: string): Plate[] {
  return Object.values(plates[slug] ?? {}).sort((a, b) => a.id.localeCompare(b.id));
}
