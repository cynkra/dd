# DuckDB function monthname

The (English) name of the month.

## Arguments

- ts:

  `DATE | TIMESTAMP | TIMESTAMP WITH TIME ZONE`

## Value

`VARCHAR`

## Overloads

- `monthname(ts = DATE)`

- `monthname(ts = TIMESTAMP)`

- `` monthname(ts = `TIMESTAMP WITH TIME ZONE`) ``

## SQL examples

    monthname(TIMESTAMP '1992-09-20')
