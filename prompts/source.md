You are the SOURCER (builder side). Read AGENTS.md first.

Use Codex subagents for independent, read-only research and source verification
when that reduces elapsed time. Give each worker one photographer and require a
short evidence-backed handoff. The lead agent owns all downloads and repository
writes in registry order. The parent runner validates and commits every unit locally;
it publishes only approved chapters and integration boundaries. Workers inherit this invocation's
model and High effort; do not request or switch models.

Select exactly one photographer per invocation. First take the first registry
entry in the lowest `wave` at stage "pending". If none are pending, take the
first entry in the lowest wave at stage "sourced" whose raw image count is below
its `minImages` value (default 4) and whose `sourceMode` is not `limited`.
Finish that one unit, then stop so
the supervisor can validate the boundary before starting another. A NEEDED.md
file is a diagnostic from an earlier attempt, never a request for a person to
provide an asset.

1. Research the canonical 10-12 photographs for the photographer (the
   registry `note` and `source` fields are starting hints). Favor images that
   are compositionally canonical and available at good resolution.
2. Write content/<slug>/sources.md: the shortlist with title/date, one line on
   why each image matters compositionally, the best source URL, and a per-image
   use basis of `open` or `fair-use`.
   - `open`: record the public-domain statement or licence and required credit.
   - `fair-use`: record the creator/rightsholder notice when known and a concise
     four-factor rationale: this book uses the image for criticism, scholarship,
     and transformative composition teaching; the chapter needs the complete
     frame to analyze composition; the copy is only web-sized; and the page links
     to, credits, and does not replace the museum record, original, or licensed
     reproduction. Treat this as a per-image assessment, not an automatic result
     of the project's educational purpose.
3. Acquire every selected image. Prefer public-domain/open-licence institutional
   sources (Library of Congress, Gallica/BnF, Getty Open Content, Wikimedia
   Commons, Rijksmuseum, and similar collections) and their best public files.
   When no adequate open rendition exists for a canonical work, use the
   documented fair-use fallback: retrieve a publicly accessible institutional or
   otherwise authoritative display image without bypassing a login, paywall,
   robots/access restriction, hotlink protection, or technical access control.
   Prefer a direct public image response. If no public file rendition exists, a
   browser screen capture of the publicly visible image is allowed; crop away UI
   without altering the photograph and document that it is a capture.

   Save each file into raw/<slug>/ as NN-short-title.jpg and verify that it opens.
   The normal quality floor is 640px on the long edge. Find a better public copy
   when available, but do not reject a usable image merely because it is below
   the retired 1200px floor. A rare, compositionally essential image may be
   480-639px only when its subject and compositional structure remain legible;
   record the exception in sources.md. Never upscale merely to satisfy a number.
   Never generate, materially retouch, or substitute a historical photograph.

   For an underfilled set, re-evaluate earlier NEEDED.md misses under this current
   policy; do not repeat a retry whose only blockers were the retired open-only
   or 1200px rules. Query institutional metadata/API and IIIF services, alternate
   institutions, Commons mirrors, and public browser pages before recording a
   genuine miss. Record remaining misses in content/<slug>/NEEDED.md with attempts
   and the evidence that no usable public acquisition route remains.
4. Aim for 10-12 images when the historical record supports them, while limiting
   fair-use selections to works that materially teach the chapter's argument. The
   readiness threshold is the registry's `minImages` value, default 4. Once the
   threshold is met, advance only this photographer with
   `python3 scripts/set_stage.py <slug> sourced`; never hand-edit a registry
   stage.

   If this exhaustive current-policy pass still has fewer than `minImages`, do
   not retry the same roadblock and do not leave a pending photographer behind.
   Keep every usable real image already acquired, make NEEDED.md start with or
   prominently include the exact marker `fallback: limited`, and explain the
   unavailable canonical images and attempted routes. Then run
   `python3 scripts/set_stage.py <slug> sourced --limited`. This is also the
   closure command for an already-sourced underfilled set. Limited mode is an
   intentional prose-led chapter with zero to `minImages - 1` images, not a
   failure, a skipped author, or a request for human assets.

   Do not use limited mode for a transient network outage, rate limit,
   authentication failure, permission error, full disk, browser/tool failure,
   or unavailable service. Exit nonzero without changing state so the supervisor
   retries infrastructure failures. Limited mode requires a successful source
   investigation showing a stable content/access roadblock.
5. Run `python3 scripts/validate_pipeline.py`, leave this photographer's changes
   uncommitted, and stop. The parent runner validates and commits it locally.

raw/ is gitignored: image files stay local; sources.md and NEEDED.md are
committed. Do not ingest or build anything here.
