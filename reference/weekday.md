# DuckDB function weekday

Extract the weekday component from a date or timestamp.

## Arguments

- ts:

  `DATE | INTERVAL | TIMESTAMP | TIMESTAMP WITH TIME ZONE`

## Value

`BIGINT`

## Overloads

- `weekday(ts = DATE)`

- `weekday(ts = INTERVAL)`

- `weekday(ts = TIMESTAMP)`

- `` weekday(ts = `TIMESTAMP WITH TIME ZONE`) ``

## SQL examples

    weekday(timestamp '2021-08-03 11:59:44.123456')
