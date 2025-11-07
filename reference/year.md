# DuckDB function year

Extract the year component from a date or timestamp.

## Arguments

- ts:

  `DATE | INTERVAL | TIMESTAMP | TIMESTAMP WITH TIME ZONE`

## Value

`BIGINT`

## Overloads

- `year(ts = DATE)`

- `year(ts = INTERVAL)`

- `year(ts = TIMESTAMP)`

- `` year(ts = `TIMESTAMP WITH TIME ZONE`) ``

## SQL examples

    year(timestamp '2021-08-03 11:59:44.123456')
