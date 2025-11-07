# DuckDB function isfinite

Returns true if the floating point value is finite, false otherwise.

## Arguments

- x:

  `FLOAT | DOUBLE | DATE | TIMESTAMP | TIMESTAMP WITH TIME ZONE`

## Value

`BOOLEAN`

## Overloads

- `isfinite(x = FLOAT)`

- `isfinite(x = DOUBLE)`

- `isfinite(x = DATE)`

- `isfinite(x = TIMESTAMP)`

- `` isfinite(x = `TIMESTAMP WITH TIME ZONE`) ``

## SQL examples

    isfinite(5.5)
