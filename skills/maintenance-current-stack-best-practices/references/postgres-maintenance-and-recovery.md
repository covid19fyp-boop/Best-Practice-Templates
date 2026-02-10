# Postgres Maintenance And Recovery

## 1) Maintenance Baseline

- Monitor vacuum health, bloat, lock contention, and long-running transactions.
- Review index usage and query plan regressions on critical paths.
- Schedule regular maintenance windows for heavy operations.

## 2) Migration Safety

- Prefer expand-contract strategy for risky schema changes.
- Separate schema migration from heavy backfill when possible.
- Validate lock profile and rollback impact before production apply.

## 3) Backup And Restore

- Keep backup frequency aligned to target RPO.
- Run restore drills and time them against target RTO.
- Validate application compatibility with restored data snapshots.
