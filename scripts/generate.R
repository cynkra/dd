withr::local_options(conflicts.policy = list(warn = FALSE))
library(dplyr)
library(tidyr)
library(purrr)
library(glue)

con <- DBI::dbConnect(duckdb::duckdb())

filter_print <- function(.data, expr) {
  quo <- rlang::enquo(expr)
  out <-
    .data |>
    dplyr::filter(!!quo)

  delta <- unique(setdiff(.data$function_name, out$function_name))

  cli::cli_inform(c(
    "{.expr {rlang::quo_text(quo)}}",
    i = "{nrow(.data)} -> {nrow(out)}",
    i = if (length(delta) > 0) "{delta}"
  ))

  out
}

browse_data <- function(x) {
  print(x)
  View(x)
  browser()
  x
}

param_type_tick_if_needed <- function(x) {
  if_else(is.na(x) | x == "", "", paste0(" = ", tibble:::tick_if_needed(x)))
}

# Build the `@usage` signature for a single overload, wrapping one argument per
# line when the one-line form would exceed the Rd 90-character usage width that
# R CMD check flags.
usage_signature <- function(function_name, parameters, parameter_types) {
  name <- tibble:::tick_if_needed(function_name)
  if (length(parameters) == 0) {
    return(paste0(name, "()"))
  }
  args <- paste0(
    tibble:::tick_if_needed(parameters),
    param_type_tick_if_needed(parameter_types)
  )
  one_line <- paste0(name, "(", paste0(args, collapse = ", "), ")")
  if (nchar(one_line) <= 90) {
    return(one_line)
  }
  paste0(
    name,
    "(\n",
    paste0("#'   ", args, collapse = ",\n"),
    "\n",
    "#' )"
  )
}

usage_and_params <- function(
  function_name,
  parameters,
  parameter_types,
  description,
  macro_definition,
  examples
) {
  if (length(parameters) == 1) {
    usage_doc <- glue(
      "#' @usage {usage_signature(function_name, parameters[[1]], parameter_types[[1]])}"
    )
  } else if (function_name == "%") {
    # FIXME: roxygen2 generates bad .Rd here
    usage_doc <- "#' @usage NULL\n"
  } else {
    signatures <- map2_chr(
      parameters,
      parameter_types,
      ~ {
        if (length(.x) == 0) {
          sig <- "" # No parameters
        } else {
          sig <- paste0(
            tibble:::tick_if_needed(.x),
            param_type_tick_if_needed(.y),
            collapse = ", "
          )
        }
        glue("{tibble:::tick_if_needed(function_name)}({sig})")
      }
    )
    usage_doc <- paste0(
      "#' @usage NULL\n",
      "#' @section Overloads:\n",
      "#' \\itemize{\n",
      paste0("#' \\item \\code{", signatures, "}\n", collapse = ""),
      "#' }"
    )
  }

  params <-
    tibble(name = unlist(parameters), type = unlist(parameter_types)) |>
    summarize(
      .by = name,
      type = paste0(na.omit(unique(type)), collapse = " | ")
    )

  param_doc <-
    params |>
    mutate(
      type = if_else(type == "", "Unspecified.", paste0("`", type, "`"))
    ) |>
    mutate(out = glue("#' @param {name} {type}")) |>
    pull() |>
    glue_collapse(sep = "\n")

  signature <- params |>
    mutate(
      out = glue(
        "{tibble:::tick_if_needed(name)}{param_type_tick_if_needed(type)}"
      )
    ) |>
    pull() |>
    glue_collapse(sep = ", ")

  is_macro <- length(macro_definition) == 1 && !is.na(macro_definition)
  description <- na.omit(description)
  if (length(description) == 0) {
    description <- paste0(
      "#' DuckDB ",
      if (is_macro) "macro" else "function",
      " `",
      function_name,
      "()`."
    )
  } else {
    description <- unique(description)
    description <- gsub("[.]*$", ".", description)
    description <- paste0("#' ", description, collapse = "\n#'\n")
  }

  examples <- na.omit(unique(unlist(examples)))
  examples <- examples[examples != ""]
  if (length(examples >= 0)) {
    examples <- paste0(
      "#' @section SQL examples:\n",
      "#' ```\n",
      paste0("#' ", examples, "\n", collapse = ""),
      "#' ```\n"
    )
  } else {
    examples <- ""
  }

  tibble(
    usage_doc,
    param_doc,
    signature,
    types = list(params$type),
    description,
    examples,
  )
}

rdize_function_name <- function(x) {
  x <- gsub("^!", "not-", x)
  x <- gsub("!", "-not-", x)
  x <- gsub("^[|]", "or-", x)
  x <- gsub("[|]$", "-or", x)
  x <- gsub("[|]", "-or-", x)
  x <- gsub("^[@]", "at-", x)
  x <- gsub("[@]$", "-at", x)
  x <- gsub("[@]", "-at-", x)
  x
}

is_alnum <- function(x) grepl("^[A-Za-z0-9_]+$", x)

# Pick the representative function for an alias group. DuckDB reports aliases via
# the `alias_of` column, so a group is the canonical function plus everything
# pointing at it. We document the group on a single page named after a short,
# alphanumeric member: the canonical itself when it is alphanumeric and present,
# otherwise the shortest alphanumeric alias (alphabetical tie-break). This keeps
# the .Rd file name readable even when the canonical is an operator (e.g. `**`).
pick_rep <- function(names, canonical) {
  alnum <- names[is_alnum(names)]
  if (canonical %in% alnum) {
    return(canonical)
  }
  if (length(alnum) > 0) {
    return(alnum[order(nchar(alnum), alnum)][[1]])
  }
  if (canonical %in% names) {
    return(canonical)
  }
  names[order(nchar(names), names)][[1]]
}

