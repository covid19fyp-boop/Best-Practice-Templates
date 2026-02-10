# PostgreSQL Schema And Indexing

## Core Columns

- Add `deleted_at timestamptz null`.
- Optional: `deleted_by`, `delete_reason`, `restored_at`, `restored_by`.

## Active-Row Uniqueness

- Use partial unique index for uniqueness among non-deleted rows.
- Pattern:
- `CREATE UNIQUE INDEX ... ON table (tenant_id, slug) WHERE deleted_at IS NULL;`

## Foreign Key Constraints

- Foreign keys must reference primary key, unique constraint, or non-partial unique index.
- Keep primary keys stable and reference those keys for relationships.
- Do not expect a partial unique index to act as a foreign-key target.

## Query Performance

- Index common active-row filters (`WHERE deleted_at IS NULL`) and high-selectivity columns.
- Re-check index strategy when large parts of table become soft-deleted.
