# DuckDB function bar

Draws a band whose width is proportional to (`x - min`) and equal to
`width` characters when `x` = `max`. `width` defaults to 80.

## Arguments

- x:

  `DOUBLE`

- min:

  `DOUBLE`

- max:

  `DOUBLE`

- width:

  `DOUBLE`

## Value

`VARCHAR`

## Overloads

- `bar(x = DOUBLE, min = DOUBLE, max = DOUBLE, width = DOUBLE)`

- `bar(x = DOUBLE, min = DOUBLE, max = DOUBLE)`

## SQL examples

    bar(5, 0, 20, 10)
