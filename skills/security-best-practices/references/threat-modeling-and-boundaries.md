# Threat Modeling And Boundaries

## Minimum Threat Model

- List critical assets: credentials, personal data, payment/tenant data, signing keys.
- List attacker classes: anonymous internet user, authenticated low-privilege user, compromised dependency, insider misuse.
- Map likely abuse paths across frontend, API, DB, and deployment pipeline.

## Trust Boundary Map

- Browser boundary: untrusted inputs and client state.
- Next.js server boundary: trusted execution only for privileged logic.
- FastAPI boundary: policy enforcement for data access and mutation.
- PostgreSQL boundary: strict role-based access and network controls.
- Infrastructure boundary: runtime secret access, image provenance, deployment rights.

## Control Prioritization

- Prioritize controls for highest-impact/high-likelihood paths first.
- Convert each high risk into enforceable checks (code + CI gate + runtime monitor).
- Keep explicit ownership for each control and incident fallback.
