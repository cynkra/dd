# DuckDB function union_value

Create a single member UNION containing the argument value. The tag of
the value will be the bound variable name.

## Usage

``` r
union_value()
```

## Value

`UNION`

## SQL examples

    union_value(k := 'hello')
