# DuckDB function array_slice

Extracts a sublist or substring using slice conventions. Negative values
are accepted.

list_slice with added step feature.

## Arguments

- list:

  `ANY`

- begin:

  `ANY`

- end:

  `ANY`

- step:

  `BIGINT`

## Value

`ANY`

## Overloads

- `array_slice(list = ANY, begin = ANY, end = ANY)`

- `array_slice(list = ANY, begin = ANY, end = ANY, step = BIGINT)`

## SQL examples

    array_slice('DuckDB', 3, 4)
    array_slice('DuckDB', 3, NULL)
    array_slice('DuckDB', 0, -3)
    array_slice([4, 5, 6], 1, 3, 2)
