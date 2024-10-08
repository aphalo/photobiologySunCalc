% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sun.calc.r
\name{print.solar_time}
\alias{print.solar_time}
\alias{print.solar_date}
\title{Print solar time and solar date objects}
\usage{
\method{print}{solar_time}(x, ...)

\method{print}{solar_date}(x, ...)
}
\arguments{
\item{x}{an R object}

\item{...}{passed to \code{format} method}
}
\description{
Print solar time and solar date objects
}
\note{
Default is to print the underlying POSIXct as a solar time.
}
\seealso{
Other Local solar time functions: 
\code{\link{as.solar_date}()},
\code{\link{is.solar_time}()},
\code{\link{solar_time}()}
}
\concept{Local solar time functions}
