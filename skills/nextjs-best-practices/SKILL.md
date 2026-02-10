---
name: nextjs-best-practices
description: Design, build, and operate modern Next.js applications using App Router best practices. Use when creating or refactoring Next.js codebases, choosing Server vs Client Components, implementing routing and data fetching, handling caching and revalidation, improving performance (images/fonts/bundles), securing Server Actions and Route Handlers, testing app behavior, or preparing production deployment.
---

# Next.js Best Practices

Follow this workflow when building or reviewing Next.js applications.

## 1) Set Architecture And Boundaries

- Prefer App Router for new applications.
- Keep server-first architecture and move client logic only where interactivity requires it.
- Define clear boundaries for UI, data access, and side effects.

Read `references/app-router-and-data-fetching.md` before shaping project structure.

## 2) Choose Rendering And Data Strategy Explicitly

- Decide per route if content should be static, dynamic, or revalidated.
- Use built-in fetch caching/revalidation controls intentionally.
- Avoid relying on defaults when behavior affects freshness or cost.

Read `references/rendering-caching-and-revalidation.md` for rendering and cache controls.

## 3) Secure The Runtime Surface

- Keep secrets on the server and avoid exposing server-only logic to client bundles.
- Validate and authorize all mutations in Server Actions and Route Handlers.
- Treat untrusted input consistently across API and action boundaries.

Read `references/security-and-auth.md` before implementing auth or mutations.

## 4) Optimize Performance Early

- Use `next/image` and `next/font` patterns for asset performance.
- Keep client bundles small by limiting client-only component scope.
- Monitor route-level performance and optimize high-traffic paths first.

Read `references/performance-and-assets.md` for optimization priorities.

## 5) Enforce Quality And Regression Safety

- Test routes, components, and user flows with deterministic fixtures.
- Keep linting/type checks in CI.
- Verify behavior for loading, error, and not-found states.

Read `references/testing-and-quality.md` before finalizing release pipelines.

## 6) Prepare Deployment And Operations

- Use production-grade deployment configuration and environment management.
- Keep runtime assumptions explicit (Node runtime vs Edge runtime where applicable).
- Follow repository policy: run dependency install/build tooling in Docker, not host.

Read `references/deployment-and-runtime.md` before shipping.

For version-specific behavior and canonical updates, consult `references/official-sources.md`.
