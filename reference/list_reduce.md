# DuckDB function list_reduce

Reduces all elements of the input `list` into a single scalar value by
executing the `lambda` function on a running result and the next list
element. The `lambda` function has an optional `initial_value` argument.

## Arguments

- list:

  `ANY[]`

- initial_value:

  `ANY`

- lambda(x, y):

  `LAMBDA`

## Value

`ANY`

## Overloads

- `` list_reduce(list = `ANY[]`, `lambda(x,y)` = LAMBDA) ``

- `` list_reduce(list = `ANY[]`, `lambda(x,y)` = LAMBDA, initial_value = ANY) ``

## SQL examples

    list_reduce([1, 2, 3], lambda x, y : x + y)
