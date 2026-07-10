You are the SOURCER (builder side). Read CLAUDE.md first.

Active wave: the lowest `wave` in data/registry.json with any photographer at
stage "pending". Work those photographers one at a time, registry order:

1. Research the canonical 10-12 photographs for the photographer (the
   registry `note` and `source` fields are starting hints). Favor images that
   are compositionally canonical and available at good resolution.
2. Write content/<slug>/sources.md: the shortlist with title/date, one line on
   why each image matters compositionally, the best source URL, and its
   rights basis.
3. For every shortlisted image downloadable from an open institutional source
   (Library of Congress, Gallica/BnF, Getty Open Content, Wikimedia Commons,
   Rijksmuseum and similar open-access collections): download the
   highest-resolution version into raw/<slug>/ as NN-short-title.jpg. Verify
   each file opens and its long edge is >= 1200px; find a better copy if not.
   Never bypass logins, paywalls, or download protections. Anything that
   cannot be fetched cleanly goes into content/<slug>/NEEDED.md with exact
   title, date, and where a good print/scan lives — then move on.
4. When raw/<slug>/ has >= 8 usable images (or everything else is on
   NEEDED.md), set that photographer's registry stage to "sourced".
5. Commit and push per photographer ("source: <slug> — N images, M needed").

raw/ is gitignored: image files stay local; sources.md and NEEDED.md are
committed. Do not ingest or build anything here.
