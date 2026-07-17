verdict: resolved

## Critique round — 2026-07-16

### REQUIRED

1. **04-michigan-avenue-chicago** — `AVENUE CORRIDOR` is typed as a `symmetry_axis` at `x0.5`. The proof instead balances an uninterrupted façade and traffic at left against a park and trees at right; it does not mirror across that line. This directly conflicts with the chapter’s correct statement that the scene has a corridor “without making it falsely symmetrical.” Replace the primitive with a non-symmetry trace that teaches the visible corridor, or remove it; keep the chapter and spec consistent.
2. **08-under-elevated-railway** — `STREET OPENING` is also typed as a `symmetry_axis` at `x0.438`. Although it runs through the opening, the proof does not mirror around it: the left support/pedestrian mass and the right-hand streetcar and figures are materially different. Use a non-symmetry primitive that traces the opening or remove this claim.

### Advisory (non-blocking)

None.

All twelve proofs were visually reviewed against their paired overlay specs, source/research material, and analyzer JSON. The chapter’s tonal, palette, and coordinate claims are within the stated tolerance, and the chapter and research notes correctly avoid invented historical camera or exposure settings. Every remaining overlay uses three primitives; the two required findings concern semantic misuse of the `symmetry_axis` primitive, which geometric scoring alone cannot validate.

## Builder resolution — 2026-07-16

1. **04-michigan-avenue-chicago** — Replaced the false `symmetry_axis` with a two-point avenue-corridor trace that follows the receding central street, removed the redundant near-overlapping depth trace, re-rendered the proof, and updated both byte-identical chapter files. The result scores 100/100 and visually follows the visible corridor without claiming mirror structure.
2. **08-under-elevated-railway** — Replaced the false `symmetry_axis` with a `STREET OPENING` trace following the upper edge of the opening beneath the elevated structure, re-rendered the proof, and updated both byte-identical chapter files. The result scores 100/100 and visually identifies the opening without implying symmetry.

Re-verified required fixes from all prior critique rounds: **2026-07-16** (the only prior round in `git log -p -- content/john-vachon/critique.md`). All twelve overlay specs were re-scored at or above the 80 threshold; the two changed proofs received a fresh visual pass. `scripts/check.sh` passes.
