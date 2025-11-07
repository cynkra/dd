# DuckDB function greatest

Returns the largest value. For strings lexicographical ordering is used.
Note that lowercase characters are considered “larger” than uppercase
characters and collations are not supported.

## Usage

``` r
greatest(arg1 = ANY)
```

## Arguments

- arg1:

  `ANY`

## Value

`ANY`

## SQL examples

    greatest(42, 84)
    greatest('abc', 'bcd', 'cde', 'EFG')
