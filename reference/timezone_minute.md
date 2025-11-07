# DuckDB function timezone_minute

Extract the timezone_minute component from a date or timestamp.

## Arguments

- ts:

  `DATE | INTERVAL | TIMESTAMP | TIMESTAMP WITH TIME ZONE`

## Value

`BIGINT`

## Overloads

- `timezone_minute(ts = DATE)`

- `timezone_minute(ts = INTERVAL)`

- `timezone_minute(ts = TIMESTAMP)`

- `` timezone_minute(ts = `TIMESTAMP WITH TIME ZONE`) ``

## SQL examples

    timezone_minute(timestamp '2021-08-03 11:59:44.123456')
