# Stack Inventory And Cadence

## 1) Build One Version Inventory

- Track versions for framework, runtime, database, and container layers in one table.
- Track end-of-life and support window per dependency.
- Link each item to owner and maintenance cadence.

## 2) Define Update Cadence

- Critical security updates: fast-track window.
- Standard updates: monthly or sprint cadence.
- Major upgrades: dedicated change initiative with staging soak.

## 3) Prioritize By Risk

- `Urgent`: known security exposure or active production instability.
- `Planned`: supported but drifting from recommended versions.
- `Defer`: low impact and well-contained.
