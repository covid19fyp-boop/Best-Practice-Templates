# PostgreSQL Observability

## 1) Start With Built-In Statistics Views

- Use `pg_stat_activity` for active sessions, wait events, and blocking diagnostics.
- Use `pg_stat_database` and related views for per-database workload health.
- Use these views in dashboards and incident drill-down workflows.

## 2) Enable `pg_stat_statements`

- Add `pg_stat_statements` to `shared_preload_libraries`.
- Run `CREATE EXTENSION pg_stat_statements;` in each target database.
- Use it to identify high total time and high mean time queries.

This extension is the baseline for query-level performance visibility.

## 3) Configure Slow Query Logging Intentionally

- Set `log_min_duration_statement` for bounded slow-query logging.
- Set `log_line_prefix` to include process/session identifiers needed for correlation.
- Keep log verbosity aligned with operational needs and storage budget.

## 4) Add Plan-Level Diagnostics For Hard Cases

- Use `auto_explain` for targeted slow-query plan capture.
- Use conservative thresholds to avoid overwhelming logs.
- Disable or tighten when no longer investigating a hotspot.

## 5) Recommended PostgreSQL Signals

- Connection utilization and saturation trends.
- Transaction commit/rollback rates.
- Lock wait and deadlock indicators.
- Slow query counts and top query fingerprints.
- Replication lag where replicas exist.

## 6) PostgreSQL Checklist

- Confirm `pg_stat_statements` is enabled in all environments.
- Confirm slow-query log settings are documented per environment.
- Confirm dashboards include lock, connection, and top-query panels.
- Confirm runbooks include query and lock triage commands.
