# dd

The goal of dd is to provide documentation for DuckDB’s functions, and
later also an easy way to test them. It is meant to be used in
conjunction with [duckplyr](https://duckplyr.tidyverse.org/) and
[duckdb](https://duckdb.org/docs/stable/clients/r).

## Installation

You can install the development version of dd like so:

``` r
pak::pak("cynkra/dd")
```

## Example

``` r
library(dd)
dd$acos
#> function(x = DOUBLE) {
#>   stop("DuckDB function acos() is not available in R.")
#> }
#> <bytecode: 0xdeadbeef>
#> <environment: namespace:dd>

help(acos, package = "dd")
```

    DuckDB function acos

    Description:

         Computes the arccosine of x.

    Arguments:

           x: 'DOUBLE'

    Examples:

         ## Not run:

         acos(0.5)
         ## End(Not run)
         
