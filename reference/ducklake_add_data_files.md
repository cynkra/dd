# DuckDB function ducklake_add_data_files

DuckDB function `ducklake_add_data_files()`.

## Usage

``` r
ducklake_add_data_files(
  col0,
  col1,
  col2,
  schema,
  hive_partitioning,
  ignore_extra_columns,
  allow_missing
)
```

## Arguments

- col0:

  `VARCHAR`

- col1:

  `VARCHAR`

- col2:

  `VARCHAR | VARCHAR[]`

- schema:

  `VARCHAR`

- hive_partitioning:

  `BOOLEAN`

- ignore_extra_columns:

  `BOOLEAN`

- allow_missing:

  `BOOLEAN`

## Value

Unspecified.

## Provided by

The `ducklake` extension (`LOAD ducklake;`).
