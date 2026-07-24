# DuckDB function bitstring

Pads the bitstring until the specified length.

## Usage

``` r
bitstring(bitstring, length)
```

## Arguments

- bitstring:

  `VARCHAR | BIT`

- length:

  `INTEGER`

## Value

`BIT`

## SQL examples

    bitstring('1010'::BIT, 7)
