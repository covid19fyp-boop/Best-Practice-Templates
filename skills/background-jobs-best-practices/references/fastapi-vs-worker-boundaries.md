# FastAPI Versus Worker Boundaries

## 1) Use FastAPI BackgroundTasks For Small In-Process Work

- Use for quick operations that run after response and do not require durable retries.
- Keep tasks short and resource-bounded.
- Avoid long-running CPU-heavy work in API worker processes.

FastAPI guidance explicitly recommends dedicated task queues such as Celery for heavy background computation or multi-server execution.

## 2) Use External Workers For Durable Workflows

- Move critical and long-running tasks into dedicated worker processes.
- Decouple HTTP request lifecycle from asynchronous execution lifecycle.
- Keep API process count and worker process count tuned independently.

## 3) Boundary Checklist

- Confirm no critical business invariants depend on in-process best-effort tasks.
- Confirm worker failures do not block API responsiveness.
- Confirm every asynchronous API endpoint has status and failure visibility path.
