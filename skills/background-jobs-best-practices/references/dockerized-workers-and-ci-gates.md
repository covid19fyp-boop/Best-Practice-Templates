# Dockerized Workers And CI Gates

## 1) Run All Async Components In Containers

- Run API, worker, scheduler, and broker dependencies in Docker.
- Keep image/runtime parity between CI and production.
- Avoid host-only process assumptions in scripts and health checks.

## 2) Startup And Health Controls

- Use health checks for broker and worker readiness.
- Gate dependencies with Compose health conditions where applicable.
- Handle graceful shutdown to avoid dropping in-flight acknowledgements.

## 3) CI Workflow Controls

- Run integration tests with real broker in Docker.
- Include failure-injection tests for retries, backoff, and dead-letter routing.
- Validate queue routing and periodic job dispatch behavior before merge.

## 4) Container Ops Checklist

- Confirm each component has resource limits and restart policy.
- Confirm worker concurrency is explicit and environment-specific.
- Confirm rollout and rollback procedures include scheduler and worker versions.
