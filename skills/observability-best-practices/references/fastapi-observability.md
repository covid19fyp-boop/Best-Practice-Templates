# FastAPI Observability

## 1) Instrument HTTP Request Lifecycle

- Add middleware for request timing, status classification, and correlation context.
- Keep middleware order intentional because request and response processing order is stack-based.
- Emit templated route names (not raw URL paths) to avoid cardinality spikes.

FastAPI middleware runs before and after the path operation, making it a practical place to measure request duration and attach correlation metadata.

## 2) Use OpenTelemetry FastAPI Instrumentation

- Use `opentelemetry-instrumentation-fastapi` for automatic server span creation.
- Use hooks (`server_request_hook`, `client_request_hook`, `client_response_hook`) to add controlled custom attributes.
- Keep custom attributes low cardinality and useful for debugging or ownership routing.

## 3) Track Error Paths Explicitly

- Count exceptions by broad class and HTTP status family.
- Emit structured logs for handled and unhandled exceptions.
- Capture dependency failures with clear upstream target labels.

## 4) Recommended Metrics

- `http_server_requests_total` by method, route template, and status class.
- `http_server_request_duration_seconds` histogram by route template and method.
- Dependency call latency and error counters for PostgreSQL and external services.

## 5) FastAPI Checklist

- Confirm request middleware sets and forwards correlation IDs.
- Confirm tracing context reaches database and downstream HTTP calls.
- Confirm high-traffic routes have latency histograms and error counters.
- Confirm exception paths produce both metric increments and actionable logs.
