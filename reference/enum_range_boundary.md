# DuckDB function enum_range_boundary

Returns the range between the two given enum values as an array. The
values must be of the same enum type. When the first parameter is NULL,
the result starts with the first value of the enum type. When the second
parameter is NULL, the result ends with the last value of the enum type.

## Usage

``` r
enum_range_boundary(start = ANY, end = ANY)
```

## Arguments

- start:

  `ANY`

- end:

  `ANY`

## Value

`VARCHAR[]`

## SQL examples

    enum_range_boundary(NULL, 'happy'::mood)
