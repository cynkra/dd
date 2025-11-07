# DuckDB function nanosecond

Extract the nanosecond component from a date or timestamp.

## Arguments

- tsns:

  `DATE | TIMESTAMP | INTERVAL | TIME | TIME_NS | TIME WITH TIME ZONE | TIMESTAMP_NS | TIMESTAMP WITH TIME ZONE`

## Value

`BIGINT`

## Overloads

- `nanosecond(tsns = DATE)`

- `nanosecond(tsns = TIMESTAMP)`

- `nanosecond(tsns = INTERVAL)`

- `nanosecond(tsns = TIME)`

- `nanosecond(tsns = TIME_NS)`

- `` nanosecond(tsns = `TIME WITH TIME ZONE`) ``

- `nanosecond(tsns = TIMESTAMP_NS)`

- `` nanosecond(tsns = `TIMESTAMP WITH TIME ZONE`) ``

## SQL examples

    nanosecond(timestamp_ns '2021-08-03 11:59:44.123456789')
