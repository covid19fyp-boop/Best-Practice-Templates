# Workflow And Governance

## Branch Safety

- Protect the default branch.
- Require pull requests for protected branches.
- Restrict direct pushes where appropriate.

## Merge Quality Gates

- Require required status checks before merge.
- Require branch up-to-date checks when policy demands deterministic CI.
- Keep required checks small, stable, and meaningful.

## Commit And Tag Trust

- Enable commit signing where auditability or compliance requires it.
- Verify signatures in repository policies where supported.

## Repository Hygiene

- Use clear branch naming conventions.
- Keep commit messages consistent and reviewable.
- Prune stale remote branches and archive deprecated long-lived branches.
