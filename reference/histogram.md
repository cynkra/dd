# DuckDB function histogram

Returns a LIST of STRUCTs with the fields bucket and count.

## Arguments

- arg:

  `ANY`

- col1:

  `ANY[]`

- source:

  Unspecified.

- col_name:

  Unspecified.

- bin_count:

  Unspecified.

- technique:

  Unspecified.

## Value

`MAP`

## Overloads

- `` histogram(arg = ANY, col1 = `ANY[]`) ``

- `histogram(arg = ANY)`

- `histogram(source, col_name, bin_count, technique)`

## SQL examples

    histogram(A)
