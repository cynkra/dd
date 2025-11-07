# DuckDB function array_unique

Counts the unique elements of a `list`.

## Usage

``` r
array_unique(list = `ANY[]`)
```

## Arguments

- list:

  `ANY[]`

## Value

`UBIGINT`

## SQL examples

    array_unique([1, 1, NULL, -3, 1, 5])
