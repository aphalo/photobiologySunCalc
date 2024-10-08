
# photobiologySunCalc <img src="man/figures/logo.png" align="right" width="120"/>

<!-- badges: start -->

[![CRAN
version](https://www.r-pkg.org/badges/version-last-release/photobiologySunCalc)](https://cran.r-project.org/package=photobiologySunCalc)
[![cran
checks](https://badges.cranchecks.info/worst/photobiologySunCalc.svg)](https://cran.r-project.org/web/checks/check_results_photobiologySunCalc.html)[![photobiologySunCalc
status
badge](https://aphalo.r-universe.dev/badges/photobiologySunCalc)](https://aphalo.r-universe.dev/photobiologySunCalc)
[![R-CMD-check](https://github.com/aphalo/photobiologySunCalc/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/aphalo/photobiologySunCalc/actions/workflows/R-CMD-check.yaml)
[![Documentation](https://img.shields.io/badge/documentation-photobiologySunCalc-informational.svg)](https://docs.r4photobiology.info/photobiologySunCalc/)
<!-- badges: end -->

Package ‘**photobiologySunCalc**’ implements Meeus’ accurate algorithms
for the computation of the position of the sun, usable far into the past
and future. It also implements the computation of local solar time,
daylength, nightlength and times of sunset and sunrise, based on both
accepted and arbitrary sun elevation angles for twilight. It implements
Kasten and Young’s (1998) approximation formula for optical air mass
(AM). The Pennman-Monteith equation for the estimation of reference
evapotranspiration is implemented for the different versions recommended
by the Food and Agriculture Organization (FAO). Conversions between
different physical quantities and units used to describe the water
content of air are also provided.

This package is part of a suite of R packages for photobiological
calculations described at the
[r4photobiology](https://www.r4photobiology.info) web site and in the
vignette [The R for Photobiology
Suite](https://docs.r4photobiology.info/photobiology/articles/userguide-0-r4p-introduction.html).

This package is a “spin-off” from package ‘photobiology’.

## Examples

The first examples show some simple astronomical calculations for the
sun.

``` r
library(photobiologySunCalc)

geocode <- data.frame(lon = 0, lat = 55)
date <- lubridate::now(tzone = "UTC")
sunrise_time(date, tz = "UTC", geocode = geocode)
#> [1] "2024-08-06 04:19:10 UTC"
day_length(date, tz = "UTC", geocode = geocode)
#> [1] 15.55599
```

## Installation

Installation of the most recent stable version from CRAN:

``` r
install.packages("photobiologySunCalc")
```

Installation of the current unstable version from R-Universe CRAN-like
repository:

``` r
install.packages('photobiologySunCalc', 
                 repos = c('https://aphalo.r-universe.dev', 
                           'https://cloud.r-project.org'))
```

Installation of the current unstable version from GitHub:

``` r
# install.packages("devtools")
devtools::install_github("aphalo/photobiology")
```

## Documentation

HTML documentation is available at
(<https://docs.r4photobiology.info/photobiologySunCalc/>), including
three *User Guides*.

News on updates to the different packages of the ‘r4photobiology’ suite
are regularly posted at (<https://www.r4photobiology.info/>).

Two articles introduce the basic ideas behind the design of the suite
and describe its use: Aphalo P. J. (2015)
(<https://doi.org/10.19232/uv4pb.2015.1.14>) and Aphalo P. J. (2016)
(<https://doi.org/10.19232/uv4pb.2016.1.15>).

A book is under preparation, and the draft is currently available at
(<https://leanpub.com/r4photobiology/>).

A handbook written before the suite was developed contains useful
information on the quantification and manipulation of ultraviolet and
visible radiation: Aphalo, P. J., Albert, A., Björn, L. O., McLeod, A.
R., Robson, T. M., & Rosenqvist, E. (Eds.) (2012) Beyond the Visible: A
handbook of best practice in plant UV photobiology (1st ed., p. xxx +
174). Helsinki: University of Helsinki, Department of Biosciences,
Division of Plant Biology. ISBN 978-952-10-8363-1 (PDF),
978-952-10-8362-4 (paperback). PDF file available from
(<https://hdl.handle.net/10138/37558>).

## Contributing

Pull requests, bug reports, and feature requests are welcome at
(<https://github.com/aphalo/photobiologySunCalc>).

## Citation

If you use this package to produce scientific or commercial
publications, please cite according to:

``` r
citation("photobiologySunCalc")
#> To cite package ‘photobiologySunCalc’ in publications use:
#> 
#>   Aphalo, Pedro J. (2015) The r4photobiology suite. UV4Plants Bulletin,
#>   2015:1, 21-29. DOI:10.19232/uv4pb.2015.1.14
#> 
#> A BibTeX entry for LaTeX users is
#> 
#>   @Article{,
#>     author = {Pedro J. Aphalo},
#>     title = {The r4photobiology suite},
#>     journal = {UV4Plants Bulletin},
#>     volume = {2015},
#>     number = {1},
#>     pages = {21-29},
#>     year = {2015},
#>     doi = {10.19232/uv4pb.2015.1.14},
#>   }
```

## License

© 2012-2024 Pedro J. Aphalo (<pedro.aphalo@helsinki.fi>). Released under
the GPL, version 2 or greater. This software carries no warranty of any
kind.
