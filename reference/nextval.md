# DuckDB function nextval

Return the following value of the sequence.

## Usage

``` r
nextval(`'sequence_name'` = VARCHAR)
```

## Arguments

- 'sequence_name':

  `VARCHAR`

## Value

`BIGINT`

## SQL examples

    nextval('my_sequence_name')
