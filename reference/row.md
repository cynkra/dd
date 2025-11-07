# DuckDB function row

Create an unnamed STRUCT (tuple) containing the argument values.

## Usage

``` r
row()
```

## Value

`STRUCT`

## SQL examples

    row(i, i % 4, i / 4)
