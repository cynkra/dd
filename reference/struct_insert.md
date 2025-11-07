# DuckDB function struct_insert

Adds field(s)/value(s) to an existing STRUCT with the argument values.
The entry name(s) will be the bound variable name(s).

## Usage

``` r
struct_insert()
```

## Value

`STRUCT`

## SQL examples

    struct_insert({'a': 1}, b := 2)
