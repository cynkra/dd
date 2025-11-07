# DuckDB function weekofyear

Extract the weekofyear component from a date or timestamp.

## Arguments

- ts:

  `DATE | INTERVAL | TIMESTAMP | TIMESTAMP WITH TIME ZONE`

## Value

`BIGINT`

## Overloads

- `weekofyear(ts = DATE)`

- `weekofyear(ts = INTERVAL)`

- `weekofyear(ts = TIMESTAMP)`

- `` weekofyear(ts = `TIMESTAMP WITH TIME ZONE`) ``

## SQL examples

    weekofyear(timestamp '2021-08-03 11:59:44.123456')
