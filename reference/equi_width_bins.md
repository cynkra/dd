# DuckDB function equi_width_bins

Generates bin_count equi-width bins between the min and max. If enabled
nice_rounding makes the numbers more readable/less jagged.

## Usage

``` r
equi_width_bins(min, max, bin_count, nice_rounding)
```

## Arguments

- min:

  `BIGINT | DOUBLE | TIMESTAMP | ANY`

- max:

  `BIGINT | DOUBLE | TIMESTAMP | ANY`

- bin_count:

  `BIGINT`

- nice_rounding:

  `BOOLEAN`

## Value

`ANY[]`

## SQL examples

    equi_width_bins(0, 10, 2, true)
