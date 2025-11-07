# DuckDB function millennium

Extract the millennium component from a date or timestamp.

## Arguments

- ts:

  `DATE | INTERVAL | TIMESTAMP | TIMESTAMP WITH TIME ZONE`

## Value

`BIGINT`

## Overloads

- `millennium(ts = DATE)`

- `millennium(ts = INTERVAL)`

- `millennium(ts = TIMESTAMP)`

- `` millennium(ts = `TIMESTAMP WITH TIME ZONE`) ``

## SQL examples

    millennium(timestamp '2021-08-03 11:59:44.123456')
