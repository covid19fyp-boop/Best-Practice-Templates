# Password, MFA, And Session Security

## 1) Password Policy And Storage

- Use adaptive password hashing with Argon2id, scrypt, or bcrypt.
- Tune work factors to current hardware and revisit periodically.
- Block weak and compromised passwords where feasible.

## 2) Login Abuse Controls

- Rate-limit login, password reset, and verification endpoints.
- Add progressive lockout or challenge after repeated failures.
- Monitor brute-force and credential-stuffing indicators.

## 3) MFA Policy

- Require MFA for admin and high-risk operations.
- Prefer phishing-resistant factors where feasible.
- Provide secure recovery path with identity proofing controls.

## 4) Session Lifecycle Controls

- Rotate session ID after authentication and privilege elevation.
- Enforce idle and absolute timeout limits.
- Re-authenticate before sensitive account changes.

## 5) Session Storage And Revocation

- Store session metadata needed for selective revocation.
- Provide revoke-current and revoke-all-sessions endpoints.
- Invalidate sessions quickly on password reset and compromise events.

## 6) Checklist

- Confirm password hashes never leave trusted backend boundaries.
- Confirm lockout and throttling behavior is tested.
- Confirm MFA enrollment, challenge, and recovery flows are tested.
- Confirm compromise response runbook includes forced session invalidation.
