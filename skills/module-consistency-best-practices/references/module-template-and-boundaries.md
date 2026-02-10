# Module Template And Boundaries

## Baseline Full-Stack Shape

- `frontend/` (Next.js App Router features)
- `backend/` (FastAPI domain modules)
- `db/` (migrations and SQL/database assets)

## Backend Module Template

- `routers.py` or `routes.py`: HTTP boundary only.
- `schemas.py`: request/response contracts.
- `service.py`: business rules and orchestration.
- `repository.py`: persistence queries and storage access.
- `models.py`: ORM mappings where applicable.

## Frontend Feature Module Template

- `app/<segment>/page.tsx`: route entry.
- `app/<segment>/components/`: UI components.
- `app/<segment>/actions.ts`: server actions or mutation entry points.
- `app/<segment>/lib/`: feature-local data helpers and selectors.

## Boundary Rule

- Route layers call service layers.
- Service layers call repository/data access layers.
- UI components should not call database or secret-bearing infrastructure directly.
