library(crayon)

source(file = 'R/extract.r')

snap_hdd_url <- "http://data.snap.uaf.edu/data/Base/AK_WRF/Arctic_EDS_degree_days/heating_degree_days.zip" 
aedg_communities_url <- "https://github.com/acep-aedg/aedg-data-pond/raw/refs/heads/main/data/final/communities.geojson"


# aedg communities
download_file(aedg_communities_url, "data/aedg", overwrite = T)

# snap heating degree days
zip_path <- download_file(snap_hdd_url, "data/snap", overwrite = T)
unzip_file(zip_path, exdir = "data/snap", remove_zip = TRUE)

