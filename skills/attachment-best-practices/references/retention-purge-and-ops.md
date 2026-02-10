# Retention, Purge, And Operations

## Retention Model

- Define retention duration for soft-deleted attachments (`purge_after_at`).
- Distinguish legal hold/compliance retention from default operational cleanup.
- Keep policy decisions explicit per attachment class when needed.

## Purge Workflow

- Run scheduled purge jobs in bounded batches.
- Purge object and metadata together with idempotent retry-safe logic.
- Record purge outcomes for auditability and incident analysis.

## Operational Monitoring

- Track storage growth by tenant/entity and deleted-vs-active ratio.
- Track purge lag and purge failure rate.
- Track restore conflicts and repeated authorization failures.

## Recovery

- Test backup/restore scenarios that include active and soft-deleted metadata.
- Verify object-store and database consistency after disaster-recovery drills.
