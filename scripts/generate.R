rlang::local_options(conflicts.policy = list(warn = FALSE))
library(dplyr)
library(tidyr)
library(purrr)
library(glue)
library(conflicted)
conflicts_prefer(dplyr::filter)

con <- DBI::dbConnect(duckdb::duckdb())

filter_print <- function(.data, expr) {
  quo <- rlang::enquo(expr)
  out <-
    .data |>
    filter(!!quo)

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
  x[x != ""] <- paste0(" = ", tibble:::tick_if_needed(x[x != ""]))
  x
}

usage_and_params <- function(function_name, parameters, parameter_types, description, macro_definition, examples) {
  if (length(parameters) == 1) {
    if (length(parameters[[1]]) == 0) {
      usage_signature <- "" # No parameters
    } else if (!is.na(macro_definition)) {
      usage_signature <- paste0(tibble:::tick_if_needed(parameters[[1]]), collapse = ", ")
    } else {
      usage_signature <- paste0(tibble:::tick_if_needed(parameters[[1]]), " = ", tibble:::tick_if_needed(parameter_types[[1]]), collapse = ", ")
    }
    usage_doc <- glue("#' @usage {tibble:::tick_if_needed(function_name)}({usage_signature})")
  } else {
    usage_doc <- "#' @usage NULL"
  }

  params <-
    tibble(name = unlist(parameters), type = unlist(parameter_types)) |>
    summarize(.by = name, type = paste0(na.omit(unique(type)), collapse = " | "))

  param_doc <-
    params |>
    mutate(type = if_else(type == "", "Unspecified.", paste0("`", type, "`"))) |>
    mutate(out = glue("#' @param {name} {type}")) |>
    pull() |>
    glue_collapse(sep = "\n")

  is_macro <- length(macro_definition) == 1 && !is.na(macro_definition)
  if (is_macro) {
    signature <- usage_signature
  } else {
    signature <- params |>
      mutate(out = glue("{tibble:::tick_if_needed(name)}{param_type_tick_if_needed(type)}")) |>
      pull() |>
      glue_collapse(sep = ", ")
  }

  description <- na.omit(description)
  if (length(description) == 0) {
    description <- paste0("#' DuckDB ", if (is_macro) "macro" else "function", " `", function_name, "()`.")
  } else {
    description <- unique(description)
    description <- gsub("[.]*$", ".", description)
    description <- paste0("#' ", description, collapse = "\n#'\n")
  }

  examples <- na.omit(unique(unlist(examples)))
  examples <- examples[examples != ""]
  if (length(examples >= 0)) {
    examples <- paste0(
      "#' @examples\n",
      "#' \\dontrun{\n",
      paste0("#' ", examples, "\n", collapse = ""),
      "#' }\n"
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

funs <-
  DBI::dbGetQuery(con, "FROM duckdb_functions()") |>
  as_tibble() |>
  select(-database_name, -database_oid, -schema_name, -function_oid, -comment, -tags) |>
  # FIXME: Understand meaning of `varargs`
  # FIXME: Why is this called `has_side_effects`? Called "deterministic" elsewhere.
  filter_print(internal) |>
  select(-internal) |>
  summarize(
    .by = function_name,
    alias_of = unique(alias_of),
    return_type = paste0(unique(na.omit(return_type)), collapse = " | "),
    usage_and_params(first(function_name), parameters, parameter_types, description, macro_definition, examples),
    categories = list(unique(unlist(categories))),
  ) |>
  # https://github.com/duckdb/duckdb/pull/18977
  mutate(examples = gsub(r"(^variant_typeof\(\{'a': 42, 'b': \[1,2,3\]\)::VARIANT\)$)", "variant_typeof({'a': 42, 'b': [1,2,3]})", examples)) |>
  # FIXME: Irregular
  filter_print(!(function_name %in% c("struct_extract_at"))) |>
  # FIXME: Example too long
  filter_print(!(function_name %in% c("remap_struct"))) |>
  # FIXME: Breaks devtools::document()
  filter_print(!(function_name %in% c("length"))) |>
  # FIXME: Breaks R CMD check
  filter_print(!(function_name %in% c("<->"))) |>
  arrange(function_name)

code <-
  funs |>
  mutate(roxy = glue(r"(
    #' DuckDB function {function_name}
    #'
    #' @description
    {description}
    #'
    #' @name {rdize_function_name(function_name)}
    {usage_doc}
    {param_doc}
    #' @return {if_else(return_type == "", "Unspecified.", paste0("`", return_type, "`"))}
    {examples}{tibble:::tick_if_needed(function_name)} <- function({signature}) {{
      stop("DuckDB function {function_name}() is not available in R.")
    }}

    )")) |>
  pull()

parsed <- map_lgl(code, ~ tryCatch(
  {
    parse(text = .x)
    TRUE
  },
  error = function(e) FALSE
))

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

dd_code <- glue(r"(
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
  )")

invisible(parse(text = dd_code))

writeLines(dd_code, "R/zzz-dd.R")

globals <-
  funs$types |>
  unlist() |>
  unique() |>
  sort()

globals_code <- paste0('utils::globalVariables("', gsub('"', '\\\\"', globals), '")')

invisible(parse(text = globals_code))

writeLines(globals_code, "R/globals.R")

callr::r(function() devtools::document())

Sys.setenv(http_proxy = "0.0.0.0")
Sys.setenv(https_proxy = "0.0.0.0")
rcmdcheck::rcmdcheck(args = "--no-manual")
