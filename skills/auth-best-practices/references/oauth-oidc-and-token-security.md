# OAuth, OIDC, And Token Security

## 1) Prefer Safer OAuth Flow Defaults

- Use authorization code flow for web and mobile clients.
- Require PKCE for public clients.
- Avoid implicit and resource-owner-password grant for new systems.

Recent OAuth security guidance deprecates weaker legacy flows.

## 2) Client And Redirect Safety

- Register exact redirect URIs; do not allow wildcard callback patterns.
- Validate `state` and `nonce` where applicable.
- Keep client secrets only in confidential-server contexts.

## 3) Access And Refresh Token Policy

- Keep access tokens short-lived and audience-scoped.
- Use refresh token rotation with replay detection.
- Bind refresh handling to device and session metadata when possible.

## 4) JWT Validation Rules

- Validate signature, issuer, audience, expiry, and not-before claims.
- Pin accepted algorithms and reject algorithm confusion.
- Keep JWT claim payload minimal and non-sensitive.

## 5) Bearer Token Handling

- Use TLS for all bearer token transport.
- Never log raw access or refresh token values.
- Require explicit token revocation workflow.

## 6) Checklist

- Confirm PKCE is enforced in public-client authorization code flows.
- Confirm redirect URI validation is strict and tested.
- Confirm JWT algorithm allowlist and key rotation are enforced.
- Confirm refresh token replay handling is implemented and monitored.
