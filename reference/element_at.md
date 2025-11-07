# DuckDB function element_at

Returns a list containing the value for a given key or an empty list if
the key is not contained in the map. The type of the key provided in the
second parameter must match the type of the map’s keys else an error is
returned.

## Usage

``` r
element_at(map = `MAP(K, V)`, key = K)
```

## Arguments

- map:

  `MAP(K, V)`

- key:

  `K`

## Value

`V[]`

## SQL examples

    element_at(map(['key'], ['val']), 'key')
