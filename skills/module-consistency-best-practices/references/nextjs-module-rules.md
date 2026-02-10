# Next.js Module Rules

## App Router Structure

- Use route segments and layouts intentionally for feature boundaries.
- Use route groups/private folders to organize without affecting URL paths when needed.

## Server And Client Split

- Default to Server Components for data and secure logic.
- Add `'use client'` only for interactive browser behavior.
- Keep client boundaries narrow to avoid unnecessary bundle growth.

## Route-Level Co-Location

- Keep route-local components, actions, and helpers close to the route segment.
- Keep shared UI/utilities in clearly named shared modules when reused.

## Data And Mutation Boundaries

- Use Route Handlers or Server Actions as explicit mutation boundaries.
- Keep secrets and privileged operations server-side only.
