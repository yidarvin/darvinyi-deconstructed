verdict: approve

## Critique round — 2026-07-24

### Required fixes

1. **08-springs-landfall — false overlay feature claim.** `polyline[0]`, labeled `boat rim to flowered stern`, runs from the bow diagonally through the dress and flower mass; it does not trace a boat rim. Re-trace it on the rim, relabel it to the actual feature it follows, or remove it. The separate lower-rim polyline does not cure this false claim.
2. **10-hide-your-eyes — false overlay feature claim.** The `frame_in_frame` labeled `arched aperture` places its bracket legs in open sky/inside the aperture and fails to bound the actual large arch. Re-spec a truthful bound/feature (or replace it with an appropriate primitive and label).
3. **Chapter record accuracy — Buffalo Gal date.** `chapter.mdx` labels *Buffalo Gal* “2021,” while `sources.md` and `research.md` establish only that *The Ties That Bind* is a 2021 series; the individual work is recorded as undated. Change the plate label to retain that distinction.
4. **Chapter/source record accuracy — hand-drawn-elements claim.** `chapter.mdx` opening and `sources.md` opening generalize hand-drawn elements to Chambers’s overall photomontage process. The research record supports separately photographed elements generally, but confines the photographed-or-hand-drawn statement to the *Declaration* series. Qualify the claim to that series or remove it.
5. **Source integrity — licensing contact link.** `sources.md` ends the contact URL with a terminal period inside the link, which resolves to a 404. Correct it to the traceable artist contact endpoint without the punctuation so the documented fair-use licensing route remains usable.

### Advisory (non-blocking)

- `03-a-view-from-the-bridge`, `04-one-oar-out`, `08-springs-landfall`, `09-aground`, and `12-genesis` each have a semantic physical-feature line that the geometric scorer cannot corroborate. The visual pass supports the named balustrade, boat hull/rim, branch, or stone wall; their passing normal scores remain sufficient. Refining those paths could reduce future scorer warnings but is not required.
- Align the per-image “Why it matters” text in `sources.md`, especially for `06-late-for-dinner`, with the composition actually discussed in the chapter so the fair-use teaching rationales are clearer.
- The individual source URLs, artist attribution, four-factor fair-use records, manifest dimensions, analysis-backed chapter measurements, and camera-settings caveat were otherwise verified.

## Resolution — 2026-07-24

1. Re-ran the composition-analysis loop for *Spring's Landfall*: removed the false diagonal rim claim, retained the visible white-hull contour, rendered and visually checked the proof, and scored 94/100.
2. Re-ran the composition-analysis loop for *Hide Your Eyes*: replaced the false rectangular aperture bracket with a polyline on the large arch's actual edge, rendered and visually checked the proof, and scored 100/100.
3. Corrected *Buffalo Gal* to `undated (*The Ties That Bind* series, 2021)`.
4. Limited the photographed-or-hand-drawn claim to the *Declaration* series in both the chapter and source record.
5. Removed the terminal period from the artist licensing-contact URL; the resulting endpoint returns HTTP 200.

Re-verified critique history: 2026-07-24 round 1 (the only prior round). All five required fixes remain present in the current overlays, proofs, chapter, and source record.

## Critique round — 2026-07-24

### Required fixes

None. The prior round's resolved corrections remain materially intact: *Spring's Landfall* traces the visible white hull rather than a false rim diagonal; *Hide Your Eyes* traces the actual arch edge; *Buffalo Gal* remains individually undated; and the process and licensing records retain their supported scope and live contact endpoint.

### Advisory (non-blocking)

None. Every proof was visually checked against its current overlay, all twelve specs pass the composition scorer (94–100), the chapter's quoted analyzer values are within the stated rounding tolerance, and every documented portfolio, display-derivative, and licensing link returned HTTP 200 on review.
