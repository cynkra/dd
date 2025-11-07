# DuckDB function enum_range

Returns all values of the input enum type as an array.

## Usage

``` r
enum_range(enum = ANY)
```

## Arguments

- enum:

  `ANY`

## Value

`VARCHAR[]`

## SQL examples

    enum_range(NULL::mood)
