# DuckDB function read_csv_auto

DuckDB function `read_csv_auto()`.

## Arguments

- col0:

  `VARCHAR | VARCHAR[]`

- hive_types_autocast:

  `BOOLEAN`

- skip:

  `BIGINT`

- types:

  `ANY`

- nullstr:

  `ANY`

- encoding:

  `VARCHAR`

- hive_types:

  `ANY`

- filename:

  `ANY`

- header:

  `BOOLEAN`

- delim:

  `VARCHAR`

- dateformat:

  `VARCHAR`

- column_names:

  `VARCHAR[]`

- union_by_name:

  `BOOLEAN`

- new_line:

  `VARCHAR`

- escape:

  `VARCHAR`

- allow_quoted_nulls:

  `BOOLEAN`

- comment:

  `VARCHAR`

- hive_partitioning:

  `BOOLEAN`

- sep:

  `VARCHAR`

- columns:

  `ANY`

- rejects_limit:

  `BIGINT`

- force_not_null:

  `VARCHAR[]`

- auto_type_candidates:

  `ANY`

- sample_size:

  `BIGINT`

- timestampformat:

  `VARCHAR`

- auto_detect:

  `BOOLEAN`

- all_varchar:

  `BOOLEAN`

- store_rejects:

  `BOOLEAN`

- normalize_names:

  `BOOLEAN`

- rejects_table:

  `VARCHAR`

- column_types:

  `ANY`

- compression:

  `VARCHAR`

- ignore_errors:

  `BOOLEAN`

- names:

  `VARCHAR[]`

- max_line_size:

  `VARCHAR`

- quote:

  `VARCHAR`

- maximum_line_size:

  `VARCHAR`

- rejects_scan:

  `VARCHAR`

- buffer_size:

  `UBIGINT`

- decimal_separator:

  `VARCHAR`

- parallel:

  `BOOLEAN`

- null_padding:

  `BOOLEAN`

- dtypes:

  `ANY`

- strict_mode:

  `BOOLEAN`

- thousands:

  `VARCHAR`

- files_to_sniff:

  `BIGINT`

## Value

Unspecified.

## Overloads

- `` read_csv_auto(col0 = VARCHAR, hive_types_autocast = BOOLEAN, skip = BIGINT, types = ANY, nullstr = ANY, encoding = VARCHAR, hive_types = ANY, filename = ANY, header = BOOLEAN, delim = VARCHAR, dateformat = VARCHAR, column_names = `VARCHAR[]`, union_by_name = BOOLEAN, new_line = VARCHAR, escape = VARCHAR, allow_quoted_nulls = BOOLEAN, comment = VARCHAR, hive_partitioning = BOOLEAN, sep = VARCHAR, columns = ANY, rejects_limit = BIGINT, force_not_null = `VARCHAR[]`, auto_type_candidates = ANY, sample_size = BIGINT, timestampformat = VARCHAR, auto_detect = BOOLEAN, all_varchar = BOOLEAN, store_rejects = BOOLEAN, normalize_names = BOOLEAN, rejects_table = VARCHAR, column_types = ANY, compression = VARCHAR, ignore_errors = BOOLEAN, names = `VARCHAR[]`, max_line_size = VARCHAR, quote = VARCHAR, maximum_line_size = VARCHAR, rejects_scan = VARCHAR, buffer_size = UBIGINT, decimal_separator = VARCHAR, parallel = BOOLEAN, null_padding = BOOLEAN, dtypes = ANY, strict_mode = BOOLEAN, thousands = VARCHAR, files_to_sniff = BIGINT) ``

- `` read_csv_auto(col0 = `VARCHAR[]`, files_to_sniff = BIGINT, thousands = VARCHAR, strict_mode = BOOLEAN, dtypes = ANY, null_padding = BOOLEAN, parallel = BOOLEAN, decimal_separator = VARCHAR, buffer_size = UBIGINT, rejects_scan = VARCHAR, maximum_line_size = VARCHAR, quote = VARCHAR, max_line_size = VARCHAR, names = `VARCHAR[]`, ignore_errors = BOOLEAN, compression = VARCHAR, column_types = ANY, rejects_table = VARCHAR, normalize_names = BOOLEAN, store_rejects = BOOLEAN, all_varchar = BOOLEAN, auto_detect = BOOLEAN, timestampformat = VARCHAR, sample_size = BIGINT, auto_type_candidates = ANY, force_not_null = `VARCHAR[]`, rejects_limit = BIGINT, columns = ANY, sep = VARCHAR, hive_partitioning = BOOLEAN, comment = VARCHAR, allow_quoted_nulls = BOOLEAN, escape = VARCHAR, new_line = VARCHAR, union_by_name = BOOLEAN, column_names = `VARCHAR[]`, dateformat = VARCHAR, delim = VARCHAR, header = BOOLEAN, filename = ANY, hive_types = ANY, encoding = VARCHAR, nullstr = ANY, types = ANY, skip = BIGINT, hive_types_autocast = BOOLEAN) ``
