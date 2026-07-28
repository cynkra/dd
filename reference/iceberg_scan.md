# DuckDB function iceberg_scan

DuckDB function `iceberg_scan()`.

## Usage

``` r
iceberg_scan(
  col0,
  snapshot_from_timestamp,
  version,
  metadata_compression_codec,
  mode,
  can_have_nan,
  allow_moved_paths,
  filename,
  union_by_name,
  snapshot_from_id,
  debug_use_openssl,
  hive_partitioning,
  parquet_version,
  encryption_config,
  version_name_format,
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

- snapshot_from_timestamp:

  `TIMESTAMP`

- version:

  `VARCHAR`

- metadata_compression_codec:

  `VARCHAR`

- mode:

  `VARCHAR`

- can_have_nan:

  `BOOLEAN`

- allow_moved_paths:

  `BOOLEAN`

- filename:

  `ANY`

- union_by_name:

  `BOOLEAN`

- snapshot_from_id:

  `UBIGINT`

- debug_use_openssl:

  `BOOLEAN`

- hive_partitioning:

  `BOOLEAN`

- parquet_version:

  `VARCHAR`

- encryption_config:

  `ANY`

- version_name_format:

  `VARCHAR`

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

The `iceberg` extension (`LOAD iceberg;`).
