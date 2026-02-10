# Testing And Quality Gates

## Core Test Matrix

- Upload success, validation failures, and authz failures.
- Download access control, URL expiry behavior, and content disposition behavior.
- Delete idempotency and restore behavior including uniqueness conflicts.

## Integration Coverage

- FastAPI + PostgreSQL metadata consistency checks.
- FastAPI + object storage consistency checks (including partial failure handling).
- Next.js mutation and revalidation behavior after attachment changes.

## Operational Tests

- Purge job correctness and idempotency.
- Backup and recovery drills including deleted records.
- Migration forward/rollback behavior for attachment schema updates.

## Release Gate Minimum

- Required tests pass for changed attachment surfaces.
- Security scan and policy checks pass.
- Critical observability checks are in place for rollout.
