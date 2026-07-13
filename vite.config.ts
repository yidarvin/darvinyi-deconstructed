import { defineConfig, defaultExclude } from "vitest/config";
import react from "@vitejs/plugin-react";
import mdx from "@mdx-js/rollup";

// MDX is compiled to React components. providerImportSource wires every chapter's
// markdown elements (h1, p, code, ...) through the <MDXProvider> in App.tsx, so the
// house style lives in one place (src/components/mdxComponents.tsx).
//
// defineConfig comes from vitest/config (not vite) so the `test` key is typed; tsc
// includes this file, so the plain vite defineConfig would fail the typecheck. Vitest
// reuses this same config, so the MDX plugin and import.meta.glob work in tests too.
export default defineConfig({
  plugins: [
    { enforce: "pre", ...mdx({ providerImportSource: "@mdx-js/react" }) },
    react({ include: /\.(jsx|tsx|js|ts|mdx?)$/ }),
  ],
  test: {
    environment: "jsdom",
    // Agent tooling checks out isolated git worktrees under .claude/worktrees/ for
    // parallel work; a leftover one sitting in the tree would otherwise get scanned
    // as its own copy of every test file.
    exclude: [...defaultExclude, "**/.claude/worktrees/**"],
  },
});
