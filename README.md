# Fuel Prices in New South Wales

A simple R package with a cleaned dataset of petrol prices across 2000+ service stations in New South Wales, Australia. Includes observations for 11 fuel types, 20 service station brands. Reporting frequency is often daily (for metropolitan stations), but less frequent for more remote stations.

Made possible by the FuelCheck service in NSW (https://www.fuelcheck.nsw.gov.au/app), this dataset was based on chunked data [made available here](https://data.nsw.gov.au/data/dataset/fuel-check).

This package also includes a dataset with some descriptors of the service stations, including location (latitude, longitude) and some measures of remoteness (see documentation). This dataset was described in [this blog post](http://www.remkoduursma.com/post/2018-01-24-fuelprices1/).

## Instructions

To install (the package is not on CRAN):

```
devtools::install_github("remkoduursma/fuelpricensw")
```

After loading the package (`library(fuelpricensw)`), you have access to `fuel` (observations of fuel prices) and `fuelstations` (the descriptors). See `?fuel` and `?fuelstations` for documentation. Often you may want to merge the datasets:

```
fuel <- dplyr::left_join(fuel, fuelstations, by="Address")
```

