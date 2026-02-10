# Next.js FastAPI PWA Integration

## 1) Keep Frontend PWA Surface In Next.js

- Use Next.js App Router manifest convention for metadata generation.
- Register service worker from a client component with clear lifecycle handling.
- Keep offline fallback routes and assets versioned with app releases.

## 2) Keep Backend Contracts Explicit In FastAPI

- Define typed endpoints for push subscription create/delete and test send flows.
- Validate payload schemas and authenticate each subscription mutation.
- Keep push credentials and provider tokens out of frontend bundles.

## 3) Handle Origin And Security Boundaries

- Prefer same-origin frontend/backend integration where possible.
- If cross-origin is required, configure CORS explicitly and narrowly.
- Align cookie/token strategy with service worker fetch behavior.

## 4) Keep Containerized Delivery Workflow

- Follow repository policy: run installs, build, and tests inside Docker.
- Include PWA verification in containerized CI checks.
- Make service worker and manifest artifacts part of release review.
