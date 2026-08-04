verdict: revise

## Critique round — 2026-08-03

Reviewed all eleven rendered proofs against their overlay specs and analyzer
records, plus `chapter.mdx`, `research.md`, `manifest.json`, and `sources.md`.
The prose metrics match the analyzer records within the stated tolerance. The
source packet supplies a public project-page route, direct rendition, credit,
and concise four-factor fair-use rationale for each image; the sample project
page and the image 05 rendition are publicly reachable. The chapter correctly
declines to invent camera or capture data.

### Required fixes

1. **05-silent-hero-05 — `RAISED SWORD`:** the polyline from `(0.90, 0.86)`
   through `(0.94, 0.83)` to `(0.96, 0.77)` runs into empty space to the
   statue's upper right. In the proof, the visible sword instead rises from
   the hand toward the upper left. This is a materially false trace for its
   label and contradicts the chapter's claim that the raised sword provides
   the upward vector. Redraw the polyline on the actual blade (or remove the
   claim) and re-render the proof.

### Advisory (non-blocking)

- **02-silent-hero-02 — `ASCENDING STEPS`:** the deterministic scorer finds
  the leading line 0.022 diagonal from the detected edge (1-point deduction),
  but the rendered diagonal still clearly describes the ascending steps. It
  is a small placement refinement, not a blocking error.
