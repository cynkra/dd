# DuckDB function map_extract_value

Returns the value for a given key or NULL if the key is not contained in
the map. The type of the key provided in the second parameter must match
the type of the map’s keys else an error is returned.

## Usage

``` r
map_extract_value(map = `MAP(K, V)`, key = K)
```

## Arguments

- map:

  `MAP(K, V)`

- key:

  `K`

## Value

`V`

## SQL examples

    map_extract_value(map(['key'], ['val']), 'key')
