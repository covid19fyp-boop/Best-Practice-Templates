# Automation And Reporting

## Reproducible Research Execution

- Prefer non-interactive Codex runs for repeat workflows.
- Use profile/config settings to standardize sandbox, approval, and model behavior.
- Keep scripts idempotent and explicit about inputs and outputs.

## Codex CLI Patterns

- Use command-mode runs for deterministic prompt execution.
- Use machine-readable output mode when downstream tooling parses results.
- Keep prompts and constraints versioned when used in repeat pipelines.

## Reporting Template

- Question and constraints.
- Evidence summary with citations.
- Options and tradeoffs.
- Recommended path and rationale.
- Open risks and follow-up checks.

## Handoff Quality Gates

- Verify all links are reachable.
- Verify critical claims still match the cited source.
- Verify dates are explicit for unstable information.
