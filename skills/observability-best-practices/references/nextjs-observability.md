# Next.js Observability

## 1) Enable OpenTelemetry Registration

- Create `instrumentation.ts` at the project root (or `src/`) and export `register`.
- Register OpenTelemetry in `register`, for example with `registerOTel`.
- Treat instrumentation setup as a release gate for server runtime telemetry.

Next.js supports OpenTelemetry instrumentation out of the box and can report tracing for server-side lifecycle events.

## 2) Focus On Server-Side Critical Paths

- Instrument Route Handlers and Server Actions for latency and error visibility.
- Instrument backend calls made from server runtime.
- Keep sensitive data out of span and log payloads.

Current built-in tracing in Next.js is server-side.

## 3) Propagate Trace Context Across Boundaries

- Ensure trace headers flow from ingress to Next.js server runtime.
- Preserve context on outbound calls to FastAPI.
- Confirm end-to-end traces stitch Next.js and FastAPI spans together.

## 4) Recommended Metrics And Logs

- Server request duration histograms by route segment and status class.
- Error counters for route handlers and server actions.
- Structured server logs with trace and request correlation fields.

## 5) Next.js Checklist

- Confirm `instrumentation.ts` executes in all deployed environments.
- Confirm traces include both Next.js server spans and FastAPI spans.
- Confirm dashboard panels separate frontend-edge, Next.js server, and API latency.
