# DuckDB function contains

Returns `true` if `search_string` is found within `string`.

## Arguments

- string:

  `VARCHAR`

- search_string:

  `VARCHAR`

- col0:

  `T[] | MAP(K, V) | STRUCT`

- col1:

  `T | K | ANY`

## Value

`BOOLEAN`

## Overloads

- `contains(string = VARCHAR, search_string = VARCHAR)`

- `` contains(col0 = `T[]`, col1 = T) ``

- `` contains(col0 = `MAP(K, V)`, col1 = K) ``

- `contains(col0 = STRUCT, col1 = ANY)`

## SQL examples

    contains('abc', 'a')
