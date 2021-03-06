% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/huxtable.R
\name{huxtable}
\alias{huxtable}
\alias{hux}
\alias{as_huxtable}
\alias{as_hux}
\alias{as_huxtable.default}
\alias{is_huxtable}
\alias{is_hux}
\title{Create a huxtable}
\usage{
huxtable(..., add_colnames = FALSE, add_rownames = FALSE)

hux(..., add_colnames = FALSE, add_rownames = FALSE)

as_huxtable(x, ...)

as_hux(x, ...)

\method{as_huxtable}{default}(x, add_colnames = FALSE, add_rownames = FALSE,
  ...)

is_huxtable(x)

is_hux(x)
}
\arguments{
\item{...}{Named list of values, as for \code{\link{data.frame}}.}

\item{add_colnames}{If \code{TRUE}, add a first row of column names to the huxtable.}

\item{add_rownames}{If \code{TRUE}, add a first column of row names, named 'rownames', to the huxtable.}

\item{x}{An object to convert to a huxtable.}
}
\value{
An object of class \code{huxtable}.
}
\description{
\code{huxtable}, or \code{hux}, creates a huxtable object.
}
\details{
\code{as_huxtable} and \code{as_hux} convert an object to a huxtable.
Conversion methods exist for data frames, tables, ftables, matrices and (most) vectors.
}
\examples{
ht <- huxtable(column1 = 1:5, column2 = letters[1:5])
dfr <- data.frame(a = 1:5, b = letters[1:5], stringsAsFactors = FALSE)
as_huxtable(dfr)

}
