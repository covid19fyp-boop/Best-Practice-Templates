# Storage Model And Key Design

## Storage Split

- Store binaries in object storage (S3 or S3-compatible systems).
- Store metadata in PostgreSQL (owner, mime type, size, checksum, state, audit fields).
- Avoid large binary blobs in relational tables for operational simplicity.

## Key Structure Pattern

- Recommended prefix pattern:
- `attachments/{state}/{tenant_id}/{entity}/{entity_id}/{attachment_id}/{variant}`
- Example states: `active`, `deleted`.
- Treat these as object-key prefixes (not true folders).

## Immutability And Versioning

- Prefer immutable object keys; replace-by-new-object instead of overwrite.
- Keep logical version metadata if clients require revision history.
- Consider storage-native versioning where rollback/audit needs are strict.

## Soft Delete In Storage

- Option A (simpler): keep object key in place, rely on DB `deleted_at` filter.
- Option B (operational clarity): move object to `deleted/` prefix on soft delete.
- If using Option B, restore flow must move object back atomically with metadata update.
