You are the SOURCER (builder side). Read AGENTS.md first.

Use Codex subagents for independent, read-only research and source verification
when that reduces elapsed time. Give each worker one photographer and require a
short evidence-backed handoff. The lead agent owns all downloads, repository
writes, commits, and pushes in registry order. Workers inherit this invocation's
model and High effort; do not request or switch models.

Active work: first take the lowest `wave` with any photographer at stage
"pending". If none are pending, take the lowest wave with any photographer at
stage "sourced" whose raw image count is below its `minImages` value (default
4). Work candidates one at a time in registry order. A NEEDED.md file is a
diagnostic from an earlier attempt, never a request for a person to provide an
asset.

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
   Never bypass logins, paywalls, or download protections. For an underfilled
   sourced set, exhaust lawful automatic recovery before recording a miss:
   query the holding institution's metadata/API and IIIF services, try alternate
   open institutions and Commons mirrors, and use browser automation only on a
   public page that explicitly permits reuse. A screen capture is allowed only
   from such a page, only when no downloadable rendition exists, and only if it
   meets the 1200px long-edge floor; document that capture and its rights basis.
   Never generate or retouch a substitute historical photograph. Record each
   remaining miss in content/<slug>/NEEDED.md with attempts and next retry
   route, then continue the automated queue.
4. When raw/<slug>/ has >= 8 usable images (or the photographer's explicit
   `minImages` threshold for a documented short corpus), set stage to
   "sourced". Retain stage "sourced" for underfilled sets so a later source
   pass retries them automatically; do not emit a human-blocked state.
5. Commit and push per photographer ("source: <slug> — N images, M needed").

raw/ is gitignored: image files stay local; sources.md and NEEDED.md are
committed. Do not ingest or build anything here.
