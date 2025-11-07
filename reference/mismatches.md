# DuckDB function mismatches

The Hamming distance between to strings, i.e., the number of positions
with different characters for two strings of equal length. Strings must
be of equal length. Characters of different cases (e.g., `a` and `A`)
are considered different.

## Usage

``` r
mismatches(s1 = VARCHAR, s2 = VARCHAR)
```

## Arguments

- s1:

  `VARCHAR`

- s2:

  `VARCHAR`

## Value

`BIGINT`

## SQL examples

    mismatches('duck', 'luck')
