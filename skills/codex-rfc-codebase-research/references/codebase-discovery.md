# Codebase Discovery

## Discovery Order

- Start from user-visible flows and trace inward.
- Map route or entrypoint to service or handler, then to persistence and integration layers.
- Capture each boundary crossing with file references.

## Evidence Discipline

- Prefer concrete file and symbol references over summaries.
- Separate observed behavior from inferred behavior.
- Record version/commit context when available.

## High-Risk Zones

- Authentication and authorization boundaries.
- Data mutation paths and transaction boundaries.
- Caching and invalidation paths.
- Migration and backward-compatibility seams.
