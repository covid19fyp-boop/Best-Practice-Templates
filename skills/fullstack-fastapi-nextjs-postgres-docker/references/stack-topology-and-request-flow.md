# Stack Topology And Request Flow

## Baseline Service Layout

- `frontend`: Next.js app (SSR/CSR and UI routes).
- `api`: FastAPI service for domain APIs and mutations.
- `db`: PostgreSQL service with persistent volume.

## Request Flow Guidance

- Prefer routing patterns that minimize cross-origin complexity.
- If frontend and API are different origins, configure CORS deliberately in FastAPI.
- Keep database access private to backend services; do not expose PostgreSQL to browser clients.

## Network And Naming

- Use Compose service names for internal service discovery.
- Avoid hardcoding host IPs in app configuration.
- Keep ingress and trust boundaries explicit if a reverse proxy is added.
