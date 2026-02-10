---
name: security-best-practices
description: Design and enforce security controls across FastAPI, Next.js, PostgreSQL, and Docker deployments. Use when defining authentication and authorization boundaries, hardening API and frontend surfaces, securing database and secrets management, reducing container and supply-chain risk, or adding security-focused testing and operational response workflows.
---

# Security Best Practices

Follow this workflow when building or reviewing security posture for this stack.

## 1) Define Threat Model And Trust Boundaries First

- Identify critical assets, attacker paths, and highest-risk failure modes.
- Define trust boundaries between browser, frontend server, API, database, and infrastructure.
- Convert risks into explicit security controls and verification gates.

Read `references/threat-modeling-and-boundaries.md`.

## 2) Harden FastAPI Security Surface

- Enforce strong authentication and authorization at route/mutation boundaries.
- Keep input validation and error handling explicit and non-leaky.
- Configure CORS and security middleware intentionally.

Read `references/fastapi-security-controls.md`.

## 3) Harden Next.js Runtime And Data Boundaries

- Keep privileged logic server-side only.
- Treat Route Handlers and Server Actions as security boundaries.
- Protect secrets, session flows, and cache behavior across SSR/ISR paths.

Read `references/nextjs-security-controls.md`.

## 4) Secure PostgreSQL Access And Data Plane

- Enforce strong auth method and least-privilege roles.
- Keep network exposure and TLS settings explicit.
- Apply row/data access policies where tenant isolation is required.

Read `references/postgres-security-controls.md`.

## 5) Secure Docker Runtime, Secrets, And Config

- Use non-root images and minimal base images.
- Use runtime secret injection; avoid embedding secrets in images.
- Restrict container privileges and tighten network/service exposure.

Read `references/docker-secrets-and-runtime-hardening.md`.

## 6) Secure CI/CD And Supply Chain

- Protect pipelines, environments, and deployment approvals.
- Use short-lived credentials (OIDC where possible) and provenance checks.
- Add dependency/image scanning and block on critical policy violations.

Read `references/ci-cd-supply-chain-security.md`.

## 7) Operationalize Detection And Response

- Log authz/authn failures and suspicious mutation patterns.
- Define incident runbooks and breach containment steps.
- Run security drills and feed findings back into controls.

Read `references/monitoring-and-incident-response.md`.

## 8) Verify Before Release

- Confirm required security gates are enforced in CI/CD.
- Confirm secrets and runtime configs match policy.
- Confirm rollback and incident response paths are tested.

For canonical standards and updates, read `references/official-sources.md`.
