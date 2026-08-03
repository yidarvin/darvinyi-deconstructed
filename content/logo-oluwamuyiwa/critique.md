verdict: revise

## Critique round — 2026-08-03

### Required (blocking)

1. **11-theatre-of-surrealist-idiosyncrasies — unsupported named diagonals and convergence.** In the current proof, the line labelled `VEHICLE EDGE` (`[0.172, 0.004]` to `[0.660, 0.451]`) crosses the vendors and street objects and terminates at the corn stall; it does not trace a vehicle edge. The line labelled `STALL AXIS` (`[0.386, 0.052]` to `[0.488, 0.535]`) likewise crosses the pictured activity rather than following a continuous stall edge or axis. Consequently the overlay's `STREET CONVERGENCE` point, and the chapter's claim that a vehicle edge and stall axis cross there, assert a structure that is not visible. Retarget these primitives to continuous, correctly named features (and only retain a vanishing point if those features genuinely converge), or remove the unsupported claims and revise the matching paragraph. Re-render and verify the proof.

### Advisory (non-blocking)

None.
