# Kill Switch And Operational Safety

## 1) Keep Kill Switches Operationally Simple

- Use one-purpose switches for critical failure containment.
- Keep evaluation conditions minimal for emergency actions.
- Ensure override path works without complex dependency chains.

## 2) Validate Kill Switch Readiness

- Test emergency disable path in staging and controlled production drills.
- Measure time-to-disable and time-to-recover.
- Ensure on-call responders know exact control surface.

## 3) Pair Kill Switches With Incident Workflow

- Link each operational flag to runbook and service owner.
- Log toggle events with actor, reason, and timestamp.
- Use post-incident reviews to refine thresholds and procedures.

## 4) Safety Checklist

- Confirm kill-switch permissions are restricted.
- Confirm emergency toggle can be executed in under target response time.
- Confirm re-enable criteria are documented.
