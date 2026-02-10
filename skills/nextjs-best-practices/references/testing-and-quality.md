# Testing And Quality

## Core Coverage

- Test critical user journeys end to end.
- Test route behavior for loading, error, and not-found states.
- Test mutation paths with authorization and validation failures.

## Tooling Baseline

- Run lint and type checks in CI for every merge candidate.
- Keep tests deterministic with controlled fixtures and isolated side effects.
- Validate both server-rendered and interactive client behavior.

## Regression Control

- Add tests for bug fixes before merging.
- Keep snapshot usage intentional and scoped.
- Review build output and warnings as release blockers when relevant.
