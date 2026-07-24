# DuckDB function first

Returns the first value (NULL or non-NULL) from arg. This function is
affected by ordering.

## Usage

``` r
first(arg)
```

## Arguments

- arg:

  `DECIMAL | ANY`

## Value

`DECIMAL | ANY | T`

## Overloads

- `first(arg = DECIMAL)`

- `first(arg = ANY)`

- `first(col0 = T)`

## SQL examples

    first(A)
