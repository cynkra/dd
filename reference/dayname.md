# DuckDB function dayname

The (English) name of the weekday.

## Arguments

- ts:

  `DATE | TIMESTAMP | TIMESTAMP WITH TIME ZONE`

## Value

`VARCHAR`

## Overloads

- `dayname(ts = DATE)`

- `dayname(ts = TIMESTAMP)`

- `` dayname(ts = `TIMESTAMP WITH TIME ZONE`) ``

## SQL examples

    dayname(TIMESTAMP '1992-03-22')
