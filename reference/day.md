# DuckDB function day

Extract the day component from a date or timestamp.

## Arguments

- ts:

  `DATE | INTERVAL | TIMESTAMP | TIMESTAMP WITH TIME ZONE`

## Value

`BIGINT`

## Overloads

- `day(ts = DATE)`

- `day(ts = INTERVAL)`

- `day(ts = TIMESTAMP)`

- `` day(ts = `TIMESTAMP WITH TIME ZONE`) ``

## SQL examples

    day(timestamp '2021-08-03 11:59:44.123456')
