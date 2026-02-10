# Backup And Recovery For Containerized PostgreSQL

## Strategy Selection

- Match backup strategy to recovery objectives (RPO/RTO).
- Use physical backup flows for full-cluster recovery.
- Add WAL archiving when point-in-time recovery is required.

## Backup Approaches

- Use `pg_basebackup` for physical base backups.
- Use logical backups (`pg_dump`/`pg_dumpall`) for portability and targeted restores.
- Keep backup artifacts outside ephemeral container filesystems.

## Recovery Readiness

- Test full restore procedures regularly.
- Validate point-in-time recovery when WAL archiving is enabled.
- Treat untested backups as non-existent for operational planning.

## Routine Verification

- Run scheduled backup jobs and monitor for failures.
- Verify retention windows align with compliance and recovery needs.
- Exercise disaster-recovery drills using realistic datasets.
