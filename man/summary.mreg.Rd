% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Summary.R
\name{summary.mreg}
\alias{summary.mreg}
\title{Summarise an 'mreg' object}
\usage{
\method{summary}{mreg}(x)
}
\arguments{
\item{x}{an object of class "mreg", a result of a call to \link[qacReg]{mreg} (which is a wrapper for \link[base]{lm})}
}
\value{
The function \strong{summary.mreg} computes summary statistics and results for a fitted linear model with measures
of robustness including:
\describe{
\item{\strong{Fit Indices}}{includes R-squared, Adjusted R-squared, Akaike's Information Criterion, Root Mean Squared Error}
\item{\strong{10-fold Cross Validated Fit Indices}}{includes a more reliable and accurate measure of R-squared, Root Mean Squared Error}
\item{\strong{Omnibus Test}}{includes F-statistic, Degrees of Freedom, p-value}
\item{\strong{Anova Table (Type 3 Tests)}}{includes a Type-III Analysis of Variance Table (outputted from the \link[car]{Anova()} function in the \strong{car} package)}
\item{\strong{Regression Coefficients}}{includes a table of Coefficients, Standardised Coefficients, Standard Errors, t-values, p-values, Significance codes}
}
}
\description{
This function serves as a summary method for class "mreg".
}
\examples{
mtcars$am <- factor(mtcars$am)
fit <- mreg(mpg ~ hp + wt + am, mtcars)
summary(fit)
}
