# DuckDB function map_values

Returns the values of a map as a list.

## Usage

``` r
map_values(map = `MAP(K, V)`)
```

## Arguments

- map:

  `MAP(K, V)`

## Value

`V[]`

## SQL examples

    map_values(map(['key'], ['val']))
