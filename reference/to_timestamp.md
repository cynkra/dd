# DuckDB function to_timestamp

Converts secs since epoch to a timestamp with time zone.

## Usage

``` r
to_timestamp(sec = DOUBLE)
```

## Arguments

- sec:

  `DOUBLE`

## Value

`TIMESTAMP WITH TIME ZONE`

## SQL examples

    to_timestamp(1284352323.5)
