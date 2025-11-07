# DuckDB function read_parquet

DuckDB function `read_parquet()`.

## Arguments

- col0:

  `VARCHAR | VARCHAR[]`

- can_have_nan:

  `BOOLEAN`

- encryption_config:

  `ANY`

- file_row_number:

  `BOOLEAN`

- schema:

  `ANY`

- parquet_version:

  `VARCHAR`

- filename:

  `ANY`

- binary_as_string:

  `BOOLEAN`

- debug_use_openssl:

  `BOOLEAN`

- union_by_name:

  `BOOLEAN`

- explicit_cardinality:

  `UBIGINT`

- compression:

  `VARCHAR`

- hive_types:

  `ANY`

- hive_partitioning:

  `BOOLEAN`

- hive_types_autocast:

  `BOOLEAN`

## Value

Unspecified.

## Overloads

- `read_parquet(col0 = VARCHAR, can_have_nan = BOOLEAN, encryption_config = ANY, file_row_number = BOOLEAN, schema = ANY, parquet_version = VARCHAR, filename = ANY, binary_as_string = BOOLEAN, debug_use_openssl = BOOLEAN, union_by_name = BOOLEAN, explicit_cardinality = UBIGINT, compression = VARCHAR, hive_types = ANY, hive_partitioning = BOOLEAN, hive_types_autocast = BOOLEAN)`

- `` read_parquet(col0 = `VARCHAR[]`, hive_types_autocast = BOOLEAN, hive_partitioning = BOOLEAN, hive_types = ANY, compression = VARCHAR, explicit_cardinality = UBIGINT, union_by_name = BOOLEAN, debug_use_openssl = BOOLEAN, binary_as_string = BOOLEAN, filename = ANY, parquet_version = VARCHAR, schema = ANY, file_row_number = BOOLEAN, encryption_config = ANY, can_have_nan = BOOLEAN) ``
