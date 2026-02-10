# Celery Delivery, Retry, And Ack Controls

## 1) Build For At-Least-Once Delivery

- Assume tasks may run more than once.
- Keep task handlers idempotent by design.
- Treat duplicate execution as a normal failure mode, not an edge case.

## 2) Use Explicit Retry Policy

- Use Celery retry APIs with bounded max retries.
- Apply exponential backoff and jitter for transient upstream failures.
- Classify exceptions into retryable and terminal categories.

Celery provides retry semantics and backoff controls (`autoretry_for`, `retry_backoff`, `retry_jitter`).

## 3) Tune Acknowledgement Strategy

- Use `task_acks_late` for workloads where redelivery after worker failure is preferred.
- Understand prefetch behavior and tune `worker_prefetch_multiplier` to reduce unfair queue hoarding.
- Use `task_reject_on_worker_lost` when redelivery behavior on worker loss is required.

## 4) Control Task Execution Safety

- Set hard and soft time limits for runaway task protection.
- Separate I/O-bound and CPU-bound workloads into different queues or worker pools.
- Avoid unbounded retries that amplify incident blast radius.

## 5) Idempotency Checklist

- Confirm each side effect has deterministic dedup key strategy.
- Confirm retries do not duplicate irreversible external actions.
- Confirm terminal failures route to dead-letter or manual triage path.
