# DuckDB function bit_position

Returns first starting index of the specified substring within bits, or
zero if it is not present. The first (leftmost) bit is indexed 1.

## Usage

``` r
bit_position(substring = BIT, bitstring = BIT)
```

## Arguments

- substring:

  `BIT`

- bitstring:

  `BIT`

## Value

`INTEGER`

## SQL examples

    bit_position('010'::BIT, '1110101'::BIT)
