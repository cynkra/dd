# DuckDB function age

Subtract arguments, resulting in the time difference between the two
timestamps.

## Arguments

- timestamp:

  `TIMESTAMP | TIMESTAMP WITH TIME ZONE`

## Value

`INTERVAL`

## Overloads

- `age(timestamp = TIMESTAMP)`

- `age(timestamp = TIMESTAMP, timestamp = TIMESTAMP)`

- `` age(timestamp = `TIMESTAMP WITH TIME ZONE`) ``

- `` age(timestamp = `TIMESTAMP WITH TIME ZONE`, timestamp = `TIMESTAMP WITH TIME ZONE`) ``

## SQL examples

    age(TIMESTAMP '2001-04-10', TIMESTAMP '1992-09-20')
