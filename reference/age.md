# DuckDB function age

Subtract arguments, resulting in the time difference between the two
timestamps.

## Usage

``` r
age(timestamp, timestamp.1)
```

## Arguments

- timestamp, timestamp.1:

  `TIMESTAMP | TIMESTAMP WITH TIME ZONE`

## Value

`INTERVAL`

## Overloads

- `age(timestamp = TIMESTAMP)`

- `age(timestamp = TIMESTAMP, timestamp.1 = TIMESTAMP)`

- `` age(timestamp = `TIMESTAMP WITH TIME ZONE`) ``

- `` age(timestamp = `TIMESTAMP WITH TIME ZONE`, timestamp.1 = `TIMESTAMP WITH TIME ZONE`) ``

## SQL examples

    age(TIMESTAMP '2001-04-10', TIMESTAMP '1992-09-20')
