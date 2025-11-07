# DuckDB function set_bit

Sets the nth bit in bitstring to newvalue; the first (leftmost) bit is
indexed 0. Returns a new bitstring.

## Usage

``` r
set_bit(bitstring = BIT, index = INTEGER, new_value = INTEGER)
```

## Arguments

- bitstring:

  `BIT`

- index:

  `INTEGER`

- new_value:

  `INTEGER`

## Value

`BIT`

## SQL examples

    set_bit('0110010'::BIT, 2, 0)
