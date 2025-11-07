# DuckDB function printf

Formats a `string` using printf syntax.

## Usage

``` r
printf(format = VARCHAR)
```

## Arguments

- format:

  `VARCHAR`

## Value

`VARCHAR`

## SQL examples

    printf('Benchmark "%s" took %d seconds', 'CSV', 42)
