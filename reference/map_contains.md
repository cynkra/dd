# DuckDB function map_contains

Checks if a map contains a given key.

## Usage

``` r
map_contains(map = `MAP(K, V)`, key = K)
```

## Arguments

- map:

  `MAP(K, V)`

- key:

  `K`

## Value

`BOOLEAN`

## SQL examples

    map_contains(MAP {'key1': 10, 'key2': 20, 'key3': 30}, 'key2')
