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
#> <bytecode: 0x5581c7e32d48>
#> <environment: namespace:dd>
#> 
#> $`!~~`
#> function(col0 = VARCHAR, col1 = VARCHAR) {
#>   stop("DuckDB function !~~() is not available in R.")
#> }
#> <bytecode: 0x5581c7e34bc0>
#> <environment: namespace:dd>
#> 
#> $`!~~*`
#> function(col0 = VARCHAR, col1 = VARCHAR) {
#>   stop("DuckDB function !~~*() is not available in R.")
#> }
#> <bytecode: 0x5581c7e36a38>
#> <environment: namespace:dd>
#> 
```
