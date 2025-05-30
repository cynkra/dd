% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/duckdb-funs.R
\name{list_apply}
\alias{list_apply}
\title{DuckDB function list_apply}
\arguments{
\item{list}{\code{ANY[]}}

\item{lambda}{\code{LAMBDA}}
}
\description{
Returns a list that is the result of applying the lambda function to each element of the input list. See the Lambda Functions section for more details.
}
\examples{
\dontrun{
list_transform([1, 2, 3], x -> x + 1)
}
}
