# CI/CD Supply Chain Security

## Pipeline Access Control

- Protect default branches and deployment environments.
- Require reviewed pull requests and required status checks.
- Restrict who can approve production deployments.

## Credential Security

- Prefer short-lived OIDC federation over long-lived static cloud keys.
- Scope token permissions to minimal required actions.
- Rotate and revoke credentials on schedule and incident triggers.

## Dependency And Artifact Trust

- Scan dependencies and container images in CI.
- Generate provenance/SBOM where policy requires.
- Block promotions on critical unresolved vulnerabilities.

## Runner And Workflow Hardening

- Pin action versions and avoid unreviewed mutable references.
- Restrict untrusted code execution in privileged contexts.
- Audit pipeline changes and deployment events.
