# Upgrade Playbooks

## 1) Pre-Upgrade Checks

- Capture current known-good state and key metrics.
- Read release notes and breaking-change advisories.
- Confirm rollback target (image tags, migration state, config snapshot).

## 2) Execute In Waves

- Wave 1: patch/minor updates with low compatibility risk.
- Wave 2: framework/runtime updates with compatibility testing.
- Wave 3: major upgrades requiring migration or behavior changes.

## 3) Verify Before Promotion

- Run unit, integration, and smoke tests in containerized environments.
- Validate API contracts and frontend route behavior.
- Compare latency/error metrics against pre-upgrade baseline.
