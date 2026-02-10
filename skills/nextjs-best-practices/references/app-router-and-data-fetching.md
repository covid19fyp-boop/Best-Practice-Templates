# App Router And Data Fetching

## Router Structure

- Use App Router (`app/`) for route composition, layouts, and nested UI.
- Keep route segments small and domain-oriented.
- Use route groups and layouts to avoid duplication.

## Server And Client Components

- Default to Server Components for data-heavy rendering.
- Add `'use client'` only where browser APIs or interactive state is required.
- Keep client boundaries narrow to reduce bundle size.

## Data Fetching Patterns

- Fetch data on the server by default in Server Components.
- Use Route Handlers for API-style needs and cross-client consumption.
- Use Server Actions for controlled mutations tied to UI flows.
