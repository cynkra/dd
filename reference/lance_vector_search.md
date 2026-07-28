# DuckDB function lance_vector_search

DuckDB function `lance_vector_search()`.

## Usage

``` r
lance_vector_search(
  col0,
  col1,
  col2,
  filter,
  explain_verbose,
  use_index,
  prefilter,
  refine_factor,
  nprobs,
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

- filter:

  `VARCHAR`

- explain_verbose:

  `BOOLEAN`

- use_index:

  `BOOLEAN`

- prefilter:

  `BOOLEAN`

- refine_factor:

  `BIGINT`

- nprobs:

  `BIGINT`

- k:

  `BIGINT`

## Value

Unspecified.

## Provided by

The `lance` extension (`LOAD lance;`).
