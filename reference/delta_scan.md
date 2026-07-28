# DuckDB function delta_scan

DuckDB function `delta_scan()`.

## Usage

``` r
delta_scan(
  col0,
  version,
  log_tail,
  pushdown_partition_info,
  can_have_nan,
  filename,
  pushdown_filters,
  union_by_name,
  debug_use_openssl,
  hive_partitioning,
  parquet_version,
  encryption_config,
  hive_types_autocast,
  binary_as_string,
  explicit_cardinality,
  compression,
  file_row_number,
  hive_types
)
```

## Arguments

- col0:

  `VARCHAR | VARCHAR[]`

- version:

  `UBIGINT`

- log_tail:

  `STRUCT(file_name VARCHAR, "timestamp" BIGINT, file_size UBIGINT)[]`

- pushdown_partition_info:

  `BOOLEAN`

- can_have_nan:

  `BOOLEAN`

- filename:

  `ANY`

- pushdown_filters:

  `VARCHAR`

- union_by_name:

  `BOOLEAN`

- debug_use_openssl:

  `BOOLEAN`

- hive_partitioning:

  `BOOLEAN`

- parquet_version:

  `VARCHAR`

- encryption_config:

  `ANY`

- hive_types_autocast:

  `BOOLEAN`

- binary_as_string:

  `BOOLEAN`

- explicit_cardinality:

  `UBIGINT`

- compression:

  `VARCHAR`

- file_row_number:

  `BOOLEAN`

- hive_types:

  `ANY`

## Value

Unspecified.

## Provided by

The `delta` extension (`LOAD delta;`).
