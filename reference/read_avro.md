# DuckDB function read_avro

DuckDB function `read_avro()`.

## Usage

``` r
read_avro(
  col0,
  hive_types_autocast,
  hive_types,
  hive_partitioning,
  union_by_name,
  filename
)
```

## Arguments

- col0:

  `VARCHAR | VARCHAR[]`

- hive_types_autocast:

  `BOOLEAN`

- hive_types:

  `ANY`

- hive_partitioning:

  `BOOLEAN`

- union_by_name:

  `BOOLEAN`

- filename:

  `ANY`

## Value

Unspecified.

## Provided by

The `avro` extension (`LOAD avro;`).
