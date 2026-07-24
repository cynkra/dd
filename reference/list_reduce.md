# DuckDB function list_reduce

Reduces all elements of the input `list` into a single scalar value by
executing the `lambda` function on a running result and the next list
element. The `lambda` function has an optional `initial_value` argument.

## Usage

``` r
list_reduce(list, lambda, initial_value)
```

## Arguments

- list:

  `ANY[]`

- lambda:

  `LAMBDA`

- initial_value:

  `ANY`

## Value

`ANY`

## Overloads

- `` list_reduce(list = `ANY[]`, lambda = LAMBDA) ``

- `` list_reduce(list = `ANY[]`, lambda = LAMBDA, initial_value = ANY) ``

## SQL examples

    list_reduce([1, 2, 3], lambda x, y : x + y)

## See also

Other lambda:
[`list_filter()`](https://cynkra.github.io/dd/reference/list_filter.md),
[`list_transform()`](https://cynkra.github.io/dd/reference/list_transform.md)

Other list:
[`array_extract()`](https://cynkra.github.io/dd/reference/array_extract.md),
[`array_length()`](https://cynkra.github.io/dd/reference/array_length.md),
[`concat()`](https://cynkra.github.io/dd/reference/concat.md),
[`contains()`](https://cynkra.github.io/dd/reference/contains.md),
[`flatten()`](https://cynkra.github.io/dd/reference/flatten.md),
[`generate_series()`](https://cynkra.github.io/dd/reference/generate_series.md),
[`len()`](https://cynkra.github.io/dd/reference/len.md),
[`list_aggregate()`](https://cynkra.github.io/dd/reference/list_aggregate.md),
[`list_concat()`](https://cynkra.github.io/dd/reference/list_concat.md),
[`list_contains()`](https://cynkra.github.io/dd/reference/list_contains.md),
[`list_cosine_distance()`](https://cynkra.github.io/dd/reference/list_cosine_distance.md),
[`list_cosine_similarity()`](https://cynkra.github.io/dd/reference/list_cosine_similarity.md),
[`list_distance()`](https://cynkra.github.io/dd/reference/list_distance.md),
[`list_distinct()`](https://cynkra.github.io/dd/reference/list_distinct.md),
[`list_extract()`](https://cynkra.github.io/dd/reference/list_extract.md),
[`list_filter()`](https://cynkra.github.io/dd/reference/list_filter.md),
[`list_grade_up()`](https://cynkra.github.io/dd/reference/list_grade_up.md),
[`list_has_all()`](https://cynkra.github.io/dd/reference/list_has_all.md),
[`list_has_any()`](https://cynkra.github.io/dd/reference/list_has_any.md),
[`list_inner_product()`](https://cynkra.github.io/dd/reference/list_inner_product.md),
[`list_intersect()`](https://cynkra.github.io/dd/reference/list_intersect.md),
[`list_negative_inner_product()`](https://cynkra.github.io/dd/reference/list_negative_inner_product.md),
[`list_position()`](https://cynkra.github.io/dd/reference/list_position.md),
[`list_resize()`](https://cynkra.github.io/dd/reference/list_resize.md),
[`list_reverse_sort()`](https://cynkra.github.io/dd/reference/list_reverse_sort.md),
[`list_select()`](https://cynkra.github.io/dd/reference/list_select.md),
[`list_slice()`](https://cynkra.github.io/dd/reference/list_slice.md),
[`list_sort()`](https://cynkra.github.io/dd/reference/list_sort.md),
[`list_transform()`](https://cynkra.github.io/dd/reference/list_transform.md),
[`list_unique()`](https://cynkra.github.io/dd/reference/list_unique.md),
[`list_value()`](https://cynkra.github.io/dd/reference/list_value.md),
[`list_where()`](https://cynkra.github.io/dd/reference/list_where.md),
[`list_zip()`](https://cynkra.github.io/dd/reference/list_zip.md),
`or–or`, [`range()`](https://cynkra.github.io/dd/reference/range.md),
[`repeat()`](https://cynkra.github.io/dd/reference/repeat.md),
[`unpivot_list()`](https://cynkra.github.io/dd/reference/unpivot_list.md)
