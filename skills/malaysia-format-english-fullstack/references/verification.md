# Verification

Run these checks in Docker to confirm runtime formatting behavior.

## Python (Babel) Probe

```bash
docker run --rm python:3.12-slim sh -lc "pip install --no-cache-dir Babel >/dev/null && python - <<'PY'
from babel.dates import format_date, format_datetime
from babel.numbers import format_currency, format_decimal
from datetime import datetime, date
from zoneinfo import ZoneInfo

loc='en_MY'
d=date(2026,2,9)
dt=datetime(2026,2,9,17,4,5,tzinfo=ZoneInfo('Asia/Kuala_Lumpur'))
print('date short:', format_date(d, format='short', locale=loc))
print('datetime short:', format_datetime(dt, format='short', locale=loc))
print('currency:', format_currency(1234.5, 'MYR', locale=loc))
print('decimal:', format_decimal(1234.5, locale=loc))
PY"
```

Observed on 2026-02-09:
- `date short: 09/02/2026`
- `datetime short: 09/02/2026, 5:04 pm` (12-hour default)
- `currency: RM1,234.50`
- `decimal: 1,234.5`

## Node (Intl) Probe

```bash
docker run --rm node:22-alpine node -e "const d = new Date('2026-02-09T09:04:05Z'); const tz='Asia/Kuala_Lumpur'; console.log(new Intl.DateTimeFormat('en-MY', {timeZone: tz, dateStyle: 'short'}).format(d)); console.log(new Intl.DateTimeFormat('en-MY', {timeZone: tz, timeStyle: 'short'}).format(d)); console.log(new Intl.NumberFormat('en-MY', {style:'currency', currency:'MYR'}).format(1234.5));"
```

Observed on 2026-02-09:
- `09/02/2026`
- `5:04 pm` (12-hour default)
- `RM 1,234.50` (may contain a non-breaking space)

## Policy Check

- If project policy requires 24-hour time, enforce it explicitly:
- JS: set `hour12: false` or `hourCycle: "h23"`.
- Python: format with explicit 24-hour pattern (`HH:mm[:ss]`) rather than locale default time style.
