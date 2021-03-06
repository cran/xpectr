% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/element_descriptors.R
\name{element_classes}
\alias{element_classes}
\title{Gets the class of each element}
\usage{
element_classes(x, keep_names = FALSE)
}
\arguments{
\item{x}{List with elements.}

\item{keep_names}{Whether to keep existing names. (Logical)}
}
\value{
The main class of each element.
}
\description{
\Sexpr[results=rd, stage=render]{lifecycle::badge("experimental")}

Applies \code{\link[base:class]{class()}} to each element of \code{`x`} (without recursion). When
\code{class()} returns multiple strings, the first class string is returned.
}
\details{
Gets first string in \code{class()} for all elements.
}
\examples{
# Attach packages
library(xpectr)

l <- list("a" = c(1,2,3), "b" = "a", "c" = NULL)

element_classes(l)
element_classes(l, keep_names = TRUE)
}
\seealso{
Other element descriptors: 
\code{\link{element_lengths}()},
\code{\link{element_types}()},
\code{\link{num_total_elements}()}
}
\author{
Ludvig Renbo Olsen, \email{r-pkgs@ludvigolsen.dk}
}
\concept{element descriptors}
