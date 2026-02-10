# FastAPI Auth Controls

## 1) Use FastAPI Security Dependencies Explicitly

- Apply authentication dependencies on every protected route.
- Centralize token parsing and principal resolution.
- Keep route authorization checks close to mutation logic.

FastAPI provides OAuth2 and scope support via its security dependency system.

## 2) Enforce Authorization At Operation Boundaries

- Check roles and scopes before side effects.
- Keep policy names explicit and auditable.
- Return consistent authorization errors.

## 3) Protect Token Handling

- Validate issuer, audience, expiry, and signature for JWT-based access tokens.
- Accept only expected algorithms and key IDs.
- Reject unsigned tokens and malformed claims.

## 4) Protect Password Flows

- Use strong password hashing in credential verification.
- Enforce throttling on login and reset endpoints.
- Use uniform response timing and messages to reduce account enumeration.

## 5) FastAPI Checklist

- Confirm all protected endpoints require identity dependencies.
- Confirm scope or role checks cover every privileged operation.
- Confirm auth failure logs include request and actor context without secrets.
- Confirm key rotation plan is documented and tested.
