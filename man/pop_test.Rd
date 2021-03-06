% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/modeller.R
\name{pop_test}
\alias{pop_test}
\title{Polpulation test}
\usage{
pop_test(x, bestvalue, model, n = 4)
}
\arguments{
\item{x}{A vector. Independent variables.}

\item{bestvalue}{A list containing information about parameters such as slopes, change-points, and stats such as RMSE.}

\item{model}{A character string. Model such as '2P', '3PH', '3PC', '4P' or '5P'}

\item{n}{A numeric value that determines threshold: \code{thereshold = length(x)/n}. Defaults to 4.}
}
\description{
This function is a population test function and returns a matrix of 'Pass' or 'Fail', depending on the values of the slopes and models, and number of heating month and cooling months. The threshold hold is \code{length(x)/4}.
}
\examples{
x = matrix(c(1:10))
y = matrix(c(1,2.5,3,4,5,5.5,7,8.3,9,10))
model = '4P'
bestvalue = create_model(x, y, model)
pop_matrix = pop_test(x, bestvalue, model)
}
\seealso{
\code{\link{tTest}} and \code{\link{shape_test}}
}
