# DuckDB function nextafter

Returns the next floating point value after x in the direction of y.

## Arguments

- x:

  `DOUBLE | FLOAT`

- y:

  `DOUBLE | FLOAT`

## Value

`DOUBLE | FLOAT`

## Overloads

- `nextafter(x = DOUBLE, y = DOUBLE)`

- `nextafter(x = FLOAT, y = FLOAT)`

## SQL examples

    nextafter(1::float, 2::float)
