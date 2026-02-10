# Models, Settings, And Validation

## API Models

- Use Pydantic models for request and response schemas.
- Keep internal persistence models separate from external API models.
- Use `response_model` to enforce and filter outbound data.

## Validation

- Centralize field validation in models instead of route-level branching.
- Use typed fields and constrained values to reduce manual checks.
- Keep error semantics consistent across endpoints.

## Settings

- Use settings classes for environment-driven configuration.
- Load secrets from environment/runtime secret stores, not source code.
- Keep defaults safe for local development and explicit for production.
