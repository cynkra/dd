# DuckDB function make_timestamp_ns

The timestamp for the given nanoseconds since epoch.

## Usage

``` r
make_timestamp_ns(nanos = BIGINT)
```

## Arguments

- nanos:

  `BIGINT`

## Value

`TIMESTAMP_NS`

## SQL examples

    make_timestamp_ns(1732117793000000000)
