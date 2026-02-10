---
name: malaysia-format-english-fullstack
description: Apply Malaysia regional formatting with English language across FastAPI, Next.js, PostgreSQL, and Docker. Use when implementing or reviewing locale, timezone, currency, date/time, and number formatting contracts for this stack, including API headers, frontend Intl formatting, PostgreSQL session settings, and container runtime defaults.
---

# Malaysia Format (English) Full Stack

Use this workflow to enforce Malaysia regional formatting while keeping all language/content in English.

## 1) Lock Contract First

- Set locale to `en-MY` for formatting behavior.
- Keep UI, API messages, and docs in English only.
- Set timezone to `Asia/Kuala_Lumpur`.
- Set currency to `MYR` with `RM` symbol.
- Use a stable display contract:
- Date: `DD/MM/YYYY`.
- Time: `HH:mm` or `HH:mm:ss` (24-hour).
- DateTime: `DD/MM/YYYY HH:mm[:ss]`.
- Number: comma group + dot decimal (`1,234.5`).
- Currency: `RM 1,234.50` (runtime may emit a non-breaking space).

Read `references/malaysia-format-contract.md`.

## 2) Implement By Layer

- Apply explicit locale/timezone/currency options in Next.js `Intl` formatters.
- Parse locale preference in FastAPI headers and normalize to supported values.
- Persist timestamps in UTC in PostgreSQL; convert at API/UI boundaries.
- Use PostgreSQL `DateStyle`/`lc_time` only when SQL text output is required.
- Set Docker runtime env (`TZ`, app locale defaults) so services behave consistently.

Read `references/implementation-checklist.md`.

## 3) Verify And Prevent Drift

- Run Dockerized probes for Python/Babel and Node/Intl to verify runtime output.
- Add regression tests for date, time, number, currency, and timezone conversions.
- Re-run probes after base-image updates, ICU changes, or locale package changes.

Read `references/verification.md`.

## 4) Use Primary Sources

- Cite official docs for technical claims and include last-verified dates.
- Separate sourced facts from implementation choices.

Read `references/official-sources.md`.
