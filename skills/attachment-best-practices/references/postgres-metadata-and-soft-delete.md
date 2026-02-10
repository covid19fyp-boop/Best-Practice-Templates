# PostgreSQL Metadata And Soft Delete

## Core Table Shape

- `attachments` table fields typically include:
- `id`, `tenant_id`, `entity_type`, `entity_id`
- `storage_key`, `original_filename`, `content_type`, `byte_size`, `checksum`
- `created_at`, `created_by`, `deleted_at`, `deleted_by`, `purge_after_at`

## Query And Indexing Rules

- Default all read/list queries to `deleted_at IS NULL`.
- Add indexes for common filters: tenant, entity_type/entity_id, created_at.
- Use partial unique indexes for "unique among active rows" constraints.

## Soft Delete Semantics

- DELETE should set `deleted_at` and optional `purge_after_at`.
- RESTORE should clear delete fields and re-check active uniqueness rules.
- Keep delete/restore transactional with object-storage update logic where needed.

## Foreign Keys

- Keep FK targets on stable primary keys.
- Do not rely on partial unique indexes as FK targets.
