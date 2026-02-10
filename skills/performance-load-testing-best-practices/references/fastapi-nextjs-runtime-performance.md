# FastAPI And Next.js Runtime Performance

## 1) FastAPI Performance Signals

- Track route-level latency percentiles and status-code distribution.
- Track dependency latency (database and downstream APIs).
- Track worker/process saturation and request queue pressure.

## 2) Next.js Performance Signals

- Track server-side route-handler and rendering latency under load.
- Monitor API fetch timings from server runtime.
- Separate frontend rendering concerns from backend API bottlenecks.

## 3) Runtime Tuning Pattern

- Validate that concurrency, worker count, and timeout settings match workload profile.
- Change one variable at a time and measure percentile impact.
- Keep tuning decisions tied to telemetry evidence.

## 4) Runtime Checklist

- Confirm latency regressions are attributed to specific layer before tuning.
- Confirm client-perceived latency and backend latency are both measured.
- Confirm high-traffic critical routes have dedicated dashboards.
