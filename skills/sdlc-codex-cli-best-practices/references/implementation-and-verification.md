# Implementation And Verification

## Fast Change Loop

- Implement minimal viable patch for one behavior change.
- Run nearest targeted test immediately.
- Re-run affected suite after fix is stable.

## Codex CLI Execution Patterns

- Use interactive mode for discovery and guided edits.
- Use non-interactive execution for repeatable checks and scripted workflows.
- Prefer structured output options for automation and policy tooling.

## Regression Control

- Expand test scope incrementally from unit to integration to end-to-end.
- Avoid skipping failing tests without explicit rationale.
- Keep fix loops short: reproduce, patch, re-run failing test, re-run related suite.
