# DuckDB function dayofyear

Extract the dayofyear component from a date or timestamp.

## Arguments

- ts:

  `DATE | INTERVAL | TIMESTAMP | TIMESTAMP WITH TIME ZONE`

## Value

`BIGINT`

## Overloads

- `dayofyear(ts = DATE)`

- `dayofyear(ts = INTERVAL)`

- `dayofyear(ts = TIMESTAMP)`

- `` dayofyear(ts = `TIMESTAMP WITH TIME ZONE`) ``

## SQL examples

    dayofyear(timestamp '2021-08-03 11:59:44.123456')
