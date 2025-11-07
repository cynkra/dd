# DuckDB function month

Extract the month component from a date or timestamp.

## Arguments

- ts:

  `DATE | INTERVAL | TIMESTAMP | TIMESTAMP WITH TIME ZONE`

## Value

`BIGINT`

## Overloads

- `month(ts = DATE)`

- `month(ts = INTERVAL)`

- `month(ts = TIMESTAMP)`

- `` month(ts = `TIMESTAMP WITH TIME ZONE`) ``

## SQL examples

    month(timestamp '2021-08-03 11:59:44.123456')
