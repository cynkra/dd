# DuckDB function enum_last

Returns the last value of the input enum type.

## Usage

``` r
enum_last(enum = ANY)
```

## Arguments

- enum:

  `ANY`

## Value

`VARCHAR`

## SQL examples

    enum_last(NULL::mood)
