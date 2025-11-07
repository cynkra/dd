# DuckDB function epoch_ms

Extract the epoch component in milliseconds from a temporal type.

## Arguments

- temporal:

  `DATE | TIMESTAMP | INTERVAL | TIME | TIME_NS | TIME WITH TIME ZONE | TIMESTAMP WITH TIME ZONE | BIGINT`

## Value

`BIGINT | TIMESTAMP`

## Overloads

- `epoch_ms(temporal = DATE)`

- `epoch_ms(temporal = TIMESTAMP)`

- `epoch_ms(temporal = INTERVAL)`

- `epoch_ms(temporal = TIME)`

- `epoch_ms(temporal = TIME_NS)`

- `` epoch_ms(temporal = `TIME WITH TIME ZONE`) ``

- `` epoch_ms(temporal = `TIMESTAMP WITH TIME ZONE`) ``

- `epoch_ms(temporal = BIGINT)`

## SQL examples

    epoch_ms(timestamp '2021-08-03 11:59:44.123456')
