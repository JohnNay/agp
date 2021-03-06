% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/estimate_program.R
\name{estimate_program}
\alias{estimate_program}
\title{Estimate a program (R function) from data.}
\usage{
estimate_program(formula, data, subset = NULL, loss = c("log_lik", "rmse",
  "identity", "identity_multi_class"), identity_outcome_type = c("integer",
  "character", "factor"), link = c("logit", "probit", "cauchit", "identity"),
  func_list = list("+", "-", "*", "divide", "exp", ">", "<", "logn", "sqrtn",
  "&", "|", "!", "ifelse2", "one_rnorm"), mins = 10, steps = 2000,
  repeats = 2, parallel = FALSE, cores = NULL,
  enable_complexity = FALSE, lambda = 50, crossover_probability = 0.5)
}
\arguments{
\item{formula}{formula used to create the data.frame needed, ensuring that the
outcome variable, the variable to the left of "~", is the first column in 
the data.frame and the following columns are the predictor variables.}

\item{data}{a data.frame with named columns containing the variables in 
formula. Neither a matrix nor an array will be accepted. We use the 
\code{formula} to turn this into a data.frame where (i.) the first column is
named \code{"outcome"} and has the outcome variable we are evolving programs
to predict; (ii.) all other columns (there must be at least one other 
column) that follow the \code{"outcome"} column are named columns containing
the predictor variables, which can be of any type. The order matters: when 
using the evolved program for predictions the (named) arguments to the 
function will be the predictor variables in the order they are supplied to 
this \code{estimate_program()} function.}

\item{subset}{a specification of the rows to be used: defaults to all rows. 
This can be any valid indexing vector (see [.data.frame) for the rows of 
data or if that is not supplied, a data frame made up of the variables used 
in formula.}

\item{loss}{Optional Character vector length one}

\item{identity_outcome_type}{Optional Character vector length one only needed
if \code{loss=="identity"}.}

\item{link}{Optional Character vector length one}

\item{func_list}{Optional List where each element is a length one character 
vector.}

\item{mins}{Optional Integer vector length one}

\item{steps}{Optional Integer vector length one}

\item{repeats}{Optional Integer vector length one sepcifying how many times to
repeat the model fitting}

\item{parallel}{Optional Logical vector length one. Default is \code{parallel 
= FALSE}; \code{parallel = TRUE} can be slower if the data set is small 
relative to the numner of population evolutions desired}

\item{cores}{Optional Integer vector length one}

\item{enable_complexity}{Optional logical vector length one}

\item{lambda}{Optional integer vector length one for the number of children 
rgp::typedGeneticProgramming() creates in each generation}

\item{crossover_probability}{Optional numeric vector length one (default == 
0.5) for rgp::typedGeneticProgramming()}
}
\value{
The function returns an S4 object. See \linkS4class{estimate_program} 
 for the details of the \code{slots} (objects) that this type of object will 
 have.
}
\description{
\code{estimate_program} uses \code{rgp}'s \code{rgp::typedGeneticProgramming}.
}

