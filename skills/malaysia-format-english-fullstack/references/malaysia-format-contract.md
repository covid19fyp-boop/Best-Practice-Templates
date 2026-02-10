# Malaysia Format Contract (English Language)

## Core Rules

- Keep language in English.
- Use locale `en-MY` for regional formatting behavior.
- Use timezone `Asia/Kuala_Lumpur`.
- Use currency code `MYR`.

## Canonical Output Contract

- Date: `DD/MM/YYYY` (example: `09/02/2026`)
- Time (required policy): `HH:mm` or `HH:mm:ss` in 24-hour format (example: `17:04`)
- DateTime: `DD/MM/YYYY HH:mm[:ss]` (example: `09/02/2026 17:04:05`)
- Decimal number: `1,234.5`
- Currency: `RM 1,234.50` (runtime may use a non-breaking space: `RM 1,234.50`)

## Runtime Note

- `en-MY` default runtime formatting often returns 12-hour time with `am/pm`.
- Force 24-hour output explicitly in formatter options to match project policy.
