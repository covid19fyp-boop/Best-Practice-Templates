# Implementation Checklist

## Next.js

- Set routing locale list to include `en-MY`.
- Pass locale and timezone explicitly in every formatter call.
- For dates/times, use `Intl.DateTimeFormat("en-MY", { timeZone: "Asia/Kuala_Lumpur", hour12: false, ... })`.
- For currency, use `Intl.NumberFormat("en-MY", { style: "currency", currency: "MYR" })`.
- Keep translation layer disabled for non-English languages.

## FastAPI

- Accept `Accept-Language` via `Header`, then normalize unsupported values to `en-MY`.
- Use Babel with locale `en_MY` for formatted outputs when server-side formatting is needed.
- Keep internal API transport timestamps in ISO 8601 where possible; apply presentation format at output boundary.
- Use `ZoneInfo("Asia/Kuala_Lumpur")` when rendering localized times.

## PostgreSQL

- Store time values in `timestamptz` in UTC.
- Convert for display only at API/UI layer.
- If SQL-side textual dates are unavoidable, enforce `DateStyle = 'ISO, DMY'`.
- If SQL-side month/day names are needed, set `lc_time` to an installed English locale.
- Validate timezone availability with:
- `SELECT name FROM pg_timezone_names WHERE name = 'Asia/Kuala_Lumpur';`

## Docker

- Set runtime defaults in Compose/environment:
- `TZ=Asia/Kuala_Lumpur`
- `APP_DEFAULT_LOCALE=en-MY`
- `APP_DEFAULT_CURRENCY=MYR`
- Ensure locale/ICU/tzdata support exists in images after base-image updates.
- Run locale probes in CI or release checks to detect formatting drift.
