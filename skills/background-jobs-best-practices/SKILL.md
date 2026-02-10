---
name: background-jobs-best-practices
description: Design, implement, and operate reliable background job workflows across FastAPI, PostgreSQL, and Docker-based systems. Use when deciding in-process versus external workers, defining queue and routing strategy, implementing retries and idempotency, handling dead-letter and poison jobs, scheduling periodic tasks, scaling workers safely, or adding observability and CI release gates for asynchronous workloads.
---

# Background Jobs Best Practices

Follow this workflow when designing or reviewing asynchronous job execution.

## 1) Classify Workload And Delivery Guarantees First

- Separate fire-and-forget tasks from business-critical workflows.
- Define delivery expectation explicitly: at-most-once, at-least-once, or compensated exactly-once behavior.
- Define latency, throughput, and retry budget per job type.

Read `references/job-model-and-workload-segmentation.md`.

## 2) Choose Execution Boundary Deliberately

- Use FastAPI in-process background tasks only for short, non-critical post-response work.
- Use dedicated workers and broker-backed queues for durable, retryable workloads.
- Keep API request handlers and worker runtime concerns decoupled.

Read `references/fastapi-vs-worker-boundaries.md`.

## 3) Design Queue Topology And Routing

- Split queues by workload class (critical, default, bulk, scheduled).
- Route heavy and latency-sensitive jobs separately.
- Keep queue ownership and concurrency limits explicit per worker pool.

Read `references/broker-routing-and-dead-letter.md`.

## 4) Implement Retry, Backoff, And Ack Strategy Safely

- Use bounded retries with exponential backoff for transient failures.
- Tune acknowledgement behavior intentionally (`acks_late`, prefetch).
- Escalate poison jobs to dead-letter handling after retry exhaustion.

Read `references/celery-delivery-retry-and-ack.md`.

## 5) Make Jobs Idempotent And Deduplicated

- Use idempotency keys or unique execution guards for externally triggered jobs.
- Keep retry-safe write paths and side effects.
- Persist job progress checkpoints for resumable long-running tasks.

Read `references/celery-delivery-retry-and-ack.md`.
Read `references/postgres-job-queue-patterns.md`.

## 6) Schedule Periodic Jobs Without Double-Run Risk

- Run exactly one scheduler instance per schedule domain.
- Keep periodic jobs re-entrant and overlap-safe.
- Add lock or lease controls for high-impact periodic workflows.

Read `references/scheduling-and-periodic-jobs.md`.

## 7) Use PostgreSQL Patterns For Durable Coordination

- Use transactional outbox or queue tables when DB-transaction coupling is required.
- Use `FOR UPDATE SKIP LOCKED` for safe multi-worker dequeue patterns.
- Keep queue-table retention and cleanup jobs explicit.

Read `references/postgres-job-queue-patterns.md`.

## 8) Run Workers In Dockerized Runtime And CI

- Execute workers, scheduler, and broker dependencies in Docker.
- Add health checks and startup-order dependencies for worker stacks.
- Validate worker startup, routing, and shutdown behavior in CI.

Read `references/dockerized-workers-and-ci-gates.md`.

## 9) Add Observability And Operational Controls

- Emit job lifecycle logs and metrics (`queued`, `started`, `succeeded`, `failed`, `retried`).
- Trace API-to-worker correlation for critical workflows.
- Define runbooks for queue backlog, retry storms, and dead-letter growth.

Read `references/observability-testing-and-incident-response.md`.

## 10) Verify Before Release

- Confirm retry and idempotency behavior with failure-injection tests.
- Confirm periodic job safety under scheduler restart and worker scale-out.
- Confirm dead-letter triage and replay workflow is tested.

For canonical standards and updates, read `references/official-sources.md`.
