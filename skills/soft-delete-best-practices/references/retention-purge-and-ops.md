# Retention, Purge, And Operations

## Retention Policy

- Define retention window for soft-deleted rows.
- Keep legal/compliance retention separate from operational cleanup defaults.

## Hard Purge

- Run purge as scheduled background jobs.
- Purge in bounded batches to reduce lock and IO spikes.
- Ensure purge jobs respect referential integrity and audit requirements.

## Vacuum And Bloat

- Soft delete updates many rows and increases dead tuples over time.
- Monitor autovacuum behavior, table bloat, and index bloat.
- Tune maintenance strategy for high-delete workloads.

## Recovery Drills

- Verify backup/restore with active and soft-deleted datasets.
- Test restore-after-delete flows in staging before production rollout.
