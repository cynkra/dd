# DuckDB function struct_concat

Merge the multiple STRUCTs into a single STRUCT.

## Usage

``` r
struct_concat()
```

## Value

`STRUCT`

## SQL examples

    struct_concat(struct_pack(i := 4), struct_pack(s := 'string'))
