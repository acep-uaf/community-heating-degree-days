library(crayon)

source(file = 'R/extract.r')

zip_url <- "http://data.snap.uaf.edu/data/Base/AK_WRF/Arctic_EDS_degree_days/heating_degree_days.zip"
dir <- "data/snap"

download_and_unzip(zip_url, dir, remove_zip = T)