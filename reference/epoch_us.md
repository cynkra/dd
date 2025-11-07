# DuckDB function epoch_us

Extract the epoch component in microseconds from a temporal type.

## Arguments

- temporal:

  `DATE | TIMESTAMP | INTERVAL | TIME | TIME_NS | TIME WITH TIME ZONE | TIMESTAMP WITH TIME ZONE`

## Value

`BIGINT`

## Overloads

- `epoch_us(temporal = DATE)`

- `epoch_us(temporal = TIMESTAMP)`

- `epoch_us(temporal = INTERVAL)`

- `epoch_us(temporal = TIME)`

- `epoch_us(temporal = TIME_NS)`

- `` epoch_us(temporal = `TIME WITH TIME ZONE`) ``

- `` epoch_us(temporal = `TIMESTAMP WITH TIME ZONE`) ``

## SQL examples

    epoch_us(timestamp '2021-08-03 11:59:44.123456')
