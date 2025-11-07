# DuckDB function regexp_extract

If `string` contains the `regex` pattern, returns the capturing group
specified by optional parameter `group`; otherwise, returns the empty
string. The `group` must be a constant value. If no `group` is given, it
defaults to 0. A set of optional regex `options` can be set.

If `string` contains the `regex` pattern, returns the capturing groups
as a struct with corresponding names from `name_list`; otherwise,
returns a struct with the same keys and empty strings as values. A set
of optional regex `options` can be set.

## Arguments

- string:

  `VARCHAR`

- regex:

  `VARCHAR`

- group:

  `INTEGER`

- options:

  `VARCHAR`

- name_list:

  `VARCHAR[]`

## Value

`VARCHAR`

## Overloads

- `regexp_extract(string = VARCHAR, regex = VARCHAR)`

- `regexp_extract(string = VARCHAR, regex = VARCHAR, group = INTEGER)`

- `regexp_extract(string = VARCHAR, regex = VARCHAR, group = INTEGER, options = VARCHAR)`

- `` regexp_extract(string = VARCHAR, regex = VARCHAR, name_list = `VARCHAR[]`) ``

- `` regexp_extract(string = VARCHAR, regex = VARCHAR, name_list = `VARCHAR[]`, options = VARCHAR) ``

## SQL examples

    regexp_extract('abcde', '[a-z]{3}')
    regexp_extract('abc', '([a-z])(b)', 1)
    regexp_extract('ABC', '([a-z])(b)', 1, 'i')
    regexp_extract('2023-04-15', '(\d+)-(\d+)-(\d+)', ['y', 'm', 'd'])
    regexp_extract('John Doe', '([a-z]+) ([a-z]+)', ['first_name', 'last_name'], 'i')
