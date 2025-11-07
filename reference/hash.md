# DuckDB function hash

Returns a `UBIGINT` with the hash of the `value`. Note that this is not
a cryptographic hash.

## Usage

``` r
hash(value = ANY)
```

## Arguments

- value:

  `ANY`

## Value

`UBIGINT`

## SQL examples

    hash('🦆')
