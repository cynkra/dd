# DuckDB function dayofmonth

Extract the dayofmonth component from a date or timestamp.

## Arguments

- ts:

  `DATE | INTERVAL | TIMESTAMP | TIMESTAMP WITH TIME ZONE`

## Value

`BIGINT`

## Overloads

- `dayofmonth(ts = DATE)`

- `dayofmonth(ts = INTERVAL)`

- `dayofmonth(ts = TIMESTAMP)`

- `` dayofmonth(ts = `TIMESTAMP WITH TIME ZONE`) ``

## SQL examples

    dayofmonth(timestamp '2021-08-03 11:59:44.123456')
