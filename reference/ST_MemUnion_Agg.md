# DuckDB function ST_MemUnion_Agg

Computes the union of a set of input geometries. "Slower, but might be
more memory efficient than ST_UnionAgg as each geometry is merged into
the union individually rather than all at once.

## Usage

``` r
ST_MemUnion_Agg(col0)
```

## Arguments

- col0:

  `GEOMETRY`

## Value

`GEOMETRY`

## Provided by

The `spatial` extension (`LOAD spatial;`).
