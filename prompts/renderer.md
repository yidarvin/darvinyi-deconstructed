Build the OverlayRenderer React component for this site. The overlay JSON
schema and required visual style are the contract in
.agents/skills/composition-analysis/references/overlay-spec.md — read it
first. Render an <svg viewBox="0 0 W H"> absolutely positioned over the <img>,
image at natural aspect ratio with NO object-fit cropping, and support every
primitive in the schema. Add a small demo page that renders
.agents/skills/composition-analysis/examples/example-spec.json over a test
image so it can be eyeballed. Leave the completed changes uncommitted; the parent
runner validates, commits, and pushes them.
