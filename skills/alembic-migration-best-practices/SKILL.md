---
name: alembic-migration-best-practices
description: Plan, implement, and operate safe Alembic migrations for FastAPI, PostgreSQL, and Dockerized delivery workflows. Use when creating new schema revisions, reviewing autogenerate output, applying expand-and-contract changes, running data backfills, handling migration branches and merge revisions, enforcing migration gates in CI, or preparing rollback and recovery procedures for production releases.
---

# Alembic Migration Best Practices

Follow this workflow when creating, reviewing, or releasing database migrations.

## 1) Classify Migration Risk Before Writing Code

- Identify schema-only, data, and mixed migrations explicitly.
- Classify blast radius: table size, lock risk, and service impact.
- Decide whether change needs expand-and-contract rollout.

Read `references/migration-strategy-and-release-phases.md`.

## 2) Keep Revision Generation Deterministic

- Create revisions with clear, action-oriented messages.
- Use Alembic autogenerate as a draft, not final output.
- Review generated operations before commit.

Read `references/alembic-revision-authoring.md`.

## 3) Enforce Naming And Metadata Discipline

- Use SQLAlchemy naming conventions for constraints and indexes.
- Keep identifiers stable across environments.
- Avoid anonymous constraints that make diffs noisy and downgrades fragile.

Read `references/alembic-revision-authoring.md`.

## 4) Design For PostgreSQL Lock And Availability Behavior

- Check lock impact of each DDL statement before release.
- Prefer online-safe patterns for high-traffic tables.
- Use transaction-aware handling for operations that cannot run in a transaction block.

Read `references/postgres-online-ddl-and-locks.md`.

## 5) Use Expand-And-Contract For Breaking Shape Changes

- Expand first: additive columns, dual-write compatibility, backfill.
- Switch reads and writes after compatibility verification.
- Contract last: drop legacy columns or constraints in a later release.

Read `references/migration-strategy-and-release-phases.md`.
Read `references/data-migrations-and-backfills.md`.

## 6) Run Data Migrations And Backfills Safely

- Keep backfills idempotent and chunked.
- Use resumable progress markers for large datasets.
- Isolate long-running data rewrites from schema locks where possible.

Read `references/data-migrations-and-backfills.md`.

## 7) Keep Revision Graph Healthy

- Resolve parallel heads with explicit merge revisions.
- Avoid force-rewriting applied migration history.
- Keep branch labels and dependencies clear when multiple teams ship concurrently.

Read `references/branching-merge-and-history-hygiene.md`.

## 8) Run Migrations In Dockerized CI And Release Flows

- Execute migration commands in Docker to match project policy.
- Add CI checks for `upgrade`, `downgrade`, and Alembic drift detection.
- Block release if migration checks fail or contract gates are missing.

Read `references/dockerized-execution-and-ci-gates.md`.

## 9) Prepare Rollback And Recovery Paths

- Define rollback boundary per release before deployment.
- Test downgrade only when downgrade is truly supported for that revision.
- Pair migration rollback with backup/restore readiness for irreversible data changes.

Read `references/rollback-and-recovery.md`.

## 10) Verify Before Release

- Confirm migration chain applies cleanly from base to target.
- Confirm runtime app version is compatible with transitional schema.
- Confirm operational runbook covers failure handling and emergency restore.

For canonical standards and updates, read `references/official-sources.md`.
