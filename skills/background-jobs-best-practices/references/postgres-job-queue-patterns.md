# PostgreSQL Job Queue Patterns

## 1) Use Transactional Outbox When Consistency Matters

- Write business state and outbox event in one DB transaction.
- Publish outbox records asynchronously to broker.
- Keep publish marker and replay protection explicit.

## 2) Use `FOR UPDATE SKIP LOCKED` For DB-Queue Dequeue

- Select pending jobs with `FOR UPDATE SKIP LOCKED`.
- Process in bounded batches.
- Mark terminal state with attempt count and error metadata.

`SKIP LOCKED` helps multiple workers avoid blocking each other on the same pending rows.

## 3) Keep Queue-Table Hygiene

- Use status transitions (`pending`, `running`, `done`, `failed`, `dead`).
- Keep heartbeat or lease expiry for stuck jobs.
- Add retention and archive policy to prevent unbounded table growth.

## 4) Postgres Queue Checklist

- Confirm dequeue query has covering indexes for hot paths.
- Confirm job retry selection avoids immediate hot-loop reprocessing.
- Confirm stuck-running recovery logic is tested.
