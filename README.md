# Community Heating Degree Days
This repository contains source code to fetch and process heating degree day data for the communities represented in the [Alaska Energy Data Gateway (AEDG)](https://aedg-dev.camio.acep.uaf.edu). Input data comes from [Scenarios Network for Alaska + Arctic Planning (SNAP)](https://uaf-snap.org). In order to associate heating degree data with specific communities, we used an [API hosted by SNAP](https://earthmaps.io/degree_days/), looping through our list of AEDG communities and querying the API using the listed coordinates for each community. The resulting JSON was saved, then unnested and converted to CSV dataframe for downstream ingestion into the Alaska Energy Data Gateway. 


Citation:
Scenarios Network for Alaska + Arctic Planning.  2025.  Degree Days.  https://earthmaps.io/degree_days/