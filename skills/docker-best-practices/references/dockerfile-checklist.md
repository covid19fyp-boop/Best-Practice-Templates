# Dockerfile Checklist

## Base Image

- Prefer trusted official base images.
- Use minimal runtime images where practical.
- Pin version tags and prefer digest pinning for production builds.
- Rebuild frequently to pick up security patches and bug fixes in base images.

## Build Structure

- Use multi-stage builds to keep runtime images small.
- Place dependency manifest copy/install before source copy to improve cache reuse.
- Keep related operations together to avoid unnecessary layers.

## Dependency Hygiene

- Install only required runtime packages.
- Remove package manager caches and temporary files in the same layer when possible.
- Avoid shipping compilers, build tools, and test dependencies in final runtime stage.

## Security

- Create and use a non-root user.
- Avoid copying secret files into build context.
- Use `.dockerignore` to exclude `.env`, VCS metadata, local build outputs, and secrets.
- Use BuildKit secrets for build-time secrets instead of `ARG`/`ENV`.
- Prefer runtime secret injection for application secrets.

## Runtime Contract

- Set `WORKDIR` explicitly.
- Expose documented container ports.
- Use exec-form `CMD` or `ENTRYPOINT` for correct signal handling.
- Add `HEALTHCHECK` when the service supports a stable probe.

## Reproducibility

- Pin dependency versions where feasible.
- Avoid implicit network downloads at runtime.
- Ensure builds are deterministic in CI with identical build args and context.
- Use `docker build --pull` when intentionally refreshing base-image layers.
