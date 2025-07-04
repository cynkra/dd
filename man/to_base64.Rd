% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/duckdb-funs.R
\name{to_base64}
\alias{to_base64}
\title{DuckDB function to_base64}
\arguments{
\item{blob}{\code{BLOB}}
}
\description{
Converts a \code{blob} to a base64 encoded \code{string}.
}
\examples{
\dontrun{
base64('A'::BLOB)
}
}
