# DuckDB function enum_first

Returns the first value of the input enum type.

## Usage

``` r
enum_first(enum = ANY)
```

## Arguments

- enum:

  `ANY`

## Value

`VARCHAR`

## SQL examples

    enum_first(NULL::mood)
