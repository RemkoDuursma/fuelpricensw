#' Petrol prices in New South Wales, Australia, 2016 - 2017.
#'
#' Dataset of petrol prices for ca. 2000 service stations across New South Wales. Includes observations for 11 fuel types, 20 service station brands. Reporting frequency is often daily (for metropolitan stations), but less frequent for more remote stations.
#'
#' @format A data frame with 1042318 rows and 9 variables:
#' \describe{
#'   \item{ServiceStationName}{'Name' of the station, note there are fewer unique names than addresses.}
#'   \item{Address}{Physical address of the station.}
#'   \item{Suburb}{Town, locality, suburb}
#'   \item{Postcode}{NSW postal code}
#'   \item{Brand}{Caltex, BP, etc.}
#'   \item{FuelCode}{Type of fuel: P98, P95, U91, etc. (reporting frequency varies)}
#'   \item{Price}{Price in AUD cents}
#'   \item{DateTime}{Date and time of price report (POSIXct)}
#'   \item{Date}{Date (Date)}
#' }
#' @source Made possible by the FuelCheck service in NSW (\url{https://www.fuelcheck.nsw.gov.au/app}), this dataset was based on chunked data made available at \url{https://data.nsw.gov.au/data/dataset/fuel-check}
"fuel"

#' Some meta data for service stations in New South Wales
#'
#' To be used in conjunction with the \code{\link{fuel}} dataset, this dataset includes data on the stations themselves. This dataset is kept separate, as its content may change in the future. Also, the source differs. Geocoding of the addresses was done (imperfectly) with Google's API, via \code{ggmap::geocode}. Other calculated variables are described in detail in the Source.
#'
#' @format A dataframe with one row per service station (2142 rows, 9 variables):
#' \describe{
#'   \item{Address}{Physical address of the station. Use this for a join to the \code{fuel} dataset.}
#'   \item{lon}{Longitude (deg)}
#'   \item{lat}{Latitude (deg)}
#'   \item{nr_5km}{Number of service stations in a 5km radius.}
#'   \item{dist_1}{Distance to nearest service station. }
#'   \item{area_voronoi}{Area of the Voronoi polygon for this service station.}
#'   \item{remoteness}{Remoteness index (unitless)}
#'   \item{dist_to_coast}{Distance to the NSW coastline.}
#'
#' }
#'
#' @source Methods for constructing this dataset are described on \url{http://www.remkoduursma.com/post/2018-01-24-fuelprices1/}
"fuelstations"
