# DuckDB function equi_width_bins

Generates bin_count equi-width bins between the min and max. If enabled
nice_rounding makes the numbers more readable/less jagged.

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

## Overloads

- `equi_width_bins(min = BIGINT, max = BIGINT, bin_count = BIGINT, nice_rounding = BOOLEAN)`

- `equi_width_bins(min = DOUBLE, max = DOUBLE, bin_count = BIGINT, nice_rounding = BOOLEAN)`

- `equi_width_bins(min = TIMESTAMP, max = TIMESTAMP, bin_count = BIGINT, nice_rounding = BOOLEAN)`

- `equi_width_bins(min = ANY, max = ANY, bin_count = BIGINT, nice_rounding = BOOLEAN)`

## SQL examples

    equi_width_bins(0, 10, 2, true)
