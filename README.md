
<!-- README.md and index.md are generated from README.Rmd. Please edit that file. -->

# dd

<!-- badges: start -->

[![DuckDB](https://img.shields.io/badge/DuckDB-1.5.5-FFF000?logo=duckdb&logoColor=black)](https://duckdb.org)
<!-- badges: end -->

The goal of dd is to provide documentation for DuckDB’s functions, and
later also an easy way to test them. It is meant to be used in
conjunction with [duckplyr](https://duckplyr.tidyverse.org/) and
[duckdb](https://duckdb.org/docs/stable/clients/r).

These pages document the functions of **DuckDB 1.5.5**.

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

    Usage:

         acos(x)
         
    Arguments:

           x: 'DOUBLE'

    Value:

         'DOUBLE'

    SQL examples:

         acos(0.5)
         
