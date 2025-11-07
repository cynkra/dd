# DuckDB function currval

Return the current value of the sequence. Note that nextval must be
called at least once prior to calling currval.

## Usage

``` r
currval(`'sequence_name'` = VARCHAR)
```

## Arguments

- 'sequence_name':

  `VARCHAR`

## Value

`BIGINT`

## SQL examples

    currval('my_sequence_name')
