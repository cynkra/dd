# DuckDB function ST_CoverageClean

Aligns the edges of a list of polygons whose edges are meant to align
but are in fact exact matches.

Returns a collection of fixed polygons with the same size and order as
the input polygons. EMPTY will be used in place of collapsed polygons.

## Usage

``` r
ST_CoverageClean(geoms, snapping_distance, gap_maximum_width)
```

## Arguments

- geoms:

  `GEOMETRY[]`

- snapping_distance:

  `DOUBLE`

- gap_maximum_width:

  `DOUBLE`

## Value

`GEOMETRY`

## Overloads

- `` ST_CoverageClean(geoms = `GEOMETRY[]`, snapping_distance = DOUBLE, gap_maximum_width = DOUBLE) ``

- `` ST_CoverageClean(geoms = `GEOMETRY[]`, snapping_distance = DOUBLE) ``

- `` ST_CoverageClean(geoms = `GEOMETRY[]`) ``

## Provided by

The `spatial` extension (`LOAD spatial;`).
