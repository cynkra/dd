# DuckDB function \|\|

Concatenates two strings, lists, or blobs. Any `NULL` input results in
`NULL`. See also `concat(arg1, arg2, ...)` and
`list_concat(list1, list2, ...)`.

## Usage

``` r
ANY || ANY
```

## Arguments

- arg1:

  `ANY`

- arg2:

  `ANY`

## Value

`ANY`

## SQL examples

    'Duck' || 'DB'
    [1, 2, 3] || [4, 5, 6]
    '\xAA'::BLOB || '\xBB'::BLOB
