---
name: soft-delete-best-practices
description: Design and implement reliable soft-delete behavior across FastAPI, PostgreSQL, Next.js, and Dockerized deployments. Use when introducing soft delete fields, preserving uniqueness for active records, filtering deleted rows by default, defining DELETE/restore API semantics, handling cascade behavior, or planning retention and purge workflows.
---

# Soft Delete Best Practices

Follow this workflow when adding or auditing soft delete.

## 1) Define Domain Semantics First

- Decide whether deletion means hide, archive, or scheduled purge.
- Prefer `deleted_at` timestamp over a bare boolean for auditability and retention logic.
- Decide restore policy and retention window before coding.

## 2) Design PostgreSQL Schema And Constraints

- Keep immutable primary keys unchanged.
- Add `deleted_at` (`timestamptz null`) and optional `deleted_by` / `delete_reason`.
- For "unique among active rows", use partial unique indexes with `WHERE deleted_at IS NULL`.
- Do not design foreign-key targets around partial unique indexes.

Read `references/postgres-schema-and-indexing.md`.

## 3) Enforce Default Query Filtering In Backend

- Exclude soft-deleted rows by default in repository/query layer.
- Add explicit opt-in for `include_deleted` and admin recovery flows.
- Keep delete/restore operations transactional.

Read `references/sqlalchemy-filtering-and-transactions.md`.

## 4) Define API Semantics Clearly

- Keep DELETE idempotent.
- Choose one response policy for repeat deletes and document it.
- Add explicit restore endpoint and conflict handling for unique-key collisions on restore.

Read `references/fastapi-api-semantics.md`.

## 5) Align Next.js Mutation And Cache Behavior

- Perform delete/restore via server-side mutation boundaries.
- Revalidate affected paths/tags after mutation to avoid stale UI.
- Keep privileged mutation logic server-side only.

Read `references/nextjs-integration.md`.

## 6) Plan Retention, Purge, And Bloat Control

- Soft delete is not final deletion; schedule hard purge jobs.
- Monitor table/index growth and autovacuum behavior.
- Test backup/restore with deleted and restored data states.

Read `references/retention-purge-and-ops.md`.

## 7) Verify Before Release

- Test default hidden behavior.
- Test idempotent DELETE and restore behavior.
- Test uniqueness collisions on restore.
- Test authorization boundaries for delete and restore operations.

For canonical sources and update checks, read `references/official-sources.md`.
