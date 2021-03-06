% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/loss_functions.R
\name{compute_identity_multi_class}
\alias{compute_identity_multi_class}
\title{Compute Identity Multi Class}
\usage{
compute_identity_multi_class(prediction, actual)
}
\arguments{
\item{prediction}{Numeric matrix same number of rows as length of actual}

\item{actual}{Numeric vector same length as prediction}
}
\value{
Numeric vector length one
}
\description{
Best is -1, worst is 0. Objective is to minimize.
}
\examples{
compute_identity_multi_class(matrix(1:100, nrow=10), 1:10)
compute_identity_multi_class(matrix(rep(1:2, 10), nrow=10), rep(2,10))

}

