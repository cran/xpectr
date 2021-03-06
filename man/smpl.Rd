% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sample.R
\name{smpl}
\alias{smpl}
\title{Random sampling}
\usage{
smpl(data, n, keep_order = TRUE, seed = 42)
}
\arguments{
\item{data}{\code{vector} or \code{data.frame}. (Logical)}

\item{n}{Number of elements/rows to sample.

\strong{N.B.} No replacement is used, why \code{n >} the number of elements/rows in \code{`data`} won't
perform oversampling.}

\item{keep_order}{Whether to keep the order of the elements. (Logical)}

\item{seed}{\code{seed} to use.

The \code{seed} is set with \code{sample.kind = "Rounding"}
for compatibility with \code{R} versions \code{< 3.6.0}.}
}
\value{
When \code{`data`} has \code{<=`n`} elements, \code{`data`} is returned.
Otherwise, \code{`data`} is sampled and returned.
}
\description{
\Sexpr[results=rd, stage=render]{lifecycle::badge("experimental")}

Samples a \code{vector}, \code{factor} or \code{data.frame}. Useful to reduce size of testthat \code{expect_*} tests.
Not intended for other purposes.

Wraps \code{\link[base:sample]{sample.int()}}. \code{data.frame}s are sampled row-wise.

The \code{seed} is set within the function with \code{sample.kind} as \code{"Rounding"}
for compatibility with \code{R} versions \code{< 3.6.0}. On exit, the random state is restored.
}
\examples{
# Attach packages
library(xpectr)

smpl(c(1,2,3,4,5), n = 3)
smpl(data.frame("a" = c(1,2,3,4,5), "b" = c(2,3,4,5,6), stringsAsFactors = FALSE), n = 3)
}
\author{
Ludvig Renbo Olsen, \email{r-pkgs@ludvigolsen.dk}
}
