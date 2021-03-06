% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/class_def_estimate_program.R
\docType{class}
\name{estimate_program-class}
\alias{estimate_program-class}
\alias{predict,estimate_program-method}
\alias{print,estimate_program-method}
\alias{show,estimate_program-method}
\title{An S4 class to return the results of using the estimate_program function}
\usage{
\S4method{print}{estimate_program}(x, ...)

\S4method{show}{estimate_program}(object)

\S4method{predict}{estimate_program}(object, newdata, parallel = FALSE,
  cores = NULL, type = c("prob", "raw"), thresh = 0.5,
  na.action = na.omit, ...)
}
\arguments{
\item{x}{S4 estimate_program object}

\item{...}{ignored
@export}

\item{object}{S4 estimate_program object
@export}

\item{newdata}{data.frame}

\item{parallel}{Optional Logical vector length one. Default is \code{parallel 
= FALSE}; \code{parallel = TRUE} can be slower if the data set is small 
relative to the numner of population evolutions desired}

\item{cores}{Optional Integer vector length one}

\item{type}{Optional Character vector length one.}

\item{thresh}{Optional numeric vector length one -- the threshold value to
use for converting probabilities into discrete outcomes.}

\item{na.action}{Optional function.}
}
\description{
An S4 class to return the results of using the estimate_program function
}
\section{Methods (by generic)}{
\itemize{
\item \code{print}: An S4 method for printing an estimate_program S4 object

\item \code{show}: An S4 method for showing a estimate_program S4 object

\item \code{predict}: An S4 method for predicting with an
estimate_program S4 object
}}
\section{Slots}{

\describe{
\item{\code{call}}{Language from the call of the function 
\code{\link{estimate_program}}.}

\item{\code{timing}}{Numeric vector length one with the total elapsed time it took 
\code{\link{estimate_program}} to execute.}

\item{\code{session}}{the results from calling \code{sessionInfo()} at end of 
\code{\link{estimate_program}} function.}

\item{\code{full}}{full main results}

\item{\code{best_func}}{S4 object of class \linkS4class{model_program}, which has a
predict method.}
}}

