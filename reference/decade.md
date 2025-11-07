# DuckDB function decade

Extract the decade component from a date or timestamp.

## Arguments

- ts:

  `DATE | INTERVAL | TIMESTAMP | TIMESTAMP WITH TIME ZONE`

## Value

`BIGINT`

## Overloads

- `decade(ts = DATE)`

- `decade(ts = INTERVAL)`

- `decade(ts = TIMESTAMP)`

- `` decade(ts = `TIMESTAMP WITH TIME ZONE`) ``

## SQL examples

    decade(timestamp '2021-08-03 11:59:44.123456')
