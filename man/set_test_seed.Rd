% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/set_test_seed.R
\name{set_test_seed}
\alias{set_test_seed}
\title{Set random seed for unit tests}
\usage{
set_test_seed(seed = 42, ...)
}
\arguments{
\item{seed}{Random \code{seed}.}

\item{...}{Named arguments to \code{\link[base:Random]{set.seed()}}.}
}
\value{
\code{NULL}.
}
\description{
\Sexpr[results=rd, stage=render]{lifecycle::badge("experimental")}

In order for tests to be compatible with \code{R} versions \code{< 3.6.0},
we set the \code{sample.kind} argument in \code{\link[base:Random]{set.seed()}}
to \code{"Rounding"} when using \code{R} versions \code{>= 3.6.0}.
}
\details{
Initially contributed by R. Mark Sharp (github: @rmsharp).
}
\author{
Ludvig Renbo Olsen, \email{r-pkgs@ludvigolsen.dk}

R. Mark Sharp
}
