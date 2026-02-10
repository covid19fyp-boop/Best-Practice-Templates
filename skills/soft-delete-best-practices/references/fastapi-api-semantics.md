# FastAPI API Semantics

## DELETE Semantics

- Keep DELETE idempotent.
- Return consistent status codes for first and repeated delete requests.
- Common patterns:
- `204 No Content` when the final state is "not active".
- `404 Not Found` when resource visibility policy hides deleted objects.

## Restore Semantics

- Add explicit restore endpoint (for example `POST /resources/{id}/restore`).
- Validate authorization separately from delete authorization.
- Handle uniqueness conflicts on restore and return deterministic error semantics.

## Contract Clarity

- Keep request/response schemas explicit.
- Document whether list/read endpoints exclude deleted rows by default.
- Document `include_deleted` behavior for privileged users.
