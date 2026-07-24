# DuckDB function make_date

- `make_date(year = BIGINT, month = BIGINT, day = BIGINT)`: The date for
  the given parts.

- `` make_date(date.struct = `STRUCT("year" BIGINT, "month" BIGINT, "day" BIGINT)`) ``:
  The date for the given struct.

- `make_date(col0 = INTEGER)`: (Description missing.)

## Usage

``` r
make_date(year, month, day)
```

## Arguments

- year, month, day:

  `BIGINT`

## Value

`DATE`

## Overloads

- `make_date(col0 = INTEGER)`

- `make_date(year = BIGINT, month = BIGINT, day = BIGINT)`

- `` make_date(date.struct = `STRUCT("year" BIGINT, "month" BIGINT, "day" BIGINT)`) ``

## SQL examples

    make_date(1992, 9, 20)
    make_date({'year': 2024, 'month': 11, 'day': 14})
