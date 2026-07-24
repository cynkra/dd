# DuckDB function struct_extract

Extract the named entry from the STRUCT.

## Usage

``` r
struct_extract(struct, entry)
```

## Arguments

- struct:

  `STRUCT`

- entry:

  `VARCHAR | BIGINT`

## Value

`ANY`

## SQL examples

    struct_extract({'i': 3, 'v2': 3, 'v3': 0}, 'i')
