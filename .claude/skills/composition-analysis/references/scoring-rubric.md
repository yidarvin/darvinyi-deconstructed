# Scoring rubric — score_overlay.py

Score = 100 − Σ deductions − Σ warnings, floor 0. Default pass ≥ 80.
Deductions are geometric facts; warnings are judgment calls priced cheaply.
`--strict` upgrades unsupported-annotation warnings to deductions (use for
final gating, not drafting).

| check | tolerance | max hit |
|---|---|---|
| empty spec | — | 100 (score 0) |
| coords outside [−0.02, 1.02] | — | 8 each |
| grid choice vs measured best fit | Δfit ≤ 0.10 | 8 |
| horizon y vs detected | 0.015 | 30 (400/unit past tol) |
| horizon angle | 2.5° | 10 |
| subject_anchor vs nearest subject signal | 0.03 diag | 25 |
| leading_line / diagonal off a real edge | 0.015 diag / 4° | 12 |
| …tracking nothing (no edge, not near VP) | — | warn 6 / strict 12 |
| vanishing_point vs measured convergence | 0.04 diag | 15 |
| symmetry_axis with measured corr < 0.55 | — | 12 |
| symmetry_axis position | 0.02 | 10 |
| golden_spiral pole vs primary subject | 0.10 diag | 12 |
| spiral over a thirds grid | — | warn 3 |
| > 6 primitives | — | 4 per extra |
| > 2 of same type (non-line) | — | warn 3 |

"diag" = pixel distance / image diagonal, so tolerances are aspect-correct
and resolution-independent.

Interpretive primitives (`frame_in_frame`, `polyline`, `ellipse`) are only
bounds-checked — the visual pass is their judge. Every deduction includes a
`fix` string; apply geometric fixes verbatim.
