# DuckDB function list_resize

Resizes the `list` to contain `size` elements. Initializes new elements
with `value` or `NULL` if `value` is not set.

## Arguments

- list:

  `ANY[]`

- size\[:

  `ANY`

- value\]:

  `ANY`

## Value

`ANY[]`

## Overloads

- `` list_resize(list = `ANY[]`, `size[` = ANY) ``

- `` list_resize(list = `ANY[]`, `size[` = ANY, `value]` = ANY) ``

## SQL examples

    list_resize([1, 2, 3], 5, 0)
