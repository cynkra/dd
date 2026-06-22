# DuckDB function read_parquet

DuckDB function `read_parquet()`.

## Arguments

- col0:

  `VARCHAR | VARCHAR[]`

- can_have_nan:

  `BOOLEAN`

- filename:

  `ANY`

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

- schema:

  `ANY`

## Value

Unspecified.

## Overloads

- `read_parquet(col0 = VARCHAR, can_have_nan = BOOLEAN, filename = ANY, union_by_name = BOOLEAN, debug_use_openssl = BOOLEAN, hive_partitioning = BOOLEAN, parquet_version = VARCHAR, encryption_config = ANY, hive_types_autocast = BOOLEAN, binary_as_string = BOOLEAN, explicit_cardinality = UBIGINT, compression = VARCHAR, file_row_number = BOOLEAN, hive_types = ANY, schema = ANY)`

- `` read_parquet(col0 = `VARCHAR[]`, can_have_nan = BOOLEAN, filename = ANY, union_by_name = BOOLEAN, debug_use_openssl = BOOLEAN, hive_partitioning = BOOLEAN, parquet_version = VARCHAR, encryption_config = ANY, hive_types_autocast = BOOLEAN, binary_as_string = BOOLEAN, explicit_cardinality = UBIGINT, compression = VARCHAR, file_row_number = BOOLEAN, hive_types = ANY, schema = ANY) ``
