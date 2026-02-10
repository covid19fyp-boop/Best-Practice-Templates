# Flakiness And CI Gates

## Flakiness Control

- Eliminate uncontrolled time/network dependencies.
- Avoid global mutable state shared across tests.
- Keep test order independence.

## Retry Policy

- Do not default to blind retries for every failure.
- Use targeted retries only when transient failure mode is known.
- Fix root cause for repeated flaky tests.

## CI Gate Design

- Make lint/type/unit/integration gates explicit.
- Separate fast PR gates from slower nightly/full regression gates.
- Keep failing gate output actionable for rapid debugging.
