# FastAPI API Contracts

## API Surface

- Keep contracts explicit for:
- upload intent/initiation
- upload completion callback/commit
- download/read metadata
- delete and restore

## Upload Patterns

- Use `UploadFile` for direct upload APIs where file passes through backend.
- For large files, prefer presigned upload URL workflow and finalize metadata server-side.
- Validate authz, content type, and max size before committing metadata.

## Download Patterns

- Use presigned download URLs for object storage offload when feasible.
- Use backend streaming only when policy/audit/transformation requires it.
- Set content-disposition behavior intentionally (inline vs attachment).

## Delete And Restore Semantics

- Keep DELETE idempotent.
- Keep restore endpoint explicit (for example `POST /attachments/{id}/restore`).
- Return deterministic conflict responses when restore violates active uniqueness.
