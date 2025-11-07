# DuckDB function dayofweek

Extract the dayofweek component from a date or timestamp.

## Arguments

- ts:

  `DATE | INTERVAL | TIMESTAMP | TIMESTAMP WITH TIME ZONE`

## Value

`BIGINT`

## Overloads

- `dayofweek(ts = DATE)`

- `dayofweek(ts = INTERVAL)`

- `dayofweek(ts = TIMESTAMP)`

- `` dayofweek(ts = `TIMESTAMP WITH TIME ZONE`) ``

## SQL examples

    dayofweek(timestamp '2021-08-03 11:59:44.123456')
