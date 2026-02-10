# Compose And Runtime Operations

## Compose Dependency Model

- Do not assume `depends_on` alone means PostgreSQL is ready for queries.
- Add a health check using `pg_isready` for the database service.
- Gate dependent services on health-based readiness when startup ordering matters.

## Service Networking

- Expose PostgreSQL ports only when host access is required.
- Keep database service on internal compose networks for service-to-service traffic.

## Resource And Stability Controls

- Set realistic CPU/memory limits based on expected workload.
- Tune Postgres memory settings to fit container limits.
- Use restart policies aligned with environment reliability expectations.

## Logging And Diagnostics

- Keep database logs accessible via container log streams.
- Verify startup logs for auth mode, data directory, and recovery behavior.
- Keep routine checks for connection saturation and long-running queries.
