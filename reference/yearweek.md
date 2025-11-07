# DuckDB function yearweek

Extract the yearweek component from a date or timestamp.

## Arguments

- ts:

  `DATE | INTERVAL | TIMESTAMP | TIMESTAMP WITH TIME ZONE`

## Value

`BIGINT`

## Overloads

- `yearweek(ts = DATE)`

- `yearweek(ts = INTERVAL)`

- `yearweek(ts = TIMESTAMP)`

- `` yearweek(ts = `TIMESTAMP WITH TIME ZONE`) ``

## SQL examples

    yearweek(timestamp '2021-08-03 11:59:44.123456')
