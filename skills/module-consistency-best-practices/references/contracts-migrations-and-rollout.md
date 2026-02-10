# Contracts, Migrations, And Rollout

## API Contract Governance

- Treat FastAPI schemas as backend-frontend contracts.
- Document compatibility expectations when changing route payloads.
- Prefer additive changes before removals in active client flows.

## Database Change Coordination

- Couple module data-model changes with reviewed migration scripts.
- Run migrations before opening traffic to code that depends on new schema.
- Keep rollback strategy explicit for each migration set.

## Rollout Sequencing

- Deploy backend compatibility changes before frontend callers when needed.
- Revalidate affected frontend routes after backend schema or contract updates.
- Keep change logs clear for module owners across frontend and backend teams.
