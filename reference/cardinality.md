# DuckDB function cardinality

Returns the size of the map (or the number of entries in the map).

## Usage

``` r
cardinality(map = ANY)
```

## Arguments

- map:

  `ANY`

## Value

`UBIGINT`

## SQL examples

    cardinality( map([4, 2], ['a', 'b']) );
