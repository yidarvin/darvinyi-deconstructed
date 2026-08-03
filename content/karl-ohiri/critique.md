verdict: resolved

## Critique round — 2026-08-03

### Required

1. **`12-untitled-c1990s` — correct the saliency annotation and corresponding prose.** The `subject_anchor` at `(0.756, 0.119)` circles a dark, speckled blotch/abrasion in the painted backdrop, not a “painted backdrop highlight” as the overlay and chapter state. The analyzer establishes only a saliency anchor at that coordinate; the rendered proof confirms the labelled feature is dark rather than a highlight. Relabel it truthfully (or choose a genuine highlight) and revise the paragraph’s claim that a detected highlight pulls attention above the right sitter.

### Advisory (non-blocking)

- All twelve overlay specs score 100/100 against their current analyzer JSON. The other rendered primitives visibly trace their named features, and chapter coordinates, tonal values, palette entries, titles, source routes, credits, and the stated absence of camera data are consistent with the current records. The source notes provide a public source link and a concise four-factor fair-use rationale for each of the twelve images.

## Builder resolution — 2026-08-03

Resolved required fix 1. Re-ran analysis, render, score, and visual review for
`12-untitled-c1990s`: the saliency point remains geometrically accurate and now
labels the visible upper-right dark surface blemish, not a highlight. Updated the
corresponding paragraph in both byte-identical chapter copies. The revised overlay
scores 100/100 with no deductions or warnings; the proof is visually clean.

Re-verified prior critique rounds: 2026-08-03 (the only prior round in the full
`git log -p` history). Its sole required fix remains satisfied. `scripts/check.sh`
and `python3 scripts/validate_pipeline.py` pass. Registry stage remains `built`
pending independent critic re-review.
