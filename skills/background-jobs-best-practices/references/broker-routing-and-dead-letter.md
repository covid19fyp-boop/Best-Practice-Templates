# Broker Routing And Dead-Letter Handling

## 1) Route By Workload Characteristics

- Use separate queues for critical, default, and bulk work.
- Keep worker pools aligned with queue class and expected runtime profile.
- Keep routing keys and exchange bindings deterministic.

## 2) Apply Dead-Letter Policy Explicitly

- Route poison or expired jobs to dead-letter queues.
- Keep dead-letter policy declarative and version-controlled.
- Monitor dead-letter growth and replay safely.

RabbitMQ supports dead lettering via policies and dead-letter exchanges.

## 3) Prevent Queue Collapse During Incidents

- Set queue length, retry, and rate policies per queue class.
- Pause or throttle low-priority queues under high pressure.
- Protect critical queues from starvation by isolating workers.

## 4) Broker Checklist

- Confirm each queue has owner and on-call runbook.
- Confirm dead-letter replay procedure includes idempotency checks.
- Confirm message TTL and expiration behavior match business expectations.
