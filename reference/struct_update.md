# DuckDB function struct_update

Changes field(s)/value(s) to an existing STRUCT with the argument
values. The entry name(s) will be the bound variable name(s).

## Usage

``` r
struct_update()
```

## Value

`STRUCT`

## SQL examples

    struct_update({'a': 1}, a := 2)
