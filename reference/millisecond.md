# DuckDB function millisecond

Extract the millisecond component from a date or timestamp.

## Arguments

- ts:

  `DATE | INTERVAL | TIME | TIMESTAMP | TIME WITH TIME ZONE | TIME_NS | TIMESTAMP WITH TIME ZONE`

## Value

`BIGINT`

## Overloads

- `millisecond(ts = DATE)`

- `millisecond(ts = INTERVAL)`

- `millisecond(ts = TIME)`

- `millisecond(ts = TIMESTAMP)`

- `` millisecond(ts = `TIME WITH TIME ZONE`) ``

- `millisecond(ts = TIME_NS)`

- `` millisecond(ts = `TIMESTAMP WITH TIME ZONE`) ``

## SQL examples

    millisecond(timestamp '2021-08-03 11:59:44.123456')
