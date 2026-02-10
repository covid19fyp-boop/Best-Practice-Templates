# Data Migrations And Backfills

## 1) Prefer Idempotent Data Migration Logic

- Write migrations that can resume safely after interruption.
- Use deterministic update predicates.
- Avoid one-shot scripts with hidden mutable state.

## 2) Chunk Large Backfills

- Process rows in bounded batches.
- Commit progress in measurable increments.
- Track completion markers to support restart.

## 3) Keep Backfill Separate From Lock-Sensitive DDL

- Run schema expansion first.
- Backfill in subsequent revision or operational job.
- Contract only after verification of backfill completeness.

## 4) Verify Data Quality

- Add pre-check and post-check counts for affected rows.
- Validate business invariants after migration.
- Capture anomalies and route for manual remediation.

## 5) Backfill Checklist

- Confirm throughput and duration estimates.
- Confirm retry policy and abort thresholds.
- Confirm observability for progress and failure alerts.
