# DuckDB function read_ndjson_auto

DuckDB function `read_ndjson_auto()`.

## Usage

``` r
read_ndjson_auto(
  col0,
  convert_strings_to_integers,
  maximum_sample_files,
  timestamp_format,
  field_appearance_threshold,
  timestampformat,
  map_inference_threshold,
  date_format,
  filename,
  union_by_name,
  compression,
  maximum_depth,
  columns,
  sample_size,
  hive_types,
  hive_types_autocast,
  maximum_object_size,
  format,
  ignore_errors,
  hive_partitioning,
  auto_detect,
  records,
  dateformat
)
```

## Arguments

- col0:

  `VARCHAR | VARCHAR[]`

- convert_strings_to_integers:

  `BOOLEAN`

- maximum_sample_files:

  `BIGINT`

- timestamp_format:

  `VARCHAR`

- field_appearance_threshold:

  `DOUBLE`

- timestampformat:

  `VARCHAR`

- map_inference_threshold:

  `BIGINT`

- date_format:

  `VARCHAR`

- filename:

  `ANY`

- union_by_name:

  `BOOLEAN`

- compression:

  `VARCHAR`

- maximum_depth:

  `BIGINT`

- columns:

  `ANY`

- sample_size:

  `BIGINT`

- hive_types:

  `ANY`

- hive_types_autocast:

  `BOOLEAN`

- maximum_object_size:

  `UINTEGER`

- format:

  `VARCHAR`

- ignore_errors:

  `BOOLEAN`

- hive_partitioning:

  `BOOLEAN`

- auto_detect:

  `BOOLEAN`

- records:

  `VARCHAR`

- dateformat:

  `VARCHAR`

## Value

Unspecified.

## Provided by

The `json` extension (`LOAD json;`).
