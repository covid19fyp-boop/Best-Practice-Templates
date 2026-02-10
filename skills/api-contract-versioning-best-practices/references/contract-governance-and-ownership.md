# Contract Governance And Ownership

## 1) Set A Single Contract Source Of Truth

- Store OpenAPI spec in version control with application code.
- Require contract updates in the same change set as behavior changes.
- Prevent runtime behavior from diverging from committed contract artifacts.

## 2) Define Consumer And Producer Ownership

- Name producer owners for each API domain.
- Name consumer owners for each dependent frontend or service.
- Require explicit reviewer set for breaking or high-impact changes.

## 3) Define Change Classification

- Non-breaking: additive fields, additive endpoints, optional parameters.
- Breaking: removal or rename, required-field introduction, semantic behavior shift.
- Risky-but-compatible: default-value changes, validation tightening, ordering/precision shifts.

## 4) Governance Checklist

- Confirm every contract PR includes change type label.
- Confirm every breaking PR includes version and migration plan.
- Confirm every deprecated element includes sunset timeline.
- Confirm changelog entry is published for consumer teams.
