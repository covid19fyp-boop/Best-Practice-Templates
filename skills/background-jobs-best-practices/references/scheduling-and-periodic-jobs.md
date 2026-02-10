# Scheduling And Periodic Jobs

## 1) Keep One Scheduler Authority

- Run one logical scheduler per schedule domain.
- Avoid multi-scheduler overlap unless leader election or locking is enforced.
- Keep schedule ownership explicit and reviewable.

Celery documentation warns to ensure only a single scheduler is running for a schedule set to avoid duplicate task dispatch.

## 2) Design Periodic Jobs As Re-Entrant

- Make periodic jobs safe when restarted mid-run.
- Add overlap guard (lease/lock) for long-running periodic tasks.
- Separate scheduling cadence from execution concurrency.

## 3) Manage Clock And Drift Risk

- Use UTC scheduling where possible.
- Document timezone and daylight-saving behavior for business-critical jobs.
- Verify schedule behavior after container or node restarts.

## 4) Periodic Job Checklist

- Confirm each periodic job has timeout, retry, and alert thresholds.
- Confirm each periodic job publishes last-success timestamp metric.
- Confirm scheduler failover path is tested.
