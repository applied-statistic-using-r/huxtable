% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/attributes.R
\name{pad_decimal}
\alias{pad_decimal}
\alias{pad_decimal<-}
\alias{set_pad_decimal}
\alias{pad_decimal.huxtable}
\alias{pad_decimal<-.huxtable}
\title{Decimal padding}
\usage{
pad_decimal(ht)
pad_decimal(ht) <- value
set_pad_decimal(ht, row, col, value, byrow = FALSE)
}
\arguments{
\item{ht}{A huxtable.}

\item{value}{A vector of single characters. \code{NA} is the default of no padding. Set to \code{NA} to reset to the default.}

\item{row}{A row specifier. See \code{\link{rowspecs}} for details.}

\item{col}{An optional column specifier.}

\item{byrow}{If \code{TRUE}, fill in values by row rather than by column.}
}
\value{
For \code{pad_decimal}, the \code{pad_decimal} attribute.
For \code{set_pad_decimal}, the \code{ht} object.
}
\description{
Functions to get or set the decimal padding property of huxtable table cells.
}
\details{
LaTeX and HTML both have no simple way to align columns on decimal points, especially when cells
may contain non-mathematical content like significance stars. To right-pad cells
in a column to align on the rightmost decimal point, set \code{pad_decimal} to '.' or whatever decimal
you prefer to use.
}
\examples{
vals <- c(1.00035, 22, "2.34 *", "(11.5 - 22.3)", "Do not pad this row.")
ht <- hux(NotPadded = vals, Padded = vals)
number_format(ht)       <- '\%2.6g'
align(ht)[1:5,]         <- 'right'
pad_decimal(ht)[1:4, 2] <- '.'
ht

ht <- huxtable(a = 1:3, b = 3:1)
ht2 <- set_pad_decimal(ht, '.')
pad_decimal(ht2)
ht3 <- set_pad_decimal(ht, 1:2, 1, '.')
pad_decimal(ht3)
ht4 <- set_pad_decimal(ht, 1:2, 1:2, c('.', NA), byrow = TRUE)
pad_decimal(ht4)
ht5 <- set_pad_decimal(ht, where(ht == 1), '.')
pad_decimal(ht5)
}
