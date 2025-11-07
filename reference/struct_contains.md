# DuckDB function struct_contains

Check if an unnamed STRUCT contains the value.

## Usage

``` r
struct_contains(struct = STRUCT, `'entry'` = ANY)
```

## Arguments

- struct:

  `STRUCT`

- 'entry':

  `ANY`

## Value

`BOOLEAN`

## SQL examples

    struct_contains(ROW(3, 3, 0), 3)
