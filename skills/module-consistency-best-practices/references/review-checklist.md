# Module Consistency Review Checklist

## Structure

- Does the feature follow the approved module template?
- Are route/controller files thin and focused on transport concerns?
- Are service and repository responsibilities separated?

## Contracts

- Are request/response schemas explicit and reviewed?
- Are breaking contract changes intentional and documented?
- Are frontend call sites aligned with backend contract updates?

## Dependencies

- Do imports follow alias/entry-point rules?
- Any circular dependencies introduced?
- Any cross-module shortcuts that bypass boundaries?

## Data And Operations

- Are migration files included for schema changes?
- Are delete/restore semantics and retention effects considered if relevant?
- Are tests covering module boundaries and integration paths?
