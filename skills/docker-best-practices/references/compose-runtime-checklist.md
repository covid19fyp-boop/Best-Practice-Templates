# Compose And Runtime Checklist

## Compose Service Definition

- Use explicit image tags or deterministic build definitions.
- Set clear service names and internal ports.
- Keep environment variables explicit and documented.
- Use `.env` for local defaults, but never commit secrets.

## Networking

- Use default isolated networks unless cross-stack communication is needed.
- Avoid exposing internal-only services to host ports.
- Document port mappings and expected protocols.

## Storage

- Use named volumes for persistent data.
- Use bind mounts for local development workflows only when needed.
- Confirm file ownership and permissions for mounted paths under non-root users.

## Startup Ordering And Health

- Define health checks for services that others depend on.
- Avoid relying only on startup order; wait for healthy dependencies where required.
- In Compose dependencies, use health-based conditions when readiness matters.
- Keep health probes lightweight and stable.

## Operations

- Send logs to stdout/stderr.
- Use restart policies aligned to service criticality.
- Set CPU and memory limits where platform supports them.
- Keep container timezones/locales explicit only when required by application behavior.

## Security And Secrets

- Use Compose `secrets` for sensitive data and avoid plain environment variables for secrets.
- Inject secrets via runtime facilities, not image layers.
- Limit privileged modes and host namespace sharing.
- Drop unneeded capabilities and avoid `privileged: true` unless justified.
