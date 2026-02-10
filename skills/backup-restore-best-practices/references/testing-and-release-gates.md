# Testing And Release Gates

## Mandatory Gates

- Backup job success and freshness checks.
- Restore validation recency checks.
- Migration compatibility checks on restore datasets.
- Cross-stack smoke tests after restore.

## Pre-Release Checks

- Confirm latest successful backup exists for target environment.
- Confirm rollback/recovery owner is assigned.
- Confirm alerting and dashboards for backup/restore workflows are healthy.

## Release Blocking Conditions

- Failed or stale restore drill for critical services.
- Failed migration-on-restored-data test.
- Unresolved data integrity issues in verification.
