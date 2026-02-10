# Migration Strategy And Release Phases

## 1) Choose A Migration Shape

- Schema-only: structure change without data rewrite.
- Data-only: backfill, cleanup, normalization, or recalculation.
- Mixed: schema plus data with staged rollout.

## 2) Use Expand-And-Contract For High-Risk Changes

- Expand phase: add nullable columns, additive indexes, and compatibility paths.
- Transition phase: dual-write and verify read parity.
- Contract phase: remove legacy columns, constraints, and compatibility code.

## 3) Define Release Gates Per Phase

- Expand gate: app is forward-compatible with old and new schema.
- Transition gate: backfill is complete and validated.
- Contract gate: no production reads or writes depend on old shape.

## 4) Risk Checklist

- Confirm lock-sensitive changes are identified.
- Confirm rollback boundary is defined.
- Confirm observability for migration progress and error rates is in place.
