# DuckDB function least

Returns the smallest value. For strings lexicographical ordering is
used. Note that uppercase characters are considered “smaller” than
lowercase characters, and collations are not supported.

## Usage

``` r
least(arg1 = ANY)
```

## Arguments

- arg1:

  `ANY`

## Value

`ANY`

## SQL examples

    least(42, 84)
    least('abc', 'bcd', 'cde', 'EFG')
