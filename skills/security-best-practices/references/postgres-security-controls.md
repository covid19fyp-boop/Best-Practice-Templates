# PostgreSQL Security Controls

## Authentication And Role Model

- Prefer `scram-sha-256` for password auth.
- Avoid `trust` auth in production environments.
- Use least-privilege roles: app role, migration role, admin role separation.

## Network And Encryption

- Limit network exposure to required services only.
- Use TLS for database transport where threat model requires in-transit protection.
- Keep `pg_hba.conf` rules explicit and minimal.

## Data Isolation And Policy

- Use schema and role boundaries to separate data domains.
- Use row-level security for multi-tenant isolation when needed.
- Keep backup and restore credentials separate from app runtime credentials.

## Operational Monitoring

- Monitor repeated auth failures and unusual connection patterns.
- Rotate credentials and test rotation as part of routine operations.
