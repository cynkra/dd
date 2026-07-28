# DuckDB function lance_hybrid_search

DuckDB function `lance_hybrid_search()`.

## Usage

``` r
lance_hybrid_search(
  col0,
  col1,
  col2,
  col3,
  col4,
  alpha,
  use_index,
  prefilter,
  refine_factor,
  nprobs,
  oversample_factor,
  k
)
```

## Arguments

- col0:

  `VARCHAR`

- col1:

  `VARCHAR`

- col2:

  `FLOAT[] | DOUBLE[]`

- col3:

  `VARCHAR`

- col4:

  `VARCHAR`

- alpha:

  `FLOAT`

- use_index:

  `BOOLEAN`

- prefilter:

  `BOOLEAN`

- refine_factor:

  `BIGINT`

- nprobs:

  `BIGINT`

- oversample_factor:

  `INTEGER`

- k:

  `BIGINT`

## Value

Unspecified.

## Provided by

The `lance` extension (`LOAD lance;`).
