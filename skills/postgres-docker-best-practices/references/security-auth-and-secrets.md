# Security, Authentication, And Secrets

## Authentication Baseline

- Avoid `trust` authentication for production deployments.
- Prefer `scram-sha-256` for password authentication.
- Enforce explicit host-based auth rules and least-privilege roles.

## Official Image Security Patterns

- Use `_FILE` environment variable variants (for example password/user/db variables) with mounted secrets where supported.
- Keep sensitive values out of image layers and committed compose manifests.
- Restrict network exposure to required services only.

## Secret Handling

- Inject secrets at runtime through platform secret facilities.
- Avoid putting long-lived credentials into plain `.env` files that are committed to VCS.
- Rotate credentials and test rotation with running services.

## Operational Hardening

- Use separate application and administration roles.
- Limit privileged connectivity from application containers.
- Monitor auth failures and repeated connection errors.
