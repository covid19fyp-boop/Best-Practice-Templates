---
name: testing-best-practices-codex
description: Plan and execute reliable testing workflows for Codex-driven development across FastAPI, Next.js, PostgreSQL, and Docker. Use when deciding test scope, writing or updating tests, running fast feedback loops, validating integration behavior, handling flaky tests, or setting CI gates before merge. Do not use for dedicated performance/load-test program design; use `performance-load-testing-best-practices`.
---

# Testing Best Practices For Codex

Follow this workflow whenever Codex makes code changes.

## 1) Pick The Smallest Effective Test Scope First

- Start with the narrowest tests that can fail for the changed behavior.
- Expand from unit to integration to end-to-end only as needed.
- Prefer deterministic tests over broad brittle suites.

Read `references/test-strategy-and-scope.md`.

## 2) Execute Tests In Fast Feedback Loops

- Run focused tests first, then broader suites.
- Keep red-green-refactor cycles short.
- Keep test commands explicit and repeatable.

Read `references/codex-testing-workflow.md`.

## 3) Keep Test Runs Containerized

- Run test tooling inside Docker to match project policy.
- Keep dependencies and runtime versions consistent between local and CI.
- Avoid host-only test assumptions.

Read `references/dockerized-test-execution.md`.

## 4) Apply Stack-Specific Rules

- FastAPI: test route contracts, dependency overrides, and error/auth paths.
- Next.js: test loading/error states, route behavior, and server/client boundaries.
- PostgreSQL: test migration correctness and data behavior with realistic fixtures.

Read `references/fastapi-testing.md`.
Read `references/nextjs-testing.md`.
Read `references/postgres-testing.md`.

## 5) Add Integration And E2E Gates Deliberately

- Verify critical user flow across frontend, API, and database.
- Use integration tests for service boundaries and contract checks.
- Keep E2E coverage focused on high-value production scenarios.

Read `references/integration-and-e2e.md`.

## 6) Control Flakiness And Release Risk

- Isolate state, time, and network dependencies in tests.
- Retry only when there is a clear transient failure model.
- Fail merges when key test gates are red.

Read `references/flakiness-and-ci-gates.md`.

## 7) Verify Before Merge

- Confirm changed behavior has direct tests.
- Confirm regression-sensitive paths still pass.
- Confirm test outputs are actionable and reproducible.

For official references and updates, read `references/official-sources.md`.
