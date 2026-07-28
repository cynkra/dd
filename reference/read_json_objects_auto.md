# DuckDB function read_json_objects_auto

DuckDB function `read_json_objects_auto()`.

## Usage

``` r
read_json_objects_auto(
  col0,
  ignore_errors,
  format,
  maximum_object_size,
  hive_types_autocast,
  hive_types,
  hive_partitioning,
  compression,
  union_by_name,
  filename
)
```

## Arguments

- col0:

  `VARCHAR | VARCHAR[]`

- ignore_errors:

  `BOOLEAN`

- format:

  `VARCHAR`

- maximum_object_size:

  `UINTEGER`

- hive_types_autocast:

  `BOOLEAN`

- hive_types:

  `ANY`

- hive_partitioning:

  `BOOLEAN`

- compression:

  `VARCHAR`

- union_by_name:

  `BOOLEAN`

- filename:

  `ANY`

## Value

Unspecified.

## Provided by

The `json` extension (`LOAD json;`).
