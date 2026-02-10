# Job Model And Workload Segmentation

## 1) Define Job Classes Before Tooling

- Post-response side effects (for example: notification enqueue).
- Critical business workflows (for example: billing, fulfillment, entitlement updates).
- Bulk throughput jobs (for example: exports, recomputation, media transforms).
- Periodic maintenance jobs (for example: cleanup, compaction, reconciliation).

## 2) Map Class To Delivery Guarantee

- Use lightweight best-effort handling only for non-critical outcomes.
- Use durable broker-backed workers for critical workflows.
- Assume at-least-once behavior for distributed worker systems and design idempotency accordingly.

## 3) Define Runtime Budgets

- Max queue delay and processing SLA per job class.
- Retry budget (count and total retry window) per failure type.
- Concurrency and rate-limit policy per queue.

## 4) Segmentation Checklist

- Confirm each job class has owner and pager scope.
- Confirm each queue has throughput and backlog thresholds.
- Confirm each class has explicit retry and dead-letter policy.
