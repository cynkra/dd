# DuckDB function microsecond

Extract the microsecond component from a date or timestamp.

## Arguments

- ts:

  `DATE | INTERVAL | TIME | TIMESTAMP | TIME WITH TIME ZONE | TIME_NS | TIMESTAMP WITH TIME ZONE`

## Value

`BIGINT`

## Overloads

- `microsecond(ts = DATE)`

- `microsecond(ts = INTERVAL)`

- `microsecond(ts = TIME)`

- `microsecond(ts = TIMESTAMP)`

- `` microsecond(ts = `TIME WITH TIME ZONE`) ``

- `microsecond(ts = TIME_NS)`

- `` microsecond(ts = `TIMESTAMP WITH TIME ZONE`) ``

## SQL examples

    microsecond(timestamp '2021-08-03 11:59:44.123456')
