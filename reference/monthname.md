# DuckDB function monthname

The (English) name of the month.

## Usage

``` r
monthname(ts)
```

## Arguments

- ts:

  `DATE | TIMESTAMP | TIMESTAMP WITH TIME ZONE`

## Value

`VARCHAR`

## SQL examples

    monthname(TIMESTAMP '1992-09-20')
