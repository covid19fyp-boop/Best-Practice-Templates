# Data Migrations And Recovery

## Initialization And Migration

- Treat image bootstrap scripts and schema migrations as separate concerns.
- Remember PostgreSQL image init scripts run only on first initialization of an empty data directory.
- Run schema migrations as explicit deployment steps, not ad-hoc runtime side effects.

## Runtime Data Safety

- Use strong authentication defaults and least-privilege DB users.
- Keep connection pool sizing aligned with app worker/process counts.
- Keep migration failures as deployment blockers.

## Backup And Recovery

- Define required recovery objectives (RPO/RTO).
- Use physical and/or logical backup strategy that matches those objectives.
- Test restore and recovery procedures regularly; untested backups are operational risk.
