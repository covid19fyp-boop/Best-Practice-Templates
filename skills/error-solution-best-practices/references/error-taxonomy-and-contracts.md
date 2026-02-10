# Error Taxonomy And Contracts

## 1) Classify Errors

- Validation and input errors.
- Authentication and authorization errors.
- Domain/business-rule errors.
- Dependency and infrastructure errors.
- Unknown or unhandled errors.

## 2) Contract Rules

- Use stable machine-readable error codes.
- Use consistent HTTP mapping and response shape.
- Include correlation ID for tracing each failure path.

## 3) User And Operator Separation

- Show safe and actionable user messages.
- Keep sensitive diagnostic detail internal only.
