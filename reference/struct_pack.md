# DuckDB function struct_pack

Create a STRUCT containing the argument values. The entry name will be
the bound variable name.

## Usage

``` r
struct_pack()
```

## Value

`STRUCT`

## SQL examples

    struct_pack(i := 4, s := 'string')
