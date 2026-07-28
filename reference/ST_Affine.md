# DuckDB function ST_Affine

Applies an affine transformation to a geometry.

For the 2D variant, the transformation matrix is defined as follows:

    | a b xoff |
    | d e yoff |
    | 0 0 1    |

For the 3D variant, the transformation matrix is defined as follows:

    | a b c xoff |
    | d e f yoff |
    | g h i zoff |
    | 0 0 0 1    |

The transformation is applied to all vertices of the geometry.

## Usage

``` r
ST_Affine(geom, a, b, c, d, e, f, g, h, i, xoff, yoff, zoff)
```

## Arguments

- geom:

  `GEOMETRY`

- a:

  `DOUBLE`

- b:

  `DOUBLE`

- c:

  `DOUBLE`

- d:

  `DOUBLE`

- e:

  `DOUBLE`

- f:

  `DOUBLE`

- g:

  `DOUBLE`

- h:

  `DOUBLE`

- i:

  `DOUBLE`

- xoff:

  `DOUBLE`

- yoff:

  `DOUBLE`

- zoff:

  `DOUBLE`

## Value

`GEOMETRY`

## Overloads

- `ST_Affine(geom = GEOMETRY, a = DOUBLE, b = DOUBLE, c = DOUBLE, d = DOUBLE, e = DOUBLE, f = DOUBLE, g = DOUBLE, h = DOUBLE, i = DOUBLE, xoff = DOUBLE, yoff = DOUBLE, zoff = DOUBLE)`

- `ST_Affine(geom = GEOMETRY, a = DOUBLE, b = DOUBLE, d = DOUBLE, e = DOUBLE, xoff = DOUBLE, yoff = DOUBLE)`

## Provided by

The `spatial` extension (`LOAD spatial;`).

## SQL examples

    -- Translate a point by (2, 3)
    SELECT ST_Affine(ST_Point(1, 1),
                     1, 0,   -- a, b
                     0, 1,   -- d, e
                     2, 3);  -- xoff, yoff
    -- POINT (3 4)
    --
    -- -- Scale a geometry by factor 2 in X and Y
    -- SELECT ST_Affine(ST_Point(1, 1),
    --                  2, 0, 0,   -- a, b, c
    --                  0, 2, 0,   -- d, e, f
    --                  0, 0, 1,   -- g, h, i
    --                  0, 0, 0);  -- xoff, yoff, zoff
    -- POINT (2 2)
