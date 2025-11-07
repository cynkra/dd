# DuckDB function isinf

Returns true if the floating point value is infinite, false otherwise.

## Arguments

- x:

  `FLOAT | DOUBLE | DATE | TIMESTAMP | TIMESTAMP WITH TIME ZONE`

## Value

`BOOLEAN`

## Overloads

- `isinf(x = FLOAT)`

- `isinf(x = DOUBLE)`

- `isinf(x = DATE)`

- `isinf(x = TIMESTAMP)`

- `` isinf(x = `TIMESTAMP WITH TIME ZONE`) ``

## SQL examples

    isinf('Infinity'::float)
