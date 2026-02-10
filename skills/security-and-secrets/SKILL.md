---
name: security-and-secrets
description: Apply baseline security controls for app code, infrastructure, and AI-assisted workflows. Use when handling authentication, authorization, secrets, logging safety, dependency risk, backups, and least-privilege operations.
---

# Security And Secrets

## Instructions

1. Classify sensitive data and define non-loggable fields.
2. Enforce authentication/session safety:
   - Strong password hashing
   - Secure session/token handling
   - Explicit timeout and invalidation behavior
3. Enforce authorization with default-deny and least privilege.
4. Keep secrets out of source code:
   - Use environment variables or secret stores
   - Use separate credentials for local/dev/CI/prod
5. Harden runtime and CI:
   - Minimize workflow permissions
   - Restrict who can trigger write-capable automations
   - Keep network access disabled by default where practical
6. Apply dependency and supply-chain hygiene:
   - Regular scanning
   - Defined patch cadence
7. Include backup and restore drills in security operations.

Use with:

- `skills/database-and-migrations/SKILL.md`
- `skills/release-and-versioning/SKILL.md`
- `skills/codex-cli-integration/SKILL.md`

## Decision Criteria

- Use stricter controls when handling finance-sensitive data or privileged operations.
- Prefer deny-by-default behavior for access and automation permissions.
- Require explicit approval for new external dependencies or elevated privileges.
- Treat missing restore capability as a security risk, not just operations debt.

## Examples

### Example 1: Secrets policy

```text
Draft a secrets handling policy for local dev, CI, and production.
Include storage, rotation, exposure response, and audit requirements.
```

### Example 2: Access-control review

```text
Review authorization for finance APIs.
Find routes with weak access checks and propose tests for broken-access-control cases.
```

### Example 3: Security hardening checklist

```text
Generate a release-ready security checklist covering auth, secrets, logging, dependencies, backups, and CI permissions.
```

## Anti-Patterns

- Logging secrets, PII, or raw credentials.
- Sharing one long-lived credential across all environments.
- Granting write-level CI permissions to untrusted triggers.
- Ignoring dependency vulnerabilities due to "non-critical" labels.

## Checklist

- [ ] Sensitive fields are classified and redacted in logs.
- [ ] Auth and session/token controls are documented and tested.
- [ ] Authorization uses least-privilege and default-deny.
- [ ] Secrets management and rotation policy exists.
- [ ] CI/workflow permissions are minimal.
- [ ] Dependency scanning and patch cadence are active.
- [ ] Backup and restore drills are scheduled.
