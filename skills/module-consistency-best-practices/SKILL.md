---
name: module-consistency-best-practices
description: Define and enforce consistent module structure across FastAPI backend, Next.js frontend, PostgreSQL data access, and Dockerized workflows. Use when creating new features, refactoring legacy folders, standardizing naming/import boundaries, introducing shared contracts, or reviewing pull requests for module consistency regressions.
---

# Module Consistency Best Practices

Follow this workflow when designing or reviewing project modules.

## 1) Choose A Canonical Module Contract

- Define one module template per layer (`api`, `frontend`, `db` concerns).
- Keep module boundaries explicit: interface, application logic, persistence, and integration edges.
- Do not create ad-hoc folder structures for each feature.

Read `references/module-template-and-boundaries.md`.

## 2) Enforce Backend Module Shape (FastAPI)

- Group routes by domain with `APIRouter`.
- Keep request/response schemas separate from persistence models.
- Keep dependencies and transaction/session boundaries explicit.
- Keep migration ownership clear for each module change.

Read `references/fastapi-module-rules.md`.

## 3) Enforce Frontend Module Shape (Next.js)

- Use App Router route segments intentionally.
- Keep Server Components default; limit client boundaries to interactive needs.
- Keep module-local UI, actions, and data helpers close to the route/feature.

Read `references/nextjs-module-rules.md`.

## 4) Stabilize Naming And Import Rules

- Use consistent naming for modules, routers, schemas, services, and repositories.
- Prefer absolute imports/aliases where configured to avoid fragile relative paths.
- Restrict cross-module imports to defined public entry points.

Read `references/naming-imports-and-dependencies.md`.

## 5) Keep Cross-Stack Contracts Explicit

- Treat API schemas as the contract between Next.js and FastAPI.
- Version contracts deliberately when breaking changes are introduced.
- Keep module changes synchronized with migration and rollout steps.

Read `references/contracts-migrations-and-rollout.md`.

## 6) Add Review Gates For Consistency

- Add checklist items for module shape, naming, dependency direction, and tests.
- Reject features that bypass module boundaries for convenience.
- Require refactor plans when touching legacy non-conforming code.

Read `references/review-checklist.md`.

## 7) Verify Before Merge

- Confirm new code follows approved module template.
- Confirm imports and dependencies respect boundary rules.
- Confirm tests cover module behavior and integration edges.

For canonical sources and update checks, read `references/official-sources.md`.
