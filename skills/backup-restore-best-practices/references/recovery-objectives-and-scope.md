# Recovery Objectives And Scope

## Define Recovery Targets

- Set Recovery Point Objective (RPO) by data domain.
- Set Recovery Time Objective (RTO) by service criticality.
- Keep targets explicit for development, staging, and production.

## Define Protected Assets

- PostgreSQL primary data and metadata.
- Object storage artifacts required for app integrity.
- Configuration and secret references required for startup.
- Migration history and deployment metadata needed for compatibility.

## Prioritize Restore Order

- Restore data plane dependencies first (PostgreSQL).
- Restore API readiness next (FastAPI).
- Restore frontend and cache coherence last (Next.js).
- Keep post-restore verification checkpoints between stages.
