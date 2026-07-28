# DuckDB function read_xlsx

DuckDB function `read_xlsx()`.

## Usage

``` r
read_xlsx(
  col0,
  normalize_names,
  empty_as_varchar,
  stop_at_empty,
  sheet,
  range,
  ignore_errors,
  all_varchar,
  header
)
```

## Arguments

- col0:

  `VARCHAR`

- normalize_names:

  `BOOLEAN`

- empty_as_varchar:

  `BOOLEAN`

- stop_at_empty:

  `BOOLEAN`

- sheet:

  `VARCHAR`

- range:

  `VARCHAR`

- ignore_errors:

  `BOOLEAN`

- all_varchar:

  `BOOLEAN`

- header:

  `BOOLEAN`

## Value

Unspecified.

## Provided by

The `excel` extension (`LOAD excel;`).
