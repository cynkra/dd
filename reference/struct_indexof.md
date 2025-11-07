# DuckDB function struct_indexof

Get the position of the entry in an unnamed STRUCT, starting at 1.

## Usage

``` r
struct_indexof(struct = STRUCT, `'entry'` = ANY)
```

## Arguments

- struct:

  `STRUCT`

- 'entry':

  `ANY`

## Value

`INTEGER`

## SQL examples

    struct_indexof(ROW(3, 3, 0), 3)
