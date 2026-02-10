# k6 And Locust Execution

## 1) Use Scripted, Version-Controlled Test Definitions

- Store scenario code with application code.
- Keep test configuration explicit (duration, stages, thresholds, tags).
- Keep output artifacts for trend comparison.

## 2) k6 Guidance

- Use scenarios and executors to express traffic shape.
- Use thresholds to define automatic pass/fail gates.
- Use checks for request-level validity assertions.

## 3) Locust Guidance

- Define user behavior classes with explicit wait times and task weighting.
- Use distributed mode for large-load generation.
- Keep worker count and user spawn parameters reproducible.

## 4) Execution Checklist

- Confirm scenario IDs and build SHA are attached to outputs.
- Confirm warm-up period is separated from measured window.
- Confirm aborted runs are flagged and excluded from comparison baselines.
