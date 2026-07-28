# DuckDB function ST_AsSVG

Convert the geometry into a SVG fragment or path

The SVG fragment is returned as a string. The fragment is a path element
that can be used in an SVG document. The second boolean argument
specifies whether the path should be relative or absolute. The third
argument specifies the maximum number of digits to use for the
coordinates.

Points are formatted as cx/cy using absolute coordinates or x/y using
relative coordinates.

## Usage

``` r
ST_AsSVG(geom, relative, precision)
```

## Arguments

- geom:

  `GEOMETRY`

- relative:

  `BOOLEAN`

- precision:

  `INTEGER`

## Value

`VARCHAR`

## Provided by

The `spatial` extension (`LOAD spatial;`).

## SQL examples

    SELECT ST_AsSVG('POLYGON((0 0, 0 1, 1 1, 1 0, 0 0))'::GEOMETRY, false, 15);
    -- M 0 0 L 0 -1 1 -1 1 0 Z
