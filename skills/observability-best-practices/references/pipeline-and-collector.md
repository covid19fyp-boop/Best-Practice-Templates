# Pipeline And Collector

## 1) Build A Layered Telemetry Pipeline

- Instrument applications with OpenTelemetry SDKs.
- Send telemetry using OTLP to OpenTelemetry Collector.
- Use Collector processors to batch, filter, and enrich before export.

OpenTelemetry Collector uses `receivers`, `processors`, `exporters`, and `service.pipelines` as core building blocks.

## 2) Standardize SDK Configuration

Use shared environment-variable profiles across services:

- `OTEL_SERVICE_NAME`
- `OTEL_RESOURCE_ATTRIBUTES`
- `OTEL_PROPAGATORS`
- `OTEL_TRACES_SAMPLER`
- `OTEL_EXPORTER_OTLP_ENDPOINT`
- `OTEL_EXPORTER_OTLP_PROTOCOL`

These settings keep resource identity, propagation, and export behavior consistent.

## 3) Sampling And Cost Controls

- Start with stable head-based sampling and document policy by environment.
- Increase sampling for high-value or failing flows during incidents.
- Keep sampling policy and retention policy aligned.

## 4) Metrics Query Performance Controls

- Use Prometheus recording rules for repeated expensive expressions.
- Keep recording rule naming consistent and dashboard-oriented.
- Distinguish raw metrics from derived SLI/SLO series clearly.

## 5) Pipeline Checklist

- Confirm all services export to a reachable collector endpoint.
- Confirm collector pipelines are version-controlled and peer-reviewed.
- Confirm dropped telemetry and exporter failures are themselves observable.
- Confirm storage retention is defined for metrics, traces, and logs.
