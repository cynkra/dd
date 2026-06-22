# DuckDB function read_csv_auto

DuckDB function `read_csv_auto()`.

## Arguments

- col0:

  `VARCHAR | VARCHAR[]`

- thousands:

  `VARCHAR`

- strict_mode:

  `BOOLEAN`

- dtypes:

  `ANY`

- column_types:

  `ANY`

- null_padding:

  `BOOLEAN`

- column_names:

  `VARCHAR[]`

- buffer_size:

  `UBIGINT`

- parallel:

  `BOOLEAN`

- force_not_null:

  `VARCHAR[]`

- hive_types:

  `ANY`

- new_line:

  `VARCHAR`

- files_to_sniff:

  `BIGINT`

- dateformat:

  `VARCHAR`

- delim:

  `VARCHAR`

- sep:

  `VARCHAR`

- decimal_separator:

  `VARCHAR`

- nullstr:

  `ANY`

- escape:

  `VARCHAR`

- compression:

  `VARCHAR`

- encoding:

  `VARCHAR`

- hive_types_autocast:

  `BOOLEAN`

- all_varchar:

  `BOOLEAN`

- columns:

  `ANY`

- hive_partitioning:

  `BOOLEAN`

- auto_detect:

  `BOOLEAN`

- comment:

  `VARCHAR`

- quote:

  `VARCHAR`

- max_line_size:

  `VARCHAR`

- store_rejects:

  `BOOLEAN`

- union_by_name:

  `BOOLEAN`

- header:

  `BOOLEAN`

- types:

  `ANY`

- skip:

  `BIGINT`

- filename:

  `ANY`

- sample_size:

  `BIGINT`

- timestampformat:

  `VARCHAR`

- normalize_names:

  `BOOLEAN`

- ignore_errors:

  `BOOLEAN`

- names:

  `VARCHAR[]`

- allow_quoted_nulls:

  `BOOLEAN`

- maximum_line_size:

  `VARCHAR`

- rejects_table:

  `VARCHAR`

- auto_type_candidates:

  `ANY`

- rejects_scan:

  `VARCHAR`

- rejects_limit:

  `BIGINT`

## Value

Unspecified.

## Overloads

- `` read_csv_auto(col0 = VARCHAR, thousands = VARCHAR, strict_mode = BOOLEAN, dtypes = ANY, column_types = ANY, null_padding = BOOLEAN, column_names = `VARCHAR[]`, buffer_size = UBIGINT, parallel = BOOLEAN, force_not_null = `VARCHAR[]`, hive_types = ANY, new_line = VARCHAR, files_to_sniff = BIGINT, dateformat = VARCHAR, delim = VARCHAR, sep = VARCHAR, decimal_separator = VARCHAR, nullstr = ANY, escape = VARCHAR, compression = VARCHAR, encoding = VARCHAR, hive_types_autocast = BOOLEAN, all_varchar = BOOLEAN, columns = ANY, hive_partitioning = BOOLEAN, auto_detect = BOOLEAN, comment = VARCHAR, quote = VARCHAR, max_line_size = VARCHAR, store_rejects = BOOLEAN, union_by_name = BOOLEAN, header = BOOLEAN, types = ANY, skip = BIGINT, filename = ANY, sample_size = BIGINT, timestampformat = VARCHAR, normalize_names = BOOLEAN, ignore_errors = BOOLEAN, names = `VARCHAR[]`, allow_quoted_nulls = BOOLEAN, maximum_line_size = VARCHAR, rejects_table = VARCHAR, auto_type_candidates = ANY, rejects_scan = VARCHAR, rejects_limit = BIGINT) ``

- `` read_csv_auto(col0 = `VARCHAR[]`, thousands = VARCHAR, strict_mode = BOOLEAN, dtypes = ANY, column_types = ANY, null_padding = BOOLEAN, column_names = `VARCHAR[]`, buffer_size = UBIGINT, parallel = BOOLEAN, force_not_null = `VARCHAR[]`, hive_types = ANY, new_line = VARCHAR, files_to_sniff = BIGINT, dateformat = VARCHAR, delim = VARCHAR, sep = VARCHAR, decimal_separator = VARCHAR, nullstr = ANY, escape = VARCHAR, compression = VARCHAR, encoding = VARCHAR, hive_types_autocast = BOOLEAN, all_varchar = BOOLEAN, columns = ANY, hive_partitioning = BOOLEAN, auto_detect = BOOLEAN, comment = VARCHAR, quote = VARCHAR, max_line_size = VARCHAR, store_rejects = BOOLEAN, union_by_name = BOOLEAN, header = BOOLEAN, types = ANY, skip = BIGINT, filename = ANY, sample_size = BIGINT, timestampformat = VARCHAR, normalize_names = BOOLEAN, ignore_errors = BOOLEAN, names = `VARCHAR[]`, allow_quoted_nulls = BOOLEAN, maximum_line_size = VARCHAR, rejects_table = VARCHAR, auto_type_candidates = ANY, rejects_scan = VARCHAR, rejects_limit = BIGINT) ``
