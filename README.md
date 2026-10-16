
<!-- README.md is generated from README.Rmd. Please edit that file. -->

# dd

<!-- badges: start -->

[![DuckDB](https://img.shields.io/badge/DuckDB-1.5.5-FFF000?logo=duckdb&logoColor=black)](https://duckdb.org)
<!-- badges: end -->

The goal of dd is to provide documentation for DuckDB's functions, and later also an easy way to test them.
It is meant to be used in conjunction with [duckplyr](https://duckplyr.tidyverse.org/) and [duckdb](https://duckdb.org/docs/stable/clients/r).

These pages document the functions of **DuckDB 1.5.5**.

## Goals and non-goals

dd aims to:

- Give every DuckDB function a help page in R, so `?acos` and `help(acos, package = "dd")` work from the R console.
- Describe each function as DuckDB does: argument names and types, return type, overloads, SQL examples, and the extension that provides it.
- Cover the DuckDB build it was generated from, including the functions DuckDB's core extensions add.
- Make the same set of names reachable through the `dd` list, so a function can be looked up by name as well as with `?`.
- Install with nothing but R itself: the package declares no `Imports` and no `Suggests`.

It is explicitly not trying to:

- Run DuckDB functions in R. Every stub errors with `DuckDB function acos() is not available in R.`
- Stand in for duckplyr or the duckdb R client; dd is meant to be used alongside them.
- Shadow the base R functions it documents. `format()`, `length()`, `+` and `-` get a help page but are deliberately not exported.
- Document DuckDB's internals. Function names beginning with `__` are dropped.
- Reach past DuckDB's core extension repository. Extensions are installed `FROM core`, so community extensions are never documented.

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
         
