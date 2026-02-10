# Security, Validation, And Scanning

## Input Validation

- Validate file size and allowed types server-side.
- Verify content signatures where policy requires stronger type validation.
- Normalize and sanitize user-provided filenames for display contexts.

## Access Control

- Authorize all upload/download/delete/restore operations at server boundary.
- Use short-lived presigned URLs scoped to single object and method.
- Avoid broad wildcard permissions in attachment storage policies.

## Malware And Untrusted Content

- For risky domains, quarantine new uploads until scanning completes.
- Keep scan status in metadata and block unsafe downloads by policy.
- Log scan failures and define operator escalation path.

## Storage And Transport Safety

- Enforce HTTPS/TLS for upload and download paths.
- Keep object storage private by default; expose via signed URLs or backend proxy.
- Audit access to sensitive attachment categories.
