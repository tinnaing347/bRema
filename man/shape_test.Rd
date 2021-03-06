% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/modeller.R
\name{shape_test}
\alias{shape_test}
\title{Shape test}
\usage{
shape_test(bestvalue, model)
}
\arguments{
\item{bestvalue}{A list containing information about parameters such as slopes, change-points, and stats such as RMSE.}

\item{model}{A character string. Model such as '2P', '3PH', '3PC', '4P' or '5P'.}
}
\description{
This function tests if a given model has an expected shape by evaluating the slopes (positive, negative or zero).
}
\examples{
x = matrix(c(1:10))
y = matrix(c(1,2.5,3,4,5,5.5,7,8.3,9,10))
model = '4P'
bestvalue = create_model(x, y, model)
shape_test(bestvalue, model)
}
\seealso{
\code{link{tTest}} and \code{\link{pop_test}}
}
