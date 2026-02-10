# Next.js Security Controls

## Server-Only Boundaries

- Keep secrets and privileged logic in server runtime only.
- Treat Server Actions and Route Handlers as externally reachable mutation surfaces.
- Validate and authorize every mutation input server-side.

## Data Exposure Control

- Avoid leaking sensitive fields through serialized props or client bundles.
- Use `NEXT_PUBLIC_*` only for truly public values.
- Keep auth/session checks centralized for protected routes.

## Browser Security Posture

- Configure security headers and CSP where required.
- Keep redirect/callback validation strict for auth flows.
- Revalidate cache paths/tags intentionally after sensitive mutations.

## Operational Discipline

- Review production checklist for headers, runtime mode, and deployment settings.
- Audit third-party scripts and browser-exposed dependencies regularly.
