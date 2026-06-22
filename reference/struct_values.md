# DuckDB function struct_values

Returns the field values of a STRUCT as an UnnamedStruct.

## Usage

``` r
struct_values(struct = STRUCT)
```

## Arguments

- struct:

  `STRUCT`

## Value

`STRUCT`

## SQL examples

    struct_values({'a': 1, 'b': 'world'})
