# DuckDB function week

Extract the week component from a date or timestamp.

## Arguments

- ts:

  `DATE | INTERVAL | TIMESTAMP | TIMESTAMP WITH TIME ZONE`

## Value

`BIGINT`

## Overloads

- `week(ts = DATE)`

- `week(ts = INTERVAL)`

- `week(ts = TIMESTAMP)`

- `` week(ts = `TIMESTAMP WITH TIME ZONE`) ``

## SQL examples

    week(timestamp '2021-08-03 11:59:44.123456')
