# Codex Testing Workflow

## Execution Sequence

- Run targeted tests immediately after a code change.
- If targeted tests pass, run the nearest broader suite.
- Before handoff, run relevant regression gates for touched areas.

## Command Discipline

- Use explicit test commands with clear scope.
- Keep command outputs short enough to diagnose failures quickly.
- Do not silently skip failing tests without documenting rationale.

## Fix Loop

- Reproduce failure.
- Patch minimal fix.
- Re-run failing test first.
- Re-run related suite.
