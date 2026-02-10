Use this template to generate or improve tests with CI parity.

```text
Create or update tests for the following change:
<describe change>

Testing goals:
- Protect domain invariants
- Cover boundary and integration behavior
- Keep E2E minimal and critical-path only

Constraints:
- Use deterministic fixtures
- Keep tests CI-friendly
- Do not modify production code unless required to enable testability

Deliver:
1) Proposed test matrix (unit/integration/contract/e2e)
2) Implemented tests
3) Commands to run locally and in CI
4) Flaky-risk notes
```
