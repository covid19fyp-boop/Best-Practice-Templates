# Next.js Client Contracts

## 1) Treat API Calls As Contracted Boundaries

- Isolate backend API calls in dedicated server-side client modules.
- Keep route handlers and server actions from bypassing typed client wrappers.
- Keep API base paths and version selectors centralized.

## 2) Generate Types From OpenAPI

- Generate TypeScript types or clients from pinned OpenAPI artifacts.
- Fail CI when generated outputs drift from committed contract versions.
- Review generated-type diffs as part of contract change review.

## 3) Versioned Consumer Migration Strategy

- Support parallel client adapters during major version migrations.
- Migrate high-traffic and high-risk flows first.
- Remove old adapters only after sunset criteria are met.

## 4) Next.js Checklist

- Confirm server-side API client layer uses one contract artifact version.
- Confirm UI error handling supports legacy and target response shapes during migration.
- Confirm deprecated endpoint usage is observable and reported.
