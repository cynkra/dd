# DuckDB function second

Extract the second component from a date or timestamp.

## Arguments

- ts:

  `DATE | INTERVAL | TIME | TIMESTAMP | TIME WITH TIME ZONE | TIME_NS | TIMESTAMP WITH TIME ZONE`

## Value

`BIGINT`

## Overloads

- `second(ts = DATE)`

- `second(ts = INTERVAL)`

- `second(ts = TIME)`

- `second(ts = TIMESTAMP)`

- `` second(ts = `TIME WITH TIME ZONE`) ``

- `second(ts = TIME_NS)`

- `` second(ts = `TIMESTAMP WITH TIME ZONE`) ``

## SQL examples

    second(timestamp '2021-08-03 11:59:44.123456')
