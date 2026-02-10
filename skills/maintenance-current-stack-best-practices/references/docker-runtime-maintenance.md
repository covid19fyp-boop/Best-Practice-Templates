# Docker Runtime Maintenance

## 1) Image Hygiene

- Pin base images to explicit tags.
- Rebuild images regularly to absorb security fixes.
- Keep runtime image minimal and drop unnecessary tooling.

## 2) Runtime Hardening

- Run containers as non-root users.
- Restrict writable paths and capabilities where possible.
- Keep secrets injected at runtime, not baked into images.

## 3) Health And Resilience

- Use meaningful liveness/readiness checks.
- Ensure dependency startup order does not hide failed readiness.
- Validate restart behavior and failure recovery paths.
