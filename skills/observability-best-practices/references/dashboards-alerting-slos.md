# Dashboards, Alerts, And SLO Workflows

## 1) Dashboard Design Principles

- Build dashboards by user journey and service boundary.
- Keep a consistent panel layout: traffic, latency, errors, saturation.
- Add drill-down links from aggregate views to route/query-level panels.

## 2) Alert Rule Construction

- Use rules based on user impact or reliability risk, not raw noise.
- Set explicit hold periods (`for`) to reduce transient false positives.
- Add labels (service, severity, owner) and annotations (summary, runbook URL).

Prometheus alerting rules support `expr`, `for`, `labels`, and `annotations` for actionable alerts.

## 3) Notification And Routing

- Group alerts by owning service and severity class.
- Route pages to on-call responders; route lower severities to async channels.
- Keep escalation policies and contact points version-controlled.

Grafana Alerting supports query/condition evaluation and notification routing through contact points and policies.

## 4) SLO And Error-Budget Operations

- Define SLIs per critical user journey.
- Set SLO targets with explicit time window.
- Alert on burn rate using multi-window patterns to detect fast and slow failures.

## 5) Operational Checklist

- Confirm each critical SLO has at least one user-impacting alert.
- Confirm every paging alert has a runbook link and clear owner.
- Confirm alert review cadence removes stale or noisy rules.
- Confirm post-incident reviews update dashboards and thresholds.
