# DuckDB function ducklake_merge_adjacent_files

DuckDB function `ducklake_merge_adjacent_files()`.

## Usage

``` r
ducklake_merge_adjacent_files(
  col0,
  col1,
  schema,
  max_compacted_files,
  max_file_size,
  min_file_size
)
```

## Arguments

- col0:

  `VARCHAR`

- col1:

  `VARCHAR`

- schema:

  `VARCHAR`

- max_compacted_files:

  `UBIGINT`

- max_file_size:

  `UBIGINT`

- min_file_size:

  `UBIGINT`

## Value

Unspecified.

## Overloads

- `ducklake_merge_adjacent_files(col0 = VARCHAR, col1 = VARCHAR, schema = VARCHAR, max_compacted_files = UBIGINT, max_file_size = UBIGINT, min_file_size = UBIGINT)`

- `ducklake_merge_adjacent_files(col0 = VARCHAR, max_compacted_files = UBIGINT, max_file_size = UBIGINT, min_file_size = UBIGINT)`

## Provided by

The `ducklake` extension (`LOAD ducklake;`).
