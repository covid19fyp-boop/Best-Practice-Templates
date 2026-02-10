# Auth Architecture And Flows

## 1) Start From Threat Model And User Journeys

- Define user types, machine actors, and tenant boundaries.
- Mark which flows are browser-based, API-based, and service-to-service.
- Treat authentication and authorization as separate controls.

## 2) Choose A Primary Session Pattern

- Browser-first product: prefer server-managed sessions in secure cookies.
- API-first product: use access tokens with explicit refresh strategy.
- Mixed mode: keep browser and API auth surfaces distinct; avoid accidental sharing.

## 3) Session And Token Lifetime Policy

- Keep access lifetime short and explicit.
- Require refresh-token rotation and replay detection when refresh tokens are used.
- Define absolute session timeout and idle timeout by risk tier.

## 4) Authorization Model

- Use role-based access where policy is stable and coarse.
- Use scope-based checks for API capabilities and delegated access.
- Use resource-level checks for tenant and ownership boundaries.

## 5) Critical Flow Checklist

- Registration and verification flow.
- Login and MFA challenge flow.
- Session continuation and refresh flow.
- Logout and revoke-all-sessions flow.
- Password reset and account recovery flow.

## 6) Design Guardrails

- Fail closed when identity is missing or invalid.
- Do not leak whether account, email, or username exists.
- Require step-up auth for sensitive profile and financial operations.
