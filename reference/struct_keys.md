# DuckDB function struct_keys

Returns the field names of a STRUCT as a list.

## Usage

``` r
struct_keys(struct)
```

## Arguments

- struct:

  `ANY`

## Value

`VARCHAR[]`

## SQL examples

    struct_keys({'a': 1, 'b': 2})
