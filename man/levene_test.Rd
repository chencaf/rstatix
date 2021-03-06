% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/levene_test.R
\name{levene_test}
\alias{levene_test}
\title{Levene's Test}
\usage{
levene_test(data, formula, center = median)
}
\arguments{
\item{data}{a data frame for evaluating the formula or a model}

\item{formula}{a formula}

\item{center}{The name of a function to compute the center of each group;
mean gives the original Levene's test; the default, median, provides a more
robust test.}
}
\description{
Provide a pipe-friendly framework to easily compute Levene's
  test for homogeneity of variance across groups.

  Wrapper around the function \code{\link[car]{leveneTest}()}, which can
  additionally handles a grouped data.
}
\examples{
# Prepare the data
data("ToothGrowth")
df <- ToothGrowth
df$dose <- as.factor(df$dose)
# Compute Levene's Test
df \%>\% levene_test(len ~ dose)

# Grouped data
df \%>\%
  group_by(supp) \%>\%
  levene_test(len ~ dose)

}
