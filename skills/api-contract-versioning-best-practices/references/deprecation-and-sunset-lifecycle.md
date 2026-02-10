# Deprecation And Sunset Lifecycle

## 1) Deprecation Policy Template

- Announce what is deprecated, why, and who is affected.
- Publish migration path with concrete request and response examples.
- Publish deprecation start date and sunset date.

## 2) HTTP Deprecation Signaling

- Use `Deprecation` response header for deprecated resources.
- Use `Sunset` response header for planned removal timeline.
- Keep header and documentation timelines consistent.

RFC 9745 defines the `Deprecation` header and RFC 8594 defines the `Sunset` header.

## 3) Consumer Communication And Tracking

- Notify consumer owners before enforcement dates.
- Track active consumer usage of deprecated endpoints.
- Escalate non-migrated critical consumers ahead of sunset.

## 4) Removal Readiness Criteria

- Confirm migration adoption threshold is met.
- Confirm fallback or rollback path is prepared.
- Confirm incident response plan is active for sunset window.

## 5) Lifecycle Checklist

- Confirm every deprecated API has owner and sunset date.
- Confirm release notes include migration examples.
- Confirm monitoring exists for deprecated endpoint usage.
- Confirm post-removal verification shows no critical regressions.
