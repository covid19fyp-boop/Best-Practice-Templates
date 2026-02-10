# Security, Secrets, And Supply Chain

## Identity And Secrets

- Use least-privilege service identities for CI/CD runners.
- Prefer short-lived cloud credentials via OIDC federation.
- Avoid long-lived static credentials in pipeline variables.

## Artifact And Dependency Trust

- Scan dependencies and container images in CI.
- Generate and retain SBOMs where required.
- Use signed/provenance-capable artifact flows when available.

## Hardening

- Protect default branches and deployment environments.
- Restrict who can approve production deployments.
- Audit pipeline changes and secret access events.
