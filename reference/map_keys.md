# DuckDB function map_keys

Returns the keys of a map as a list.

## Usage

``` r
map_keys(map)
```

## Arguments

- map:

  `MAP(K, V)`

## Value

`K[]`

## SQL examples

    map_keys(map(['key'], ['val']))
