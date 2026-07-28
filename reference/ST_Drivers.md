# DuckDB function ST_Drivers

Returns the list of supported GDAL drivers and file formats

Note that far from all of these drivers have been tested properly. Some
may require additional options to be passed to work as expected. If you
run into any issues please first consult the [consult the GDAL
docs](https://gdal.org/drivers/vector/index.html).

## Usage

``` r
ST_Drivers()
```

## Value

Unspecified.

## Provided by

The `spatial` extension (`LOAD spatial;`).

## SQL examples

    SELECT * FROM ST_Drivers();
