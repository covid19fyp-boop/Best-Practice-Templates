# Deployment Strategies And Rollbacks

## Strategy Selection

- Use rolling deploys for low-risk, frequent changes.
- Use blue/green or canary for higher-risk or customer-critical services.
- Use feature flags to separate deployment from feature release when possible.

## Rollback Planning

- Define rollback trigger thresholds before rollout.
- Keep rollback steps scripted and tested.
- Ensure database change strategy supports safe rollback or forward-fix.

## Post-Deploy Verification

- Run smoke checks immediately after deployment.
- Monitor error rates, latency, and saturation during rollout windows.
- Pause or abort rollout automatically when thresholds are exceeded.
