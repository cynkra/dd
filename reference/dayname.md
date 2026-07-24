# DuckDB function dayname

The (English) name of the weekday.

## Usage

``` r
dayname(ts)
```

## Arguments

- ts:

  `DATE | TIMESTAMP | TIMESTAMP WITH TIME ZONE`

## Value

`VARCHAR`

## SQL examples

    dayname(TIMESTAMP '1992-03-22')
