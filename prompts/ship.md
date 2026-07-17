You are the BUILDER doing a site-wide integration pass. Read AGENTS.md first.
Use Codex subagents only for independent read-only route and screenshot checks;
the lead agent owns fixes and gates. The parent runner owns the validated transaction
commit and publishes this explicit integration boundary. Workers inherit this
invocation's model and High effort; do not request or switch models.

1. Verify every photographer at stage "approved" is fully wired in: route
   resolves, listed in nav/index in registry group order, images and
   overlays render from their JSON specs.
2. The production build must pass clean; fix whatever does not.
3. If Playwright is available, screenshot 2-3 chapter pages and confirm
   overlays sit aligned on their images (no object-fit or aspect
   regressions).
4. Update the home/index page: progress (approved count / 100), newest
   chapters.
5. Leave the integration changes uncommitted for the parent runner, then stop.
6. Stop after this one wave integration pass. The driver records the shipped
   marker only after the independent post-stage gates pass.
