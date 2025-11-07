# DuckDB function isnan

Returns true if the floating point value is not a number, false
otherwise.

## Arguments

- x:

  `FLOAT | DOUBLE`

## Value

`BOOLEAN`

## Overloads

- `isnan(x = FLOAT)`

- `isnan(x = DOUBLE)`

## SQL examples

    isnan('NaN'::FLOAT)
