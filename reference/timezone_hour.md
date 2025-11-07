# DuckDB function timezone_hour

Extract the timezone_hour component from a date or timestamp.

## Arguments

- ts:

  `DATE | INTERVAL | TIMESTAMP | TIMESTAMP WITH TIME ZONE`

## Value

`BIGINT`

## Overloads

- `timezone_hour(ts = DATE)`

- `timezone_hour(ts = INTERVAL)`

- `timezone_hour(ts = TIMESTAMP)`

- `` timezone_hour(ts = `TIMESTAMP WITH TIME ZONE`) ``

## SQL examples

    timezone_hour(timestamp '2021-08-03 11:59:44.123456')
