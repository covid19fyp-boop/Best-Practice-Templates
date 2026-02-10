# FastAPI OpenAPI Governance

## 1) Keep Schema Definitions Explicit

- Use explicit Pydantic request and response models.
- Keep response models aligned with real runtime behavior.
- Avoid ad-hoc untyped payload shapes for stable public APIs.

## 2) Stabilize Operation Identity

- Set deterministic `operationId` values.
- Keep `operationId` stable across non-breaking refactors.
- Treat `operationId` changes as consumer-impacting when clients are generated from OpenAPI.

FastAPI supports custom `operation_id` and OpenAPI schema customization.

## 3) Mark And Manage Deprecated Operations

- Use `deprecated=True` on path operations before removal.
- Keep deprecated operations in spec until sunset policy is fulfilled.
- Return migration guidance in docs and changelog.

## 4) Version Boundary Implementation

- Use separate routers per major version when behavior diverges.
- Keep shared domain logic behind version-specific adapters where needed.
- Avoid silent behavior drift inside the same version path.

## 5) FastAPI Checklist

- Confirm OpenAPI artifact is generated and committed in CI.
- Confirm changed routes have updated request and response schemas.
- Confirm deprecated routes are tagged with removal timeline metadata.
- Confirm runtime tests validate declared contract examples.
