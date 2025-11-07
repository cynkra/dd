# DuckDB function replace_type

Casts all fields of type1 to type2.

## Usage

``` r
replace_type(param = ANY, type1 = ANY, type2 = ANY)
```

## Arguments

- param:

  `ANY`

- type1:

  `ANY`

- type2:

  `ANY`

## Value

`ANY`

## SQL examples

    replace_type({duck: 3.141592653589793::DOUBLE}, NULL::DOUBLE, NULL::DECIMAL(15,2))
