# Contract And Runtime Validation

## Contract Checks

- Validate API request/response compatibility.
- Validate schema and migration assumptions.
- Validate module boundary expectations.

## Runtime Checks

- Verify startup dependencies and health assumptions.
- Verify configuration and secret expectations.
- Verify failure behavior and retry semantics.

## Regression Risk Checks

- Identify callers affected by breaking changes.
- Identify data transformations with rollback risk.
- Identify sequencing requirements for safe rollout.
