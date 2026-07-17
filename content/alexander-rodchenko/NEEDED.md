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

## 2026-07-16 institutional API recovery recheck

- **Wikimedia Commons MediaWiki API** — searched file-namespace results and
  the `Category:Photographs by Alexander Rodchenko` route. The authorial files
  available through the public API remain undersized: *1915 Dance by
  Rodchenko* is 429×700px and *Portrait of N. A. Rusakov* is 594×800px.
  The 1200px-and-larger hits are portraits **of** Rodchenko, gallery and
  exhibition photographs, labels, or reconstructed designs; none is a
  Rodchenko-made photograph. No file was downloaded.
- **Art Institute of Chicago public API** — checked the collection records for
  [*Vladimir Mayakovsky* (1924, printed 1940s)](https://api.artic.edu/api/v1/artworks/229011),
  [*Untitled (Composition with Compass and Ruler)* (1915)](https://api.artic.edu/api/v1/artworks/202405),
  and [*Pole Vault (Pryzhok s shestom)* (1936)](https://api.artic.edu/api/v1/artworks/90859).
  All identify Rodchenko as the maker but return `is_public_domain: false`.
  The API image identifiers were therefore not treated as an open-download or
  reuse grant, and no rendition was retrieved.
- **Met Collection API** — rechecked *Asphalting a Street in Moscow* at
  [object 283286](https://collectionapi.metmuseum.org/public/collection/v1/objects/283286).
  It remains `isPublicDomain: false` with empty `primaryImage` and
  `primaryImageSmall` fields.

This repeat recovery found no qualifying source. The unit remains at **0 / 4**
and must stay `pending`; the next automated attempt should use the archival
and institutional routes already listed above.

## 2026-07-16 archival-scan recovery recheck

- **Internet Archive, *Ot Moskvy Kupecheskoy k Moskve
  Sotsialisticheskoy* (1932)** — inspected the publicly available
  [archive metadata and 24-page scan](https://archive.org/details/O.1932). The
  digitized album is a 4000px-class full-page scan and its metadata carries a
  Public Domain Mark, but that is metadata for the uploaded scan, not an
  express reuse grant from the credited photographers. Contemporary catalogue
  descriptions identify the album as a mixed portfolio of photographs by
  Rodchenko, V. Savelyev, Kazachinsky, E. Langman, and B. Ignatovich; an
  article on Rodchenko’s work confirms that the album includes his Moscow
  photographs, including work connected with the Planetarium and Narkomfin
  House. The scan does not identify the author of each individual plate, and
  the Rodchenko works remain subject to the artist/estate rights issue noted
  above. No page extract was ingested: neither the page image nor the archive
  label establishes a lawful open reuse basis for an individual Rodchenko
  photograph.
- **Internet Archive / Letterform Archive, *Novyi LEF* no. 8–9 (1927)** —
  checked the item metadata and available image derivatives. It is explicitly
  in the `stream_only` collection and provides no licence or rights statement;
  it was not treated as an open download source. No page image was taken.

The archival scan route produced useful authorship evidence, but no qualifying
openly reusable original. The unit remains at 0 / 4 and must stay `pending`.

## 2026-07-16 direct public-API verification

- **Wikimedia Commons MediaWiki API** — repeated file-namespace search for
  `Alexander Rodchenko`. It still returns principally portraits **of** the
  photographer, Still Art Foundation exhibition documentation, reconstructed
  designs, and unrelated mentions. The Rodchenko-authored scan candidates remain
  undersized: *Dance* (1915) is 429×700px and *Portrait of N. A. Rusakov*
  (1912) is 594×800px. No candidate satisfies both the authored-work and 1200px
  requirements.
- **Met Collection API** — [*Asphalting a Street in Moscow* (object
  283286)](https://collectionapi.metmuseum.org/public/collection/v1/objects/283286)
  still reports `isPublicDomain: false` and has empty `primaryImage` and
  `primaryImageSmall` values.
- **Art Institute of Chicago API** — [*Vladimir Mayakovsky* (229011)](https://api.artic.edu/api/v1/artworks/229011)
  still reports `is_public_domain: false`. Its image identifier was not used as
  a reuse grant or downloaded.

The public institutional routes checked in this recovery do not yield a lawful
open master. The unit remains at **0 / 4** and stays `pending`; retry the
explicitly licensed archive and institutional routes listed above on a later
source invocation.

## 2026-07-16 open-collection recovery recheck

- **Wikimedia Commons MediaWiki API** — queried the file namespace for
  `Alexander Rodchenko` and requested original-file metadata, dimensions, and
  licence fields for the authored candidates. The only explicitly public-domain
  originals found are *Dance* (1915), **429×700px**,
  [*Portrait of N. A. Rusakov* (1912)](https://commons.wikimedia.org/wiki/File:Portrait_of_N._A._Rusakov_by_Aleksandr_Rodchenko_(1912).jpg),
  **594×800px**, and *Mess-Mend 8*, **450×673px**. Each is below the required
  1200px long edge, so none was downloaded. The remaining search results are
  portraits of Rodchenko, exhibition documentation, or reconstructions rather
  than photographs made by him.
- **Metropolitan Museum of Art Open Access API** — rechecked
  [*Asphalting a Street in Moscow* (283286)](https://collectionapi.metmuseum.org/public/collection/v1/objects/283286).
  The record remains `isPublicDomain: false` with blank `primaryImage` and
  `primaryImageSmall` values. The public collection pages for canonical works
  including *Vladimir Majakowski*, *Pine Trees in Pushkin Park*, and *Student
  on a Roof Ledge, Moscow* explicitly say the image cannot be enlarged,
  viewed full-screen, or downloaded.
- **Art Institute of Chicago API** — rechecked
  [*Vladimir Mayakovsky* (229011)](https://api.artic.edu/api/v1/artworks/229011).
  It remains `is_public_domain: false`; its API image identifier was therefore
  not used as an image source.
- **High Museum of Art / International Center of Photography** — checked the
  publicly indexed Rodchenko holdings as an alternate institutional route.
  The High Museum’s records for works such as *Lathe Machine Tools* and *Canal
  Construction, the Orchestra* credit the Rodchenko-Stepanova Archive and
  state © Estate of Alexander Rodchenko/RAO, Moscow/VAGA at Artists Rights
  Society. ICP’s archive indexes thirteen Rodchenko-related items, but offers
  no stated open-license or original-download route. Neither source provides a
  qualifying reusable master.

This pass again found **0 / 4** qualifying files. The stage remains `pending`;
a future source invocation should re-run the listed archival and institutional
routes in case an expressly licensed, high-resolution release appears.

## 2026-07-16 collection-route recovery recheck

- **Science Museum Group Collection** — examined the public [portfolio of 21
  Rodchenko photographs](https://collection.sciencemuseumgroup.org.uk/objects/co205135/portfolio-of-21-black-and-white-photographs-by-rodchenko), including its stated IIIF-manifest route. The collection object is a **1990** Moscow portfolio, printed from original plates. The site releases catalogue data under CC0, but explicitly credits the artwork images © The Board of Trustees of the Science Museum, London. Its data licence does not grant reuse of the portfolio’s image files, so no IIIF rendition was retrieved.
- **Library of Congress Prints & Photographs** — rechecked the separately
  catalogued 1924 [*Portet materi* / *Mother*](https://www.loc.gov/pictures/item/2002706148/), credited to Rodchenko and offered as a film-copy negative derivative. The public record offers a JPEG/TIFF derivative but says “Rights status not evaluated.” Because this is not an express public-domain or open-license basis for the photograph, it was not treated as a qualifying open master and was not downloaded.

This additional recovery still yields **0 / 4** qualifying files. The stage
must remain `pending`; retry only an explicit open licence or direct reuse grant
from the Rodchenko/Stepanova Archive, MAMM, or another holding institution.

## 2026-07-16 public-source recovery recheck (current invocation)

- **Library of Congress JSON / *Portet materi* (Mother), cph.3b25450** —
  re-queried the public metadata endpoint. It still identifies the resource as a
  black-and-white film-copy negative and explicitly reports: “Larger images are
  only available at the Library of Congress.” The public service rendition is
  the 150px JPEG; no open master or express reuse statement was exposed.
- **Wikimedia Commons MediaWiki API** — re-ran a file-namespace search with
  original dimensions and licence metadata. The qualifying-attribution results
  remain the undersized *Dance* (429×700px) and *Portrait of N. A. Rusakov*
  (594×800px). The 1200px-and-larger results are photographs **of** Rodchenko,
  exhibition documentation, or unrelated material, not photographs made by
  him.
- **Met Collection API** — rechecked *[Student on a Roof Ledge, Moscow]*
  ([object 286071](https://collectionapi.metmuseum.org/public/collection/v1/objects/286071)).
  It remains `isPublicDomain: false` with empty `primaryImage` and
  `primaryImageSmall` fields; no open rendition was downloaded.
- **Saint Louis Art Museum, *Woman with a Camera* (20992)** — the public
  collection record is a useful canonical-work lead, but its site presented a
  Cloudflare access-control challenge to the automated request. No attempt was
  made to bypass that control, and no image was retrieved. A future pass may
  use a stated open API or other expressly licensed institutional rendition.

This recovery again yields **0 / 4** qualifying files. The stage remains
`pending`; no substitute image, display photograph, screen capture, or
undersized scan was ingested.

## 2026-07-16 final public-source verification (this invocation)

- **Wikimedia Commons MediaWiki API** — queried the public file namespace for
  `Rodchenko` with original URL, dimensions, creator, and licence metadata.
  The two verified photographs made by Rodchenko and labelled public domain
  remain [*Dance* (1915)](https://commons.wikimedia.org/wiki/File:1915_Dance_by_Rodchenko.jpg),
  **429 × 700px**, and [*Portrait of N. A. Rusakov* (1912)](https://commons.wikimedia.org/wiki/File:Portrait_of_N._A._Rusakov_by_Aleksandr_Rodchenko_(1912).jpg),
  **594 × 800px**. Both are below the 1200px long-edge floor. Larger hits were
  checked for authorship and rejected because they depict Rodchenko, document
  exhibitions, or reproduce reconstructed objects rather than being his
  photographs.
- **Metropolitan Museum of Art API** — [*Asphalting a Street in Moscow*
  (283286)](https://collectionapi.metmuseum.org/public/collection/v1/objects/283286)
  still returns `isPublicDomain: false` and blank `primaryImage` fields.
- **Art Institute of Chicago API** — [*Vladimir Mayakovsky*
  (229011)](https://api.artic.edu/api/v1/artworks/229011) still returns
  `is_public_domain: false`; its image identifier was not treated as a reuse
  grant.
- **Science Museum Group portfolio route** — a fresh request to the public
  portfolio page returned HTTP 403. This is an access-control response; it was
  not bypassed. The previously documented rights route remains the appropriate
  future retry path if an openly licensed master is released.

No file meets both the explicit reuse-rights requirement and the 1200px
long-edge requirement. The set remains **0 / 4**, so `alexander-rodchenko`
must stay `pending`; no registry transition was made.

## 2026-07-16 public API and cross-collection recovery recheck

- **Wikimedia Commons MediaWiki API** — queried 50 file-namespace matches for
  `Alexander Rodchenko`, requesting original dimensions and licence metadata.
  The only identified photographs *made by* Rodchenko with an explicit
  public-domain label remain *Dance* (1915), **429 × 700px**, and *Portrait of
  N. A. Rusakov* (1912), **594 × 800px**. Larger results are portraits of
  Rodchenko, gallery/exhibition documentation, or reconstructions, not works
  by him. Neither authored file reaches the 1200px long-edge floor.
- **Library of Congress public JSON** — rechecked the separate P&P records for
  *Dance* (cph.3b25447), *Koneco [circus]* (cph.3b25449), *Portet materi
  [mother]* (cph.3b25450), and *Portrait of Stepanova* (cph.3b08661). Each
  exposes only its 150px service JPEG in the public response. The *Mother*
  record marks access restricted and says “Rights status not evaluated”; it is
  not an express open-reuse grant. No reading-room material or protected
  rendition was accessed.
- **Europeana public search API** — queried cross-collection records for
  `Alexander Rodchenko`. Returned collection results were marked
  `InC`/`InC-EDU` and concerned designs or constructions rather than an
  openly licensed photographic master. No candidate supplied both Rodchenko
  authorship and an open high-resolution image.
- **Internet Archive metadata search** — the sole direct creator-indexed item
  is a 1983 monograph, not an expressly licensed high-resolution source for
  individual photographs. It was not treated as permission to extract or
  reuse plates.

This recovery again yields **0 / 4** qualifying files. The stage remains
`pending`. A later pass should retry only an explicit open release from the
Rodchenko/Stepanova Archive, MAMM, or another institutional holder; do not
infer reuse permission from catalogue metadata, a service thumbnail, or a
digitized book scan.

## 2026-07-16 institutional and public-API recovery (current invocation)

- **Wikimedia Commons MediaWiki API** — repeated a file-namespace search and
  requested original dimensions plus licence metadata. The only verified
  Rodchenko-authored public-domain photographs remain [*Dance* (1915)](https://commons.wikimedia.org/wiki/File:1915_Dance_by_Rodchenko.jpg),
  **429 × 700px**, and [*Portrait of N. A. Rusakov* (1912)](https://commons.wikimedia.org/wiki/File:Portrait_of_N._A._Rusakov_by_Aleksandr_Rodchenko_(1912).jpg),
  **594 × 800px**. Both are below the 1200px long-edge floor. Larger hits were
  photographs of Rodchenko, exhibition documentation, or reconstructions, not
  photographs made by him.
- **Metropolitan Museum of Art API** — *[Asphalting a Street in Moscow]*
  ([283286](https://collectionapi.metmuseum.org/public/collection/v1/objects/283286))
  remains `isPublicDomain: false` with blank `primaryImage` and
  `primaryImageSmall` fields.
- **Art Institute of Chicago API** — *[Vladimir Mayakovsky]*
  ([229011](https://api.artic.edu/api/v1/artworks/229011)) remains
  `is_public_domain: false`; its image identifier was not used as an image
  source.
- **Europeana public search API** — a direct cross-collection search returned
  construction/design records marked `InC` or `InC-EDU`, not an openly licensed
  photographic master by Rodchenko.
- **Library of Congress P&P JSON** — the public [*Portet materi* / *Mother*
  record](https://www.loc.gov/pictures/item/2002706148/?fo=json) again exposed
  catalogue metadata and its resource handle only; it did not supply an
  expressly open, high-resolution reproduction. No protected or
  reading-room-only rendition was accessed.

No file meets both the explicit reuse-rights requirement and the 1200px
long-edge requirement. The set remains **0 / 4**, so `alexander-rodchenko`
stays `pending`; no registry transition was made. Retry only an explicit open
release from a rights holder or an institutional collection.

## 2026-07-16 final institutional cross-check (current invocation)

- **Wikimedia Commons MediaWiki API** — a new public file-namespace query,
  including original dimensions and licence metadata, still finds only two
  clearly identified, Rodchenko-authored public-domain photographs: [*Dance*
  (1915)](https://commons.wikimedia.org/wiki/File:1915_Dance_by_Rodchenko.jpg),
  **429 × 700px**, and [*Portrait of N. A. Rusakov*
  (1912)](https://commons.wikimedia.org/wiki/File:Portrait_of_N._A._Rusakov_by_Aleksandr_Rodchenko_(1912).jpg),
  **594 × 800px**. Both fail the 1200px long-edge floor. Every larger result
  inspected was a photograph *of* Rodchenko, exhibition documentation, or a
  reconstruction rather than a photograph made by him.
- **J. Paul Getty Museum** — the collection record [106HNF](https://www.getty.edu/art/collection/object/106HNF)
  is a useful additional canonical-work lead (1932 negative; 1979 print), but
  its embedded rights statement is `InC 1.0`. Its IIIF service was therefore
  not used as an open source or downloaded.
- **Science Museum Group** — a direct request to the public [portfolio of 21
  photographs](https://collection.sciencemuseumgroup.org.uk/objects/co205135/portfolio-of-21-black-and-white-photographs-by-rodchenko)
  returned HTTP 403. This technical access control was not bypassed; its
  catalogue/IIIF route remains only a future retry path if the institution
  publishes an expressly reusable rendition.

No qualifying open master was found. The set remains **0 / 4** and the
registry must remain `pending`; no image was downloaded or substituted.
