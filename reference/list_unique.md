# DuckDB function list_unique

Counts the unique elements of a `list`.

## Usage

``` r
list_unique(list = `ANY[]`)
```

## Arguments

- list:

  `ANY[]`

## Value

`UBIGINT`

## SQL examples

    list_unique([1, 1, NULL, -3, 1, 5])
