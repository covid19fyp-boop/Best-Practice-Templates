# Remediation Playbooks

## 1) During Incident

- Apply lowest-risk mitigation that reduces active user impact.
- Preserve observability while mitigating to avoid blind recovery.
- Communicate status and expectations clearly.

## 2) After Stabilization

- Implement structural fix that prevents recurrence.
- Add regression tests targeting discovered failure mode.
- Validate with controlled rollout and telemetry watch.

## 3) Verification

- Define success criteria before release.
- Compare post-fix error trend with pre-fix baseline.
- Confirm no new regressions in adjacent flows.
