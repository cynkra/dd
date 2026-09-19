library(testthat)

# `library(dd)` is deliberately absent here. Attaching dd masks 73 names from
# the standard packages, and `test_check()` runs each test in an environment
# that inherits from dd's namespace anyway.
test_check("dd")
