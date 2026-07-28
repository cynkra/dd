# DuckDB function make_timestamptz

DuckDB function `make_timestamptz()`.

## Usage

``` r
make_timestamptz(col0, col1, col2, col3, col4, col5, col6)
```

## Arguments

- col0:

  `BIGINT`

- col1:

  `BIGINT`

- col2:

  `BIGINT`

- col3:

  `BIGINT`

- col4:

  `BIGINT`

- col5:

  `DOUBLE`

- col6:

  `VARCHAR`

## Value

`TIMESTAMP WITH TIME ZONE`

## Overloads

- `make_timestamptz(col0 = BIGINT, col1 = BIGINT, col2 = BIGINT, col3 = BIGINT, col4 = BIGINT, col5 = DOUBLE)`

- `make_timestamptz(col0 = BIGINT, col1 = BIGINT, col2 = BIGINT, col3 = BIGINT, col4 = BIGINT, col5 = DOUBLE, col6 = VARCHAR)`

- `make_timestamptz(col0 = BIGINT)`

## Provided by

The `icu` extension (`LOAD icu;`).
