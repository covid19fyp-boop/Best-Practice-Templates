---
name: auth-best-practices
description: Design and implement robust authentication and authorization across FastAPI, Next.js, PostgreSQL, and Docker deployments. Use when choosing session or token strategy, building login and registration flows, enforcing RBAC or scopes, integrating OAuth and OIDC providers, managing password and MFA controls, rotating and revoking tokens or sessions, hardening auth data and secrets, or validating auth incident readiness before release.
---

# Auth Best Practices

Follow this workflow when building or reviewing authentication and authorization for this stack.

## 1) Define Identity Model And Trust Boundaries First

- Identify actor types, identity sources, and protected resources.
- Define trust boundaries between browser, Next.js server runtime, FastAPI API, and PostgreSQL.
- Map authentication outcomes to explicit authorization policies.

Read `references/auth-architecture-and-flows.md`.

## 2) Choose Session And Token Strategy Deliberately

- Prefer server-managed sessions for browser-first apps with high revocation needs.
- Use short-lived access tokens and constrained refresh tokens where API token flows are required.
- Keep token and session lifetimes explicit per risk level.

Read `references/auth-architecture-and-flows.md`.
Read `references/oauth-oidc-and-token-security.md`.

## 3) Harden FastAPI Authentication And Authorization Paths

- Apply auth dependencies on all protected routes and mutation boundaries.
- Use OAuth2 scopes or role checks for authorization decisions.
- Keep auth errors consistent and non-enumerating.

Read `references/fastapi-auth-controls.md`.

## 4) Harden Next.js Authentication Boundaries

- Keep session or token handling server-side and avoid exposing secrets in client bundles.
- Use secure, `httpOnly`, and `sameSite` cookie settings for browser sessions.
- Centralize authorization checks in server-only data access paths.

Read `references/nextjs-auth-controls.md`.

## 5) Secure Password, MFA, And Session Lifecycle

- Hash passwords with modern adaptive algorithms and tuned work factors.
- Enforce login throttling and lockout controls on high-risk auth endpoints.
- Rotate session identifiers after authentication and privilege changes.

Read `references/password-mfa-and-session-security.md`.

## 6) Implement OAuth And OIDC Provider Flows Safely

- Prefer authorization code flow with PKCE for public clients.
- Reject implicit and resource-owner-password flows for new implementations.
- Validate redirect URI, state, issuer, audience, and token type rules strictly.

Read `references/oauth-oidc-and-token-security.md`.

## 7) Protect PostgreSQL Auth Data And Access Controls

- Store credentials and sessions with least-privilege database roles.
- Use SCRAM-based PostgreSQL password authentication where possible.
- Keep row-level and tenant-level authorization boundaries explicit.

Read `references/postgres-auth-data-and-policies.md`.

## 8) Protect Secrets And Runtime Auth Configuration In Docker

- Inject auth secrets with Docker secrets, not plain environment variables.
- Scope secret access per service and avoid broad secret sharing.
- Keep key rotation and revocation procedures documented and testable.

Read `references/docker-secrets-and-runtime-auth.md`.

## 9) Operationalize Auth Monitoring And Response

- Log authentication and authorization failures with traceable context.
- Monitor suspicious patterns: brute-force attempts, token replay, and session anomalies.
- Require re-authentication for risky events and high-impact actions.

Read `references/auth-testing-and-incident-readiness.md`.

## 10) Verify Before Release

- Confirm critical flows (register, login, logout, refresh, reset, revoke) are tested.
- Confirm authorization policies match product roles and sensitive operations.
- Confirm runbooks exist for credential compromise, token leakage, and lockout incidents.

For canonical standards and updates, read `references/official-sources.md`.
