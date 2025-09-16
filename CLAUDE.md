# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is an R package called `dd` that provides documentation for all DuckDB functions and makes them available in R's help system. The package generates R function stubs for every DuckDB function to enable `help()` documentation access while preventing actual execution in R.

## Development Commands

### Core Development Workflow

- **Generate package functions**: `Rscript scripts/generate.R` - This is the main development command that:
  - Connects to DuckDB and queries all available functions
  - Generates R documentation and function stubs
  - Updates `R/duckdb-funs.R`, `R/zzz-dd.R`, and `R/globals.R`
  - Runs `devtools::document()` to update documentation
  - Runs `rcmdcheck::rcmdcheck()` for package validation

### Documentation and Checks

- **Document package**: `devtools::document()`
- **Check package**: `rcmdcheck::rcmdcheck(args = "--no-manual")`
- **Install locally**: `R CMD INSTALL .`

## Architecture

### Code Generation System

The package uses a sophisticated code generation system in `scripts/generate.R`:

1. **Function Discovery**: Queries DuckDB's `duckdb_functions()` table to get all available functions
2. **Documentation Generation**: Creates roxygen2 documentation for each function including:
   - Function signatures with parameter types
   - Return types
   - SQL examples where available
   - Overload handling for functions with multiple signatures
3. **Stub Generation**: Creates R function stubs that throw informative errors when called

### Key Generated Files

- `R/duckdb-funs.R`: Contains all DuckDB function stubs with full documentation (450KB+)
- `R/zzz-dd.R`: Creates the `dd` list object containing all functions
- `R/globals.R`: Handles global variable declarations for R CMD check

### File Structure

- `R/dd-package.R`: Standard package documentation file
- `scripts/generate.R`: Main code generation script
- `man/`: Generated documentation files (600+ help files)
- `.github/workflows/`: Comprehensive CI/CD setup with R CMD check

## Important Notes

- The main development workflow centers around `scripts/generate.R` - this script should be run after any changes to the generation logic
- Generated files should not be edited manually as they will be overwritten
- The package includes extensive filtering logic for problematic DuckDB functions that break R documentation or checks
- CI runs comprehensive checks across multiple R versions and dependency configurations
