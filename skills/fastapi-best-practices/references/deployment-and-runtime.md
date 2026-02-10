# Deployment And Runtime

## Runtime Server

- Use production-grade ASGI serving with Uvicorn or equivalent process management.
- Avoid using reload mode in production.
- Do not use reload and multiple workers together.

## Container Strategy

- Keep one process concern per container.
- Scale via replicas/workers intentionally based on CPU and latency profile.
- Keep image and runtime configuration deterministic across environments.

## Reverse Proxy And Networking

- Configure forwarded headers/trusted proxy settings when behind a proxy.
- Keep service ports and health probes explicit.
- Monitor startup failures and slow-request behavior.
