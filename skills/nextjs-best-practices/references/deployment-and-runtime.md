# Deployment And Runtime

## Environment Management

- Keep environment variables explicit per environment.
- Separate public and server-only variables correctly.
- Validate required variables at startup.

## Runtime Choice

- Choose Node runtime or Edge runtime per route constraints and dependency needs.
- Keep runtime assumptions explicit in route configuration where needed.
- Verify compatibility for database/network libraries before runtime selection.

## Operations

- Add health and error monitoring with actionable metadata.
- Keep cache invalidation and deployment rollout strategy explicit.
- Verify production behavior with realistic staging traffic before full rollout.
