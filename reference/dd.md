# DuckDB functions

A list of known DuckDB functions, as provided by DuckDB 1.5.5.

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
#> <bytecode: 0x59436532af48>
#> <environment: namespace:dd>
#> 
#> $`!~~`
#> function(col0 = VARCHAR, col1 = VARCHAR) {
#>   stop("DuckDB function !~~() is not available in R.")
#> }
#> <bytecode: 0x59436532cdf8>
#> <environment: namespace:dd>
#> 
#> $`!~~*`
#> function(col0 = VARCHAR, col1 = VARCHAR) {
#>   stop("DuckDB function !~~*() is not available in R.")
#> }
#> <bytecode: 0x59436532ebc8>
#> <environment: namespace:dd>
#> 
```
