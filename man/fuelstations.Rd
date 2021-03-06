% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/zzz.R
\docType{data}
\name{fuelstations}
\alias{fuelstations}
\title{Some meta data for service stations in New South Wales}
\format{A dataframe with one row per service station (2142 rows, 9 variables):
\describe{
  \item{Address}{Physical address of the station. Use this for a join to the \code{fuel} dataset.}
  \item{lon}{Longitude (deg)}
  \item{lat}{Latitude (deg)}
  \item{nr_5km}{Number of service stations in a 5km radius.}
  \item{dist_1}{Distance to nearest service station. }
  \item{area_voronoi}{Area of the Voronoi polygon for this service station.}
  \item{remoteness}{Remoteness index (unitless)}
  \item{dist_to_coast}{Distance to the NSW coastline.}

}}
\source{
Methods for constructing this dataset are described on \url{http://www.remkoduursma.com/post/2018-01-24-fuelprices1/}
}
\usage{
fuelstations
}
\description{
To be used in conjunction with the \code{\link{fuel}} dataset, this dataset includes data on the stations themselves. This dataset is kept separate, as its content may change in the future. Also, the source differs. Geocoding of the addresses was done (imperfectly) with Google's API, via \code{ggmap::geocode}. Other calculated variables are described in detail in the Source.
}
\keyword{datasets}
