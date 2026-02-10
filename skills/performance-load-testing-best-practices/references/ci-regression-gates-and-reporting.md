# CI Regression Gates And Reporting

## 1) Define Practical CI Performance Gates

- Run lightweight perf smoke tests on pull requests.
- Run heavier load suites on schedule or pre-release.
- Fail CI on statistically meaningful regressions beyond agreed thresholds.

## 2) Keep Result Comparisons Trustworthy

- Compare against stable baseline runs with the same scenario version.
- Include confidence notes when sample size is low.
- Separate infrastructure variance from application regressions.

## 3) Reporting Requirements

- Publish percentile latency, throughput, and error summaries.
- Include saturation metrics (CPU, memory, DB connections).
- Link each report to code revision and environment metadata.

## 4) Release Checklist

- Confirm critical-path scenarios pass threshold gates.
- Confirm unresolved regressions have explicit risk acceptance.
- Confirm rollback trigger criteria are documented.
