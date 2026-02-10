# Review, CI, And Release

## Review Standards

- Focus first on correctness, security, and behavioral regressions.
- Require file-level evidence for each finding.
- Require missing tests to be called out when risk is non-trivial.

## CI Workflow

- Run deterministic non-interactive Codex tasks in CI where applicable.
- Use machine-readable output mode for parseable checks.
- Keep failure output actionable and short.

## Release Controls

- Block merge/release on red critical gates.
- Require migration success before opening traffic to dependent code.
- Require smoke checks and rollback readiness after deployment.
