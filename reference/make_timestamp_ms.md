# DuckDB function make_timestamp_ms

The timestamp for the given microseconds since the epoch.

## Usage

``` r
make_timestamp_ms(nanos = BIGINT)
```

## Arguments

- nanos:

  `BIGINT`

## Value

`TIMESTAMP`

## SQL examples

    make_timestamp_ms(1732117793000000)
