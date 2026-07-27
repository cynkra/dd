# DuckDB function struct_extract_at

Extract the entry from the STRUCT by position (starts at 1!).

## Usage

``` r
struct_extract_at(struct, entry)
```

## Arguments

- struct:

  `STRUCT`

- entry:

  `BIGINT`

## Value

`ANY`

## SQL examples

    struct_extract_at({'i': 3, 'v2': 3, 'v3': 0}, 2)
