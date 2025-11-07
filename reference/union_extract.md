# DuckDB function union_extract

Extract the value with the named tags from the union. NULL if the tag is
not currently selected.

## Usage

``` r
union_extract(union = UNION, tag = VARCHAR)
```

## Arguments

- union:

  `UNION`

- tag:

  `VARCHAR`

## Value

`ANY`

## SQL examples

    union_extract(s, 'k')
