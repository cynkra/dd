# DuckDB function isodow

Extract the isodow component from a date or timestamp.

## Arguments

- ts:

  `DATE | INTERVAL | TIMESTAMP | TIMESTAMP WITH TIME ZONE`

## Value

`BIGINT`

## Overloads

- `isodow(ts = DATE)`

- `isodow(ts = INTERVAL)`

- `isodow(ts = TIMESTAMP)`

- `` isodow(ts = `TIMESTAMP WITH TIME ZONE`) ``

## SQL examples

    isodow(timestamp '2021-08-03 11:59:44.123456')
