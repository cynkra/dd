test_that("attaching every namespace object leaves ordinary R code working", {
  # `pkgload::load_all()` defaults to `export_all = TRUE` and copies every
  # object in the namespace onto the search path, `NAMESPACE` or no
  # `NAMESPACE`. roxygen2 and pkgdown both load dd that way, and the code they
  # evaluate afterwards is ordinary R code. Recreate that attachment.
  ns <- asNamespace("dd")
  attached <- attach(NULL, name = "test:dd-export-all", warn.conflicts = FALSE)
  on.exit(detach("test:dd-export-all"), add = TRUE)
  for (name in ls(ns, all.names = TRUE)) {
    assign(name, get(name, envir = ns), envir = attached)
  }

  # The global environment's parent is the search path, so this is where a
  # tool's own top-level code looks a name up.
  top_level <- function(text) eval(parse(text = text), globalenv())

  expect_equal(top_level("length(character())"), 0L)
  expect_equal(top_level("format(1)"), "1")
  expect_equal(top_level("1 + 1"), 2)
  expect_equal(top_level("2 - 1"), 1)
})

test_that("the `no_bind` names are documented and listed but never bound", {
  # `no_bind` in `scripts/generate.R`: the stub is bound as `.dd.<name>`, so no
  # loader can put the documented name on the search path.
  no_bind <- c("format", "+", "-", "length")
  ns <- asNamespace("dd")

  bound <- Filter(
    function(name) exists(name, envir = ns, inherits = FALSE),
    no_bind
  )
  expect_equal(bound, character())

  for (name in no_bind) {
    expect_type(dd[[name]], "closure")
    expect_error(
      dd[[name]](),
      paste0("DuckDB function ", name, "() is not available in R."),
      fixed = TRUE
    )
  }
})
