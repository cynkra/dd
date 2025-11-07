# DuckDB function make_date

The date for the given parts.

The date for the given struct.

## Arguments

- col0:

  `INTEGER`

- year:

  `BIGINT`

- month:

  `BIGINT`

- day:

  `BIGINT`

- date-struct:

  `STRUCT("year" BIGINT, "month" BIGINT, "day" BIGINT)`

## Value

`DATE`

## Overloads

- `make_date(col0 = INTEGER)`

- `make_date(year = BIGINT, month = BIGINT, day = BIGINT)`

- `` make_date(`date-struct` = `STRUCT("year" BIGINT, "month" BIGINT, "day" BIGINT)`) ``

## SQL examples

    make_date(1992, 9, 20)
    make_date({'year': 2024, 'month': 11, 'day': 14})
