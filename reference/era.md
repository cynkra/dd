# DuckDB function era

Extract the era component from a date or timestamp.

## Arguments

- ts:

  `DATE | INTERVAL | TIMESTAMP | TIMESTAMP WITH TIME ZONE`

## Value

`BIGINT`

## Overloads

- `era(ts = DATE)`

- `era(ts = INTERVAL)`

- `era(ts = TIMESTAMP)`

- `` era(ts = `TIMESTAMP WITH TIME ZONE`) ``

## SQL examples

    era(timestamp '2021-08-03 11:59:44.123456')
