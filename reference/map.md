# DuckDB function map

Creates a map from a set of keys and values.

## Arguments

- keys:

  `K[]`

- values:

  `V[]`

## Value

`MAP("NULL", "NULL") | MAP(K, V)`

## Overloads

- `map()`

- `` map(keys = `K[]`, values = `V[]`) ``

## SQL examples

    map(['key1', 'key2'], ['val1', 'val2'])
