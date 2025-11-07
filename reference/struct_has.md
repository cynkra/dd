# DuckDB function struct_has

Check if an unnamed STRUCT contains the value.

## Usage

``` r
struct_has(struct = STRUCT, `'entry'` = ANY)
```

## Arguments

- struct:

  `STRUCT`

- 'entry':

  `ANY`

## Value

`BOOLEAN`

## SQL examples

    struct_has(ROW(3, 3, 0), 3)
