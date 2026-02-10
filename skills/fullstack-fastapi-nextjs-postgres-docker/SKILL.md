---
name: fullstack-fastapi-nextjs-postgres-docker
description: Design and operate a full-stack system using FastAPI, Next.js, PostgreSQL, and Docker. Use when creating or refactoring a multi-service architecture, defining Compose service contracts, wiring frontend-backend API boundaries, managing PostgreSQL migrations/backups, securing secrets/config, or preparing production deployment and release checks for this stack.
---

# Full-Stack FastAPI + Next.js + PostgreSQL + Docker

Follow this workflow when planning, implementing, or reviewing this stack.

## 1) Lock Service Topology First

- Define service roles: `frontend` (Next.js), `api` (FastAPI), `db` (PostgreSQL), optional edge proxy.
- Define request flow and trust boundaries before implementation.
- Prefer stable internal DNS names from Compose service names.

Read `references/stack-topology-and-request-flow.md`.

## 2) Define Docker Compose Service Contracts

- Give each service explicit build/runtime responsibilities.
- Add health checks and readiness-aware dependencies.
- Persist PostgreSQL data in volumes, not container layers.
- Respect project policy: run installs/build/test in Docker, not host.

Read `references/compose-contracts-and-containers.md`.

## 3) Stabilize API And Frontend Integration

- Keep FastAPI schemas explicit and versionable.
- Keep Next.js server/client boundaries deliberate when calling backend APIs.
- Prefer same-origin integration patterns where possible; otherwise configure CORS explicitly.

Read `references/backend-frontend-api-contract.md`.

## 4) Treat Data Lifecycle As A First-Class Concern

- Run schema migrations as controlled deployment steps.
- Keep DB bootstrap, migration, and runtime concerns separate.
- Define backup/restore strategy before production rollout.

Read `references/data-migrations-and-recovery.md`.

## 5) Apply Security And Secret Hygiene Across Services

- Keep secrets server-side only.
- Use runtime secret injection and avoid hardcoded credentials.
- Enforce authz/authn checks at mutation boundaries.

Read `references/security-config-and-secrets.md`.

## 6) Enforce Cross-Stack Quality Gates

- Test backend, frontend, and integration paths with representative data flows.
- Validate health checks, startup dependencies, and failure handling.
- Keep lint/type/test gates in CI for both apps.

Read `references/testing-ci-and-release-gates.md`.

## 7) Operationalize Deployments

- Use explicit runtime settings per environment.
- Keep observability signals actionable (logs, health, errors).
- Re-verify cache, auth, and migration behavior after each release.

Read `references/deployment-and-operations.md`.

For canonical updates and source verification, consult `references/official-sources.md`.
