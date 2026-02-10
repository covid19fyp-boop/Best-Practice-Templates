# Contract Testing And CI Gates

## 1) Validate Contract Artifact Quality

- Validate OpenAPI syntax on every pull request.
- Lint for required metadata, error schema consistency, and naming conventions.
- Fail builds on unresolved schema reference errors.

## 2) Detect Breaking Changes Before Merge

- Run contract diff between base and proposed OpenAPI versions.
- Classify differences into breaking, non-breaking, and informational.
- Require explicit override approval for any breaking change.

## 3) Verify Runtime Conformance

- Run API tests against the declared OpenAPI contract.
- Test both happy paths and error responses.
- Include backward-compatibility tests for previous-version consumers.

## 4) Release Gate Rules

- Block release when breaking changes do not include major version bump.
- Block release when deprecation headers and docs are inconsistent.
- Block release when generated client contracts are out of sync.

## 5) Incident And Rollback Readiness

- Keep previous version contract and routing ready for rollback.
- Define rapid mitigation for accidental contract breaks.
- Record post-incident action items into contract governance policy.