funs <-
  DBI::dbGetQuery(con, "FROM duckdb_functions()") |>
  as_tibble() |>
  select(
    -database_name,
    -database_oid,
    -schema_name,
    -function_oid,
    -comment,
    -tags
  ) |>
  # FIXME: Understand meaning of `varargs`
  # FIXME: Why is this called `has_side_effects`? Called "deterministic" elsewhere.
  filter_print(internal) |>
  select(-internal) |>
  summarize(
    .by = function_name,
    alias_of = unique(alias_of),
    return_type = paste0(unique(na.omit(return_type)), collapse = " | "),
    usage_and_params(
      first(function_name),
      parameters,
      parameter_types,
      description,
      macro_definition,
      examples
    ),
    categories = list(unique(unlist(categories))),
  ) |>
  # https://github.com/duckdb/duckdb/pull/18977
  mutate(
    examples = gsub(
      r"(variant_typeof\(\{'a': 42, 'b': \[1,2,3\]\)::VARIANT\))",
      "variant_typeof({'a': 42, 'b': [1,2,3]})::VARIANT)",
      examples
    )
  ) |>
  # FIXME: Irregular
  filter_print(!(function_name %in% c("struct_extract_at"))) |>
  # FIXME: Example too long
  filter_print(!(function_name %in% c("remap_struct"))) |>
  # FIXME: Usage too long
  filter_print(!(function_name %in% c("sniff_csv", "enable_logging"))) |>
  # FIXME: Breaks devtools::document()
  filter_print(!(function_name %in% c("length"))) |>
  # FIXME: Breaks R CMD check
  filter_print(!(function_name %in% c("<->", "+", "format"))) |>
  # FIXME: No documentation generated yet
  filter_print(
    !(function_name %in% c("-")) &
      !stringr::str_detect(function_name, "^__internal")
  ) |>
  arrange(function_name) |>
  # Resolve alias groups from the catalog's `alias_of` column and route every
  # member to one canonical page, so e.g. `list_aggr` and `list_aggregate` no
  # longer produce two separate .Rd files.
  mutate(canonical = coalesce(alias_of, function_name)) |>
  mutate(.by = canonical, rep_name = pick_rep(function_name, canonical[[1]])) |>
  mutate(
    rd_name = rdize_function_name(rep_name),
    is_primary = function_name == rep_name
  ) |>
  # Emit each group's primary block first so roxygen2 derives the topic `\name`
  # from the canonical (alphanumeric) member rather than an operator alias.
  arrange(rd_name, desc(is_primary), function_name)

code <-
  funs |>
  mutate(
    # The primary (representative) function carries the full documentation and
    # owns the canonical page via `@name`.
    primary_roxy = glue(
      r"(
    #' DuckDB function {function_name}
    #'
    #' @description
    {description}
    #'
    #' @name {rd_name}
    {usage_doc}
    {param_doc}
    #' @return {if_else(return_type == "", "Unspecified.", paste0("`", return_type, "`"))}
    #' @export
    {examples}{tibble:::tick_if_needed(function_name)} <- function({signature}) {{
      stop("DuckDB function {function_name}() is not available in R.")
    }}

    )"
    ),
    # Alias functions reuse the canonical page via `@rdname`; roxygen2 adds the
    # `\alias{{}}` so `?{function_name}` resolves there. `@usage NULL` keeps the
    # page's usage to the canonical signature.
    alias_roxy = glue(
      r"(
    #' @rdname {rd_name}
    #' @usage NULL
    #' @export
    {tibble:::tick_if_needed(function_name)} <- function({signature}) {{
      stop("DuckDB function {function_name}() is not available in R.")
    }}

    )"
    ),
    roxy = if_else(is_primary, primary_roxy, alias_roxy)
  ) |>
  pull(roxy)

parsed <- map_lgl(
  code,
  ~ tryCatch(
    {
      parse(text = .x)
      TRUE
    },
    error = function(e) FALSE
  )
)

if (!all(parsed)) {
  message("Couldn't parse ", sum(!parsed), " functions.")
  print(code[!parsed])
}

code <- c(
  "# Generated by do_update_duckdb_funs(), do not edit by hand",
  "",
  code[parsed]
)

writeLines(code, "R/duckdb-funs.R")

dd_code <- glue(
  r"(
  #' DuckDB functions
  #'
  #' A list of known DuckDB functions.
  #'
  #' @export
  #' @examples
  #' dd[1:3]
  dd <- base::list(
  {paste0("  ", tibble:::tick_if_needed(funs$function_name[parsed]), " = ", tibble:::tick_if_needed(funs$function_name[parsed]), collapse = ",\n")}
  )
  )"
)

invisible(parse(text = dd_code))

writeLines(dd_code, "R/zzz-dd.R")

globals <-
  funs$types |>
  unlist() |>
  unique() |>
  sort()

globals_code <- paste0(
  'utils::globalVariables("',
  gsub('"', '\\\\"', globals),
  '")'
)

invisible(parse(text = globals_code))

writeLines(globals_code, "R/globals.R")

callr::r(function() devtools::document())

Sys.setenv(http_proxy = "0.0.0.0")
Sys.setenv(https_proxy = "0.0.0.0")
rcmdcheck::rcmdcheck(args = c("--no-manual", "--as-cran"))
