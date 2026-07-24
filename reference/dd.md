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
#> <bytecode: 0x624a2c324b30>
#> <environment: namespace:dd>
#> 
#> $`!~~`
#> function(col0 = VARCHAR, col1 = VARCHAR) {
#>   stop("DuckDB function !~~() is not available in R.")
#> }
#> <bytecode: 0x624a2c31bf28>
#> <environment: namespace:dd>
#> 
#> $`!~~*`
#> function(col0 = VARCHAR, col1 = VARCHAR) {
#>   stop("DuckDB function !~~*() is not available in R.")
#> }
#> <bytecode: 0x624a2c31a548>
#> <environment: namespace:dd>
#> 
```
