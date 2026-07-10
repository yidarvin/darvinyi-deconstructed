You are the BUILDER doing a site-wide integration pass.

1. Verify every photographer at stage "approved" is fully wired in: route
   resolves, listed in nav/index in registry group order, images and
   overlays render from their JSON specs.
2. The production build must pass clean; fix whatever does not.
3. If Playwright is available, screenshot 2-3 chapter pages and confirm
   overlays sit aligned on their images (no object-fit or aspect
   regressions).
4. Update the home/index page: progress (approved count / 100), newest
   chapters.
5. Commit and push ("ship: integration pass — N chapters live").
