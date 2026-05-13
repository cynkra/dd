# DuckDB functions

A list of known DuckDB functions.

## Usage

``` r
dd
```

## Examples

``` r
dd[1:3]
#> $`!__postfix`
#> function(x = INTEGER) {
#>   stop("DuckDB function !__postfix() is not available in R.")
#> }
#> <bytecode: 0x5651dd18b6c0>
#> <environment: namespace:dd>
#> 
#> $`!~~`
#> function(col0 = VARCHAR, col1 = VARCHAR) {
#>   stop("DuckDB function !~~() is not available in R.")
#> }
#> <bytecode: 0x5651dd18d570>
#> <environment: namespace:dd>
#> 
#> $`!~~*`
#> function(col0 = VARCHAR, col1 = VARCHAR) {
#>   stop("DuckDB function !~~*() is not available in R.")
#> }
#> <bytecode: 0x5651de3cb5b8>
#> <environment: namespace:dd>
#> 
```
