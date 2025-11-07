# DuckDB function struct_extract

Extract the named entry from the STRUCT.

## Arguments

- struct:

  `STRUCT`

- 'entry':

  `VARCHAR | BIGINT`

## Value

`ANY`

## Overloads

- `` struct_extract(struct = STRUCT, `'entry'` = VARCHAR) ``

- `` struct_extract(struct = STRUCT, `'entry'` = BIGINT) ``

## SQL examples

    struct_extract({'i': 3, 'v2': 3, 'v3': 0}, 'i')
