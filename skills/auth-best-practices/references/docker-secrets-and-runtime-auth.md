# Docker Secrets And Runtime Auth

## 1) Use Docker Secrets For Sensitive Auth Material

- Store signing keys and provider secrets in Docker secrets.
- Mount secrets only into services that require them.
- Avoid putting long-lived secrets directly in Compose environment values.

Docker secrets are mounted as files and are designed for sensitive runtime material.

## 2) Key And Secret Rotation Workflow

- Version signing keys and keep active plus previous keys during rotation windows.
- Rotate client secrets and database credentials on schedule and on incident.
- Document rollback and emergency revoke steps.

## 3) Runtime Exposure Controls

- Keep secret files with least-privilege file permissions.
- Prevent secret values from entering logs and crash traces.
- Restrict shell and debug access in production containers.

## 4) Compose And Deployment Controls

- Define secrets explicitly in Compose and map per service.
- Keep environment-specific secret stores separate.
- Validate startup behavior when required secrets are absent.

## 5) Checklist

- Confirm every auth secret has owner, source, and rotation period.
- Confirm local development uses non-production secrets only.
- Confirm incident runbook includes key revocation and forced session invalidation.
