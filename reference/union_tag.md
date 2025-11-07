# DuckDB function union_tag

Retrieve the currently selected tag of the union as an ENUM.

## Usage

``` r
union_tag(union = UNION)
```

## Arguments

- union:

  `UNION`

## Value

`ANY`

## SQL examples

    union_tag(union_value(k := 'foo'))
