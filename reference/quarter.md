# DuckDB function quarter

Extract the quarter component from a date or timestamp.

## Arguments

- ts:

  `DATE | INTERVAL | TIMESTAMP | TIMESTAMP WITH TIME ZONE`

## Value

`BIGINT`

## Overloads

- `quarter(ts = DATE)`

- `quarter(ts = INTERVAL)`

- `quarter(ts = TIMESTAMP)`

- `` quarter(ts = `TIMESTAMP WITH TIME ZONE`) ``

## SQL examples

    quarter(timestamp '2021-08-03 11:59:44.123456')
