---
name: docker-best-practices
description: Create, review, and harden Dockerfiles and Docker Compose setups for development and production. Use when containerizing an app, reducing image size or build time, applying security hardening (non-root users, minimal base images, secret handling), adding health checks, or debugging container startup and runtime behavior.
---

# Docker Best Practices

Follow this workflow when building or reviewing container setups.

## 1) Validate Host Prerequisites (Windows 11)

- Verify Docker Desktop system requirements from the current Docker docs before installation.
- Verify `wsl --version` and update WSL if required.
- Verify virtualization is enabled in BIOS/UEFI.
- For Linux-container workflows on Windows, prefer the WSL 2 backend.

Read `references/windows-11-checklist.md` when working on Windows hosts.

## 2) Classify The Target

- Identify runtime type: local development, CI build, staging, or production.
- Identify artifact type: single service image or multi-service compose stack.
- Identify constraints: startup latency, image size limits, security requirements, and platform target.

## 3) Build A Safe Baseline First

- Prefer official and minimal base images.
- Pin base image versions and prefer digest pinning for reproducibility.
- Use multi-stage builds for compiled or bundled apps.
- Run processes as a non-root user unless there is a clear runtime requirement.
- Add `.dockerignore` early to reduce build context and accidental secret leakage.
- Use BuildKit secrets (`--secret` and `RUN --mount=type=secret`) for build-time sensitive data.

Read `references/dockerfile-checklist.md` before writing or reviewing Dockerfiles.

## 4) Optimize Build Determinism And Speed

- Order layers for cache reuse: dependency metadata first, source files later.
- Keep package-install and cleanup in the same layer when possible.
- Avoid unnecessary shell tools and debug packages in runtime stages.
- Separate build-time and runtime dependencies.
- Rebuild regularly and use `docker build --pull` when refreshing base images.

## 5) Harden Runtime Behavior

- Set explicit `WORKDIR`, `EXPOSE`, and `CMD`/`ENTRYPOINT`.
- Add a health check when the service has a stable liveness signal.
- Handle graceful shutdown with signal-aware process startup.
- Set sane resource expectations and restart behavior for long-running services.

Read `references/compose-runtime-checklist.md` for compose and runtime details.

## 6) Verify Before Shipping

- Confirm image builds cleanly from scratch.
- Confirm container starts and responds on expected ports.
- Confirm non-root execution and file permissions are correct.
- Confirm no secrets are baked into image layers or history.
- Confirm logs are emitted to stdout/stderr and are actionable.

## 7) Handle Common Failure Modes

- For large images: inspect layer composition and move tooling out of runtime stage.
- For slow rebuilds: move high-churn files later in the Dockerfile.
- For startup failures: verify entrypoint command, env vars, permissions, and dependency readiness.
- For compose instability: verify service health checks and startup dependencies.
