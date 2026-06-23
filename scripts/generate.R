withr::local_options(conflicts.policy = list(warn = FALSE))
library(dplyr)
library(tidyr)
library(purrr)
library(glue)

# How much of the metadata from DuckDB's source `functions.json` files to merge
# into the generated documentation. The `duckdb_functions()` catalog already
# exposes descriptions, examples, parameters and categories for many functions,
# but leaves some empty (notably function *sets* defined via `variants`, such as
# `array_extract`, and the arithmetic/bitwise operators). The JSON files in the
# DuckDB sources fill those gaps and additionally provide category groupings and
# alias lists. Flip this switch to control the behaviour:
#   "full" : fill gaps in description/examples/categories from the JSON *and*
#            tag each function with its categories via roxygen2 `@family`
#            (which generates `\concept{}` entries and "See also" links).
#   "gaps" : only fill description/examples/categories where the catalog is
#            empty; do not emit the `@family` tags.
#   "off"  : ignore the JSON files entirely (previous behaviour).
# The JSON alias lists feed the alias grouping below regardless of this switch,
# so roxygen2 records aliases as `\alias{}` entries on the canonical page.
json_merge_mode <- "full"

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
  examples,
  json_description = NULL,
  json_examples = NULL,
  json_categories = NULL,
  json_variant_desc = NULL,
  merge_mode = "off"
) {
  param_keys <- map_chr(parameters, ~ paste(.x, collapse = ","))
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

  # Match each overload's description to its signature. The catalog pairs them
  # row by row; where its description is missing, fall back to the JSON variant
  # with the same parameter names.
  sig_desc <- description
  if (merge_mode != "off" && length(json_variant_desc) > 0) {
    gap <- is.na(sig_desc) & param_keys %in% names(json_variant_desc)
    sig_desc[gap] <- unname(json_variant_desc[param_keys[gap]])
  }

  # DuckDB registers some functions under several `function_type`s (e.g. both a
  # table function and a pragma) with identical parameters, yielding duplicate
  # overloads. Keep each distinct signature once.
  dedup <- !duplicated(signatures)

  if (sum(dedup) == 1) {
    idx <- which(dedup)
    usage_doc <- glue(
      "#' @usage {usage_signature(function_name, parameters[[idx]], parameter_types[[idx]])}"
    )
  } else if (function_name == "%") {
    # FIXME: roxygen2 generates bad .Rd here
    usage_doc <- "#' @usage NULL\n"
  } else {
    # One itemize entry per distinct signature, annotated with the description
    # that applies to it when known.
    overloads <-
      tibble(sig = signatures, desc = sig_desc) |>
      summarize(
        .by = sig,
        desc = {
          d <- unique(na.omit(desc))
          if (length(d) > 0) {
            paste(gsub("[.]*$", ".", d), collapse = " ")
          } else {
            NA_character_
          }
        }
      )
    items <- if_else(
      is.na(overloads$desc),
      paste0("#' \\item \\code{", overloads$sig, "}\n"),
      paste0("#' \\item \\code{", overloads$sig, "}: ", overloads$desc, "\n")
    )
    usage_doc <- paste0(
      "#' @usage NULL\n",
      "#' @section Overloads:\n",
      "#' \\itemize{\n",
      paste0(items, collapse = ""),
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
  # Fill gaps: add any descriptions/examples present in the JSON but not in the
  # catalog. The catalog is generated from these same JSON files, so this is
  # usually a no-op; it recovers per-overload descriptions the catalog drops
  # (e.g. the list variant of `array_extract`, `contains`, `repeat`).
  description <- unique(na.omit(description))
  if (merge_mode != "off") {
    description <- unique(c(description, na.omit(json_description)))
  }
  if (length(description) == 0) {
    description <- paste0(
      "#' DuckDB ",
      if (is_macro) "macro" else "function",
      " `",
      function_name,
      "()`."
    )
  } else {
    description <- gsub("[.]*$", ".", description)
    description <- paste0("#' ", description, collapse = "\n#'\n")
  }

  examples <- na.omit(unique(unlist(examples)))
  examples <- examples[examples != ""]
  if (merge_mode != "off") {
    json_ex <- na.omit(unique(unlist(json_examples)))
    examples <- unique(c(examples, json_ex[json_ex != ""]))
  }
  if (length(examples) > 0) {
    examples <- paste0(
      "#' @section SQL examples:\n",
      "#' ```\n",
      paste0("#' ", examples, "\n", collapse = ""),
      "#' ```\n"
    )
  } else {
    examples <- ""
  }

  # In "full" mode, expose the JSON category groupings as roxygen2 `@family`
  # tags. roxygen2 turns each family into a `\concept{}` entry *and* an
  # auto-generated "See also" list linking the other functions in the category,
  # which a home-grown section cannot do.
  family_doc <- ""
  if (merge_mode == "full") {
    cats <- sort(unique(unlist(json_categories)))
    cats <- cats[!is.na(cats) & cats != ""]
    if (length(cats) > 0) {
      family_doc <- paste0("#' @family ", cats, "\n", collapse = "")
    }
  }

  tibble(
    usage_doc,
    param_doc,
    signature,
    types = list(params$type),
    description,
    examples,
    family_doc,
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

# Download the DuckDB sources for the *exact* engine version that is running and
# extract every `functions.json` file from them. Pinning to `library_version`
# (the DuckDB git tag, e.g. "v1.5.4") guarantees the JSON matches the catalog we
# query above. The location of these files moves between releases (e.g.
# `src/core_functions/` became `extension/core_functions/`), so we discover them
# dynamically rather than hard-coding paths.
duckdb_json_files <- function(ref) {
  cache <- file.path(
    tempdir(),
    paste0("duckdb-json-", gsub("[^A-Za-z0-9._-]", "_", ref))
  )
  marker <- file.path(cache, ".extracted")
  if (!file.exists(marker)) {
    dir.create(cache, recursive = TRUE, showWarnings = FALSE)
    url <- paste0("https://codeload.github.com/duckdb/duckdb/tar.gz/", ref)
    tarball <- tempfile(fileext = ".tar.gz")
    cli::cli_inform(
      "Downloading DuckDB {.val {ref}} sources to extract {.file functions.json}."
    )
    utils::download.file(url, tarball, mode = "wb", quiet = TRUE)
    json_paths <- grep(
      "/functions\\.json$",
      utils::untar(tarball, list = TRUE),
      value = TRUE
    )
    utils::untar(tarball, files = json_paths, exdir = cache)
    unlink(tarball)
    file.create(marker)
  }
  list.files(
    cache,
    pattern = "functions\\.json$",
    recursive = TRUE,
    full.names = TRUE
  )
}

# Flatten one JSON entry into one row per overload/variant. `parameters` may be a
# comma-separated string or, inside `variants`, an array of `{name, type}`.
parse_json_entry <- function(entry) {
  blank_to_na <- function(x) {
    if (is.null(x) || length(x) == 0 || identical(x, "")) NA_character_ else x
  }
  aliases <- if (length(entry$aliases) > 0) {
    unlist(entry$aliases)
  } else {
    character(0)
  }
  one_variant <- function(v) {
    params <- v$parameters
    param_names <- if (is.character(params)) {
      blank_to_na(params)
    } else if (length(params) > 0) {
      paste(map_chr(params, ~ .x$name %||% ""), collapse = ",")
    } else {
      NA_character_
    }
    examples <- if (length(v$examples) > 0) {
      unlist(v$examples)
    } else if (length(v$example) > 0) {
      v$example
    } else {
      character(0)
    }
    examples <- examples[!is.na(examples) & examples != ""]
    tibble(
      function_name = entry$name,
      parameters = param_names,
      description = blank_to_na(v$description),
      examples = list(examples),
      categories = list(
        if (length(v$categories) > 0) unlist(v$categories) else character(0)
      ),
      aliases = list(aliases)
    )
  }
  if (length(entry$variants) > 0) {
    map_dfr(entry$variants, one_variant)
  } else {
    one_variant(entry)
  }
}

# Summarise the JSON metadata for the running engine. Returns:
#   `meta`  - one row per function name (and per alias, so catalog entries that
#             are themselves aliases pick up their canonical's metadata).
#   `edges` - alias -> canonical relationships declared in the JSON, used below
#             to extend the catalog's alias grouping.
build_json_meta <- function(ref) {
  json_long <-
    duckdb_json_files(ref) |>
    map(~ jsonlite::fromJSON(.x, simplifyVector = FALSE)) |>
    map_dfr(~ map_dfr(.x, parse_json_entry))

  meta <-
    json_long |>
    summarize(
      .by = function_name,
      json_description = list(unique(na.omit(description))),
      json_examples = list(unique(unlist(examples))),
      json_categories = list(sort(unique(unlist(categories)))),
      json_aliases = list(sort(unique(unlist(aliases)))),
    )

  # Per-variant description keyed by parameter names ("a,b"), so a signature
  # whose catalog description is missing can recover it (see usage_and_params).
  variant_desc <-
    json_long |>
    filter(!is.na(parameters), !is.na(description)) |>
    distinct(function_name, parameters, description) |>
    summarize(
      .by = function_name,
      json_variant_desc = list(setNames(description, parameters))
    )
  meta <- meta |> left_join(variant_desc, by = "function_name")

  edges <-
    meta |>
    select(to = function_name, json_aliases) |>
    tidyr::unnest_longer(json_aliases) |>
    filter(!is.na(json_aliases), json_aliases != "") |>
    transmute(from = json_aliases, to) |>
    distinct()

  alias_meta <-
    edges |>
    rename(function_name = from, canonical = to) |>
    distinct(function_name, .keep_all = TRUE) |>
    left_join(meta, by = c("canonical" = "function_name")) |>
    select(-canonical)

  meta <-
    bind_rows(meta, alias_meta) |>
    distinct(function_name, .keep_all = TRUE)

  list(meta = meta, edges = edges)
}

if (json_merge_mode == "off") {
  json_meta <- tibble(
    function_name = character(),
    json_description = list(),
    json_examples = list(),
    json_categories = list(),
    json_aliases = list(),
    json_variant_desc = list(),
  )
  json_alias_edges <- tibble(from = character(), to = character())
} else {
  json_bits <- build_json_meta(
    DBI::dbGetQuery(con, "PRAGMA version")$library_version
  )
  json_meta <- json_bits$meta
  json_alias_edges <- json_bits$edges
}

# Group function names into alias equivalence classes by union-find over the
# (alias -> canonical) edges. The catalog's `alias_of` column and the DuckDB
# source JSON each contribute edges; the JSON catches relationships the catalog
# omits (e.g. `datetrunc` -> `date_trunc`).
alias_components <- function(nodes, from, to) {
  parent <- new.env(parent = emptyenv())
  for (n in nodes) {
    assign(n, n, envir = parent)
  }
  find <- function(x) {
    root <- x
    while (!identical(get(root, envir = parent), root)) {
      root <- get(root, envir = parent)
    }
    while (!identical(x, root)) {
      nxt <- get(x, envir = parent)
      assign(x, root, envir = parent)
      x <- nxt
    }
    root
  }
  for (i in seq_along(from)) {
    ra <- find(from[[i]])
    rb <- find(to[[i]])
    if (!identical(ra, rb)) {
      assign(ra, rb, envir = parent)
    }
  }
  vapply(nodes, find, character(1))
}

# Canonical member of an alias group: the unique "sink" that is never an alias
# of another member. Falls back to the shortest alphanumeric name when the
# edges leave it ambiguous (no sink, e.g. a cycle, or several).
pick_canonical <- function(names, froms) {
  sinks <- names[!(names %in% froms)]
  if (length(sinks) == 1) {
    return(sinks)
  }
  candidates <- if (length(sinks) > 0) sinks else names
  alnum <- candidates[is_alnum(candidates)]
  if (length(alnum) > 0) {
    return(alnum[order(nchar(alnum), alnum)][[1]])
  }
  candidates[order(nchar(candidates), candidates)][[1]]
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
  left_join(json_meta, by = "function_name") |>
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
      examples,
      json_description = first(json_description),
      json_examples = first(json_examples),
      json_categories = first(json_categories),
      json_variant_desc = first(json_variant_desc),
      merge_mode = json_merge_mode
    ),
    categories = list(sort(unique(c(
      unlist(categories),
      unlist(first(json_categories))
    )))),
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
  arrange(function_name)

# Resolve alias groups from the catalog's `alias_of` column *and* the DuckDB
# source JSON, then route every member to one canonical page, so e.g.
# `list_aggr`/`list_aggregate` and `datetrunc`/`date_trunc` no longer produce
# separate .Rd files.
alias_edges <-
  bind_rows(
    funs |>
      filter(!is.na(alias_of)) |>
      transmute(from = function_name, to = alias_of),
    json_alias_edges
  ) |>
  # The alias being documented must be a function we still emit, but its
  # canonical may have been filtered out above (e.g. `length`). Keep those
  # edges so its surviving aliases (`len`, `char_length`, ...) still share one
  # page instead of splitting into singletons.
  filter(from %in% funs$function_name, from != to) |>
  distinct()

nodes <- unique(c(funs$function_name, alias_edges$to))
group_of <- alias_components(nodes, alias_edges$from, alias_edges$to)
edge_froms <- unique(alias_edges$from)

funs <-
  funs |>
  mutate(group_id = group_of[function_name]) |>
  mutate(
    .by = group_id,
    canonical = pick_canonical(function_name, edge_froms)
  ) |>
  mutate(.by = group_id, rep_name = pick_rep(function_name, canonical[[1]])) |>
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
    {family_doc}{examples}{tibble:::tick_if_needed(function_name)} <- function({signature}) {{
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

dd_names <- sort(funs$function_name[parsed], method = "radix")

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
  {paste0("  ", tibble:::tick_if_needed(dd_names), " = ", tibble:::tick_if_needed(dd_names), collapse = ",\n")}
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
