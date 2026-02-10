# PostgreSQL Performance Diagnostics

## 1) Start With Query And Lock Visibility

- Enable and use `pg_stat_statements` for top-time query analysis.
- Inspect lock contention and wait events during load windows.
- Monitor connection counts, saturation, and transaction rates.

## 2) Use Plan-Level Validation

- Use `EXPLAIN (ANALYZE, BUFFERS)` for slow query analysis.
- Validate index usage and row-estimate accuracy.
- Re-test after index or query changes under the same load profile.

## 3) Capacity And Safety Checks

- Track checkpoint, WAL, and I/O behavior in sustained tests.
- Validate pool sizing and connection limits under peak load.
- Separate DB-bound failures from app or network failures.

## 4) Database Checklist

- Confirm each slow query candidate has reproducible benchmark evidence.
- Confirm query tuning results are measured with percentile improvements.
- Confirm lock-sensitive DDL is excluded from load windows unless intentionally tested.
