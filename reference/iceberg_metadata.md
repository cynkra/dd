# DuckDB function iceberg_metadata

DuckDB function `iceberg_metadata()`.

## Usage

``` r
iceberg_metadata(
  col0,
  snapshot_from_timestamp,
  snapshot_from_id,
  version_name_format,
  version,
  metadata_compression_codec,
  allow_moved_paths
)
```

## Arguments

- col0:

  `VARCHAR`

- snapshot_from_timestamp:

  `TIMESTAMP`

- snapshot_from_id:

  `UBIGINT`

- version_name_format:

  `VARCHAR`

- version:

  `VARCHAR`

- metadata_compression_codec:

  `VARCHAR`

- allow_moved_paths:

  `BOOLEAN`

## Value

Unspecified.

## Provided by

The `iceberg` extension (`LOAD iceberg;`).
