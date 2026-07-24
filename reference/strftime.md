# DuckDB function strftime

Converts a `date` to a string according to the format string.

## Usage

``` r
strftime(data, format)
```

## Arguments

- data:

  `DATE | TIMESTAMP | TIMESTAMP_NS | VARCHAR | TIMESTAMP WITH TIME ZONE`

- format:

  `VARCHAR | DATE | TIMESTAMP | TIMESTAMP_NS | TIMESTAMP WITH TIME ZONE`

## Value

`VARCHAR`

## SQL examples

    strftime(date '1992-01-01', '%a, %-d %B %Y')
