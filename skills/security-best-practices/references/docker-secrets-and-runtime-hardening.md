# Docker Secrets And Runtime Hardening

## Image Hardening

- Use minimal, trusted base images and pin versions.
- Run application as non-root user.
- Keep build-time tools out of runtime images via multi-stage builds.

## Secrets Management

- Inject secrets at runtime (Compose secrets or platform secret stores).
- Avoid baking secrets into image layers, env files committed to VCS, or build args.
- Prefer secret file patterns (`*_FILE`) where image/runtime supports them.

## Runtime Restriction

- Avoid `privileged: true` unless explicitly justified.
- Drop unnecessary capabilities and limit host namespace sharing.
- Expose only required ports and isolate internal services on private networks.

## Logging And Forensics

- Emit logs to stdout/stderr for centralized collection.
- Keep container metadata and image provenance auditable.
