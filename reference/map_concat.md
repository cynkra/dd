# DuckDB function map_concat

Returns a map created from merging the input maps, on key collision the
value is taken from the last map with that key.

## Usage

``` r
map_concat()
```

## Value

`LIST`

## SQL examples

    map_concat(map([1, 2], ['a', 'b']), map([2, 3], ['c', 'd']));
