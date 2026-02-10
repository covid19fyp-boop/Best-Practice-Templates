# Docker Runtime Observability

## 1) Define Logging Driver Strategy

- Choose logging driver behavior explicitly.
- Understand default behavior and retention implications.
- Standardize log structure so aggregators can parse consistently.

Docker supports multiple logging drivers, and default local behavior may not match production requirements.

## 2) Use Health Checks As Operational Signals

- Define `HEALTHCHECK` in Dockerfiles for service-level liveness/readiness intent.
- In Compose, use health conditions in `depends_on` when startup ordering matters.
- Keep health checks lightweight and directly tied to real service readiness.

## 3) Expose Engine Metrics Carefully

- Expose Docker daemon metrics endpoint only when required.
- Bind metrics endpoints to trusted network boundaries.
- Include daemon metrics in host-level observability only if they provide clear actionability.

## 4) Runtime Checklist

- Confirm container logs include timestamp, service, and correlation context.
- Confirm health checks fail fast and recover predictably.
- Confirm restart policies and alert thresholds are aligned.
- Confirm metrics endpoints are not publicly exposed.
