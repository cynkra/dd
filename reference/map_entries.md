# DuckDB function map_entries

Returns the map entries as a list of keys/values.

## Usage

``` r
map_entries(map = `MAP(K, V)`)
```

## Arguments

- map:

  `MAP(K, V)`

## Value

`STRUCT("key" K, "value" V)[]`

## SQL examples

    map_entries(map(['key'], ['val']))
