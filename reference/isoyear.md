# DuckDB function isoyear

Extract the isoyear component from a date or timestamp.

## Arguments

- ts:

  `DATE | INTERVAL | TIMESTAMP | TIMESTAMP WITH TIME ZONE`

## Value

`BIGINT`

## Overloads

- `isoyear(ts = DATE)`

- `isoyear(ts = INTERVAL)`

- `isoyear(ts = TIMESTAMP)`

- `` isoyear(ts = `TIMESTAMP WITH TIME ZONE`) ``

## SQL examples

    isoyear(timestamp '2021-08-03 11:59:44.123456')
