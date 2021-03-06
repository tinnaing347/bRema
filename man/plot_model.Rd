% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plots.R
\name{plot_model}
\alias{plot_model}
\title{Handles plotting lines for parameter models}
\usage{
plot_model(x, model, B, cp1, cp2, energy, pre_key = 0, unit,
  p1 = plot_ly())
}
\arguments{
\item{x}{A vector (OAT).}

\item{model}{A character string. Model: '2P', '3PC', '3PH', '4P', or '5P'.}

\item{B}{A matrix, either 2 by 1 or 3 by 1 matrix. \code{B[1]} = y-value at cp1 (and cp2), \code{B[2]} = slope (if there are two slopes, this is the leftmost slope), \code{B[3]} = slope (if there are two slopes, this is the rightmost slope)}

\item{cp1}{A numeric value. If there are two change-points, this is the leftmost change-point.}

\item{cp2}{A numeric value. If there are two change-points, this is the rightmost change-point. If there is only one change-point, set this to be NA.}

\item{energy}{A character string. Energy type, either 'Elec' or 'Fuel'.}

\item{pre_key}{A numeric value. 0 for unretrofit, 1 for pre-retrofit and 3 for post-retrofit. Defaults to 0.}

\item{unit}{A boolean value. Determines whether or not to convert kWh to BTU.}

\item{p1}{A plotly object. Defaults to \code{plot_ly()}.}
}
\description{
This function returns a line plot.
}
\seealso{
\code{\link{plot_point}}
}
