# Alexander Rodchenko — automated source recovery log

**Result:** no files were ingested. This is an automated recovery diagnostic, not a request for a person to supply assets. The next source pass must retry the routes below before considering this unit complete.

## What was checked

1. **Library of Congress, Alexandr Rodchenko Museum Series Portfolio, number 1, classic images** — [portfolio record](https://www.loc.gov/pictures/item/2004674630/) and [*Fire Escape* record](https://www.loc.gov/item/2010646250/). LOC’s JSON/resource page exposes only a 150px service thumbnail for *Fire Escape* and says full online access is available only at the Library. No master TIFF/JP2 or IIIF image service was exposed; no access control was bypassed. The portfolio was published in 1994, so it is not an open substitute for the 1925 negative.
2. **Metropolitan Museum of Art Collection API** — queried objects [283286](https://www.metmuseum.org/art/collection/search/283286) (*Asphalting a Street in Moscow*), [265574](https://www.metmuseum.org/art/collection/search/265574) (*Pine Trees in Pushkin Park*), [286071](https://www.metmuseum.org/art/collection/search/286071) (*Student on a Roof Ledge*), and [283288](https://www.metmuseum.org/art/collection/search/283288) (*Foxtrot*). Each API record has `isPublicDomain: false`, an empty `primaryImage`, and the public page says the image cannot be enlarged, viewed full-screen, or downloaded.
3. **MoMA collection / Object:Photo records** — checked *Mother* (56406), *Guard at the Shukhov Radio Tower* (56403), *Pioneer Girl* (51740), *Pioneer with a Bugle* (56414), and *Girl with a Leica* (83882). The records verify the canonical works and dates, but MoMA’s licensing language directs reproduction requests to rights partners; *Mother* is explicitly marked © 2026 Aleksandr Rodchenko / licensed by VAGA. No image was taken from display or installation photography.
4. **Multimedia Art Museum, Moscow / Google Arts & Culture** — the public record for [*The Stairs*](https://artsandculture.google.com/asset/the-stairs-aleksandr-rodchenko/OQG1WAhut_JamA?hl=en) identifies the holding institution and © MAMM. It did not provide a direct open-download/reuse route.
5. **MOMAT / Art Platform Japan** — the [*Stairs* collection record](https://artplatform.go.jp/en/collections/W1104289) was checked; it expressly says the work image cannot be downloaded or republished.
6. **Wikimedia Commons API and category/search recovery** — searched the Alexander Rodchenko category, file search, and creator-text records. The few files actually authored by Rodchenko are scans at 358–800px long edge (*Elsa Triolet*, *Lori Len*, *Mess-Mend*, *Portrait of N. A. Rusakov*, and *Dance*)—all below the 1200px floor. Other high-resolution results are photographs **of** Rodchenko, exhibition-installation views, or reconstructions; they are not substitute Rodchenko photographs and were rejected. Commons also has an openly licensed 2839×2110 portrait of Rodchenko in Paris, but he is a subject, not its photographer.

## Next lawful retry routes

1. Query the Rodchenko/Stepanova Archives and the Multimedia Art Museum, Moscow for an expressly licensed, downloadable high-resolution educational/open-collection release of the 1924–35 negatives. Use only a stated open licence or a direct permission/reuse grant.
2. Recheck LOC’s Prints & Photographs records for an eventual `LC-DIG` master or a public IIIF endpoint. Do not infer reuse rights from the thumbnail or scrape the reading-room-only material.
3. Recheck Commons and institutional APIs for a new high-resolution file with an explicit licence. Verify both author attribution and long edge before ingesting.
4. If four qualifying files become available, download only those originals to `raw/alexander-rodchenko/`, verify they open and meet 1200px, update `sources.md`, then use `python3 scripts/set_stage.py alexander-rodchenko sourced`.

## 2026-07-16 recovery recheck

- **Wikimedia Commons public API** — repeated a file-namespace search for
  `Alexander Rodchenko` and queried the available creator/category listing.
  The high-resolution hits are photographs *of* Rodchenko, exhibitions, labels,
  or reconstructed objects, rather than photographs made by him. The only
  identified Rodchenko-authored files remain below the 1200px threshold (for
  example *Portrait of N. A. Rusakov*, 594×800px, and *Dance*, 429×700px).
  No file was downloaded.
- **Met Collection API** — rechecked [*Asphalting a Street in
  Moscow*](https://collectionapi.metmuseum.org/public/collection/v1/objects/283286).
  It remains `isPublicDomain: false` with empty `primaryImage` and
  `primaryImageSmall` fields. This confirms there is still no open master at
  that holding.

The unit remains at 0 / 4 qualifying files and stays `pending`. Continue with
the lawful retry routes above on a future source pass; do not substitute images
of the photographer, exhibition views, display photographs, or undersized scans.
