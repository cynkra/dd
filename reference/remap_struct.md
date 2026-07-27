# DuckDB function remap_struct

Map a struct to another struct type, potentially re-ordering, renaming
and casting members and filling in defaults for missing values.

## Usage

``` r
remap_struct(input, target_type, mapping, defaults)
```

## Arguments

- input, target_type, mapping, defaults:

  `ANY`

## Value

`ANY`

## SQL examples

    remap_struct({'i': 1, 'j': 2}, NULL::ROW(v1 INT, v2 INT, v3 INT), {'v1': 'j', 'v3': 'i'}, {'v2': NULL::INTEGER})
