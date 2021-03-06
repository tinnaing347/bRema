% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/savings.R
\name{saving_calc}
\alias{saving_calc}
\title{Calculates savings}
\usage{
saving_calc(util, best_df, bdbid = NA, energy, session_id = NA)
}
\arguments{
\item{util}{A post-retrofit data frame with columns: OAT, usage and end_date. See \code{\link{unretrofit_utility}} for more information about data format.}

\item{best_df}{Pre retrofit best model data frame (of a single builiding) returned from \code{\link{batch_run}}.}

\item{bdbid}{Building id, which identifies the building or the dataset. Defaults to \code{NA}.}

\item{energy}{A charcter string. Energy Type, either 'Elec' or 'Fuel'.}

\item{session_id}{Either a character string or a numeric value to keep track. Defaults to \code{NA}.}
}
\description{
This function calculates savings for \strong{retrofit data}.
}
\examples{
\dontrun{
retrofit_util = subset(retrofit_utility, retrofit_utility$bdbid == 846152
				& retrofit_utility$energy_type == 'Elec')
result = batch_run_energy_retrofit(retrofit_util, 'Elec')
pre_retrofit_util = subset(retrofit_util, retrofit_util$prepost == 3)
#subsetting for pre-retrofit period
pre_result = subset(result$best_result_df, result$best_result_df$prepost == 1)
savings_df = saving_calc(pre_retrofit_util, pre_result, 846152, 'Elec')
}
}
