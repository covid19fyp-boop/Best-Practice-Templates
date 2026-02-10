# PostgreSQL Backup And PITR

## Logical Backup

- Use `pg_dump` / `pg_dumpall` for schema and data export workflows.
- Prefer custom format backups when selective restore is needed.
- Validate restore compatibility with target PostgreSQL major version.

## Physical Backup

- Use `pg_basebackup` for full cluster physical backup.
- Pair physical backup with WAL archiving for point-in-time recovery.
- Keep retention aligned to RPO and compliance requirements.

## Point-In-Time Recovery

- Enable archiving and test recovery target timestamp workflows.
- Keep restore commands and recovery config in runbook form.
- Reconfirm application compatibility after PITR completes.

## Integrity And Verification

- Verify backup artifact availability and integrity on schedule.
- Treat untested backups as operationally unsafe.
- Record backup and restore outcomes for audit and trend analysis.
