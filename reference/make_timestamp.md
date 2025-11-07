# DuckDB function make_timestamp

The timestamp for the given parts.

## Arguments

- year:

  `BIGINT`

- month:

  `BIGINT`

- day:

  `BIGINT`

- hour:

  `BIGINT`

- minute:

  `BIGINT`

- seconds:

  `DOUBLE`

## Value

`TIMESTAMP`

## Overloads

- `make_timestamp(year = BIGINT, month = BIGINT, day = BIGINT, hour = BIGINT, minute = BIGINT, seconds = DOUBLE)`

- `make_timestamp(year = BIGINT)`

## SQL examples

    make_timestamp(1992, 9, 20, 13, 34, 27.123456)
