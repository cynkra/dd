# DuckDB function struct_position

Get the position of the entry in an unnamed STRUCT, starting at 1.

## Usage

``` r
struct_position(struct = STRUCT, `'entry'` = ANY)
```

## Arguments

- struct:

  `STRUCT`

- 'entry':

  `ANY`

## Value

`INTEGER`

## SQL examples

    struct_position(ROW(3, 3, 0), 3)
