# DuckDB function list_slice

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

- `list_slice(list = ANY, begin = ANY, end = ANY)`

- `list_slice(list = ANY, begin = ANY, end = ANY, step = BIGINT)`

## SQL examples

    list_slice([4, 5, 6], 2, 3)
    list_slice([4, 5, 6], 1, 3, 2)
