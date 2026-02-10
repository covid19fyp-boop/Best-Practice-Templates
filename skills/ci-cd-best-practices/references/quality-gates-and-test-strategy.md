# Quality Gates And Test Strategy

## Gate Design

- Define mandatory gates by risk tier.
- Keep fast checks early and deeper checks before promotion.
- Fail pipeline on failing required checks.

## Test Scope

- Run unit tests for logic-level changes.
- Run integration tests for API/data boundary changes.
- Run smoke tests after deploy to validate production-like behavior.

## Change Safety

- Validate schema migrations as part of release gates.
- Validate backward compatibility for active clients.
- Require reproducible test commands and deterministic fixtures.
