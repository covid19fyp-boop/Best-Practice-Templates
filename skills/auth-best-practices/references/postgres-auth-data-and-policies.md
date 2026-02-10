# PostgreSQL Auth Data And Policies

## 1) Use Strong Database Authentication Methods

- Prefer SCRAM-SHA-256 password authentication in `pg_hba.conf`.
- Avoid broad trust-based host authentication in production.
- Restrict database network exposure to trusted service boundaries.

## 2) Apply Least Privilege Roles

- Separate migration role, app runtime role, and read-only operational role.
- Grant only required schema and table privileges.
- Avoid using superuser from application runtime.

## 3) Protect Credential And Session Data

- Store only hashed password verifiers, never plaintext passwords.
- Keep refresh token and session records revocable and auditable.
- Encrypt sensitive columns where regulation or risk profile requires it.

## 4) Enforce Tenant And Resource Isolation

- Use explicit ownership checks in query layer.
- Add row-level security where multitenancy isolation requires database enforcement.
- Test both allowed and denied access paths.

## 5) Checklist

- Confirm `pg_hba.conf` and auth method choices are version-controlled.
- Confirm app role cannot perform schema changes.
- Confirm tenant boundary checks are tested for bypass attempts.
- Confirm backup and restore flow protects auth data confidentiality.
