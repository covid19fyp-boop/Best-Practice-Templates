---
name: attachment-best-practices
description: Design and implement attachment/file handling across FastAPI, Next.js, PostgreSQL, and object storage with production-safe patterns. Use when defining upload/download APIs, metadata schema, object key structure, signed URL flows, attachment retention/purge, and attachment security/testing strategy. Use `soft-delete-best-practices` for generic row-level soft-delete policies outside attachment domains.
---

# Attachment Best Practices

Follow this workflow when creating or reviewing attachment features.

## 1) Define Attachment Domain Rules First

- Define allowed file types, max size, ownership, and visibility rules.
- Define whether attachments are immutable or versioned.
- Define retention and legal/compliance requirements before schema design.

Read `references/storage-model-and-key-design.md`.

## 2) Choose Storage Model And Key Structure

- Store file binaries in object storage; keep PostgreSQL for metadata only.
- Use deterministic object key prefixes by tenant/entity/attachment identifiers.
- Decide whether soft-delete keeps objects in place or moves to a deleted prefix.

Read `references/storage-model-and-key-design.md`.

## 3) Design PostgreSQL Metadata With Soft Delete

- Keep attachment metadata in a dedicated module/table set.
- Add `deleted_at`/`deleted_by` and retention fields for reversible deletion.
- Enforce active-row uniqueness with partial unique indexes where needed.

Read `references/postgres-metadata-and-soft-delete.md`.

## 4) Define FastAPI Attachment API Contracts

- Keep upload/download/delete/restore endpoints explicit and versionable.
- Use signed URL patterns or streaming responses intentionally by use case.
- Keep DELETE idempotent and restore conflict handling deterministic.

Read `references/fastapi-api-contracts.md`.

## 5) Align Next.js Integration And UX

- Keep privileged upload/delete operations in Server Actions or Route Handlers.
- Revalidate affected paths/tags after upload/delete/restore.
- Represent attachment state explicitly in UI (active, deleted, pending purge).

Read `references/nextjs-integration-and-ux.md`.

## 6) Apply Security And Content Validation

- Validate file type and size server-side; do not trust client metadata alone.
- Isolate untrusted files and apply malware scanning workflow where required.
- Keep signed URL scope and TTL minimal.

Read `references/security-validation-and-scanning.md`.

## 7) Plan Retention, Purge, And Operations

- Schedule purge jobs for expired soft-deleted attachments.
- Keep purge idempotent and bounded in batch size.
- Monitor storage growth, failed purges, and restore conflicts.

Read `references/retention-purge-and-ops.md`.

## 8) Verify Before Release

- Test upload/download/delete/restore flows and authorization boundaries.
- Test retention expiry and hard purge behavior.
- Test migration and rollback behavior for attachment metadata changes.

Read `references/testing-and-quality-gates.md`.
For canonical updates, read `references/official-sources.md`.
