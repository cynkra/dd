# DuckDB function get_bit

Extracts the nth bit from bitstring; the first (leftmost) bit is indexed
0.

## Usage

``` r
get_bit(bitstring = BIT, index = INTEGER)
```

## Arguments

- bitstring:

  `BIT`

- index:

  `INTEGER`

## Value

`INTEGER`

## SQL examples

    get_bit('0110010'::BIT, 2)
