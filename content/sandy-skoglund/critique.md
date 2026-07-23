verdict: revise

## Critique round — 2026-07-23

### Required

1. `01-accessories`: The `FLOOR / WALL SEAM` horizon line at `y: 0.75` runs through the foreground floor, below the visible wall/floor boundary. Move it to the actual boundary or remove/relabel the primitive.
2. `02-spoons`: The `FLOOR / WALL SEAM` at `y: 0.771` likewise crosses open foreground floor rather than the visible rear wall/floor transition. Move it to the actual boundary or remove/relabel it.
3. `04-radioactive-cats`: The `FLOOR PLANE` horizon line at `y: 0.824` cuts through foreground cats and open floor; it does not trace a dominant floor edge or plane boundary. Replace it with a truthful structural primitive, or omit it.
4. `11-the-cocktail-party`: The `FLOOR / WALL SEAM` at `y: 0.746` lies below the visible wall/floor transition, across foreground floor texture. Move it to the real seam or remove/relabel it.
5. Correct the contradictory visible-colour descriptions in `sources.md`: *Hangers* is described there as red hangers in a green room although its supplied image and chapter show blue hangers against yellow/pink; *Radioactive Cats* is called a pink room although the supplied image is gray-green; and *Ferns* is called a blue interior although the supplied image is tan/olive. The source notes must not conflict with the images they document.

### Advisory (non-blocking)

- `05-ferns`: The `SEATED FIGURE` ellipse also encompasses the rear standing figure. It still clearly identifies the central seated foreground figure, but tightening it or using a group label would improve precision.
- `10-atomic-love`: The `CENTRAL COUPLE` ellipse reads broadly as a central figure grouping amid the patterned room. A less specific label would be clearer if this overlay is revisited.
- The cited direct image URLs were reachable without authentication and all twelve fair-use entries provide a per-image four-factor rationale. The two HTTPS archive index URLs currently have an expired TLS certificate, while the direct HTTP image routes resolve; updating those supplemental index links to a working canonical route would improve durability but does not make the image sources untraceable.

### Verification notes

All twelve proof/spec pairs score 100/100 against their current analyzer JSON, but the four required overlay findings above are semantic visual mismatches that the geometric scorer does not detect. The chapter's measured luminance, tonal-range, palette, and edge-density claims match the corresponding analyzer values within the stated tolerance. No camera-setting claims or limited-mode issues were found.
