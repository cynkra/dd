# DuckDB function map_from_entries

Returns a map created from the entries of the array.

## Usage

``` r
map_from_entries(map = `STRUCT(K, V)[]`)
```

## Arguments

- map:

  `STRUCT(K, V)[]`

## Value

`MAP(K, V)`

## SQL examples

    map_from_entries([{k: 5, v: 'val1'}, {k: 3, v: 'val2'}]);
