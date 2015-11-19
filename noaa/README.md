# NOAA Weather Analysis

This project is an exercise data exploration based on public weather data from the [NOAA National Climatic Data Center](http://www.ncdc.noaa.gov/).

## Data Access

On 9.Mar.2015 an inquiry was made to NOAA regarding access to historic weather station data:

>We are seeking access to raw data or a web service that would enable the analysis of the historic daily temperature records for all weather stations in the US from earliest date available to present.

>We seek access to the data in raw CSV or JSON format.

>While the " Surface Data Monthly Extremes - U.S." product is interesting it does not allow individuals to explore the data and derive independent insights. 

>Any help would be appreciated.

On 12.Mar.2015 [William Brown](mailto:william.brown@noaa.gov), Meteorologist, NOAA Climate Services and Monitoring Division provided the following advice:

>Your best option is to mine our digital daily summary data base.  You can access the ftp directory, including data and documentation, from ftp://ftp.ncdc.noaa.gov/pub/data/ghcn/daily/ where access is unlimited and free of charge.

This implied that if individuals did not want to work from static pre-cleansed reports then a fair amount of data munging would be required to **explode** the **text file based, fixed record machine-readable format** into human readable datasets.

## Subprojects

* [Data Munging](https://github.com/ibm-et/jupyter-samples/tree/master/noaa/etl)
* Historical Daily Temperature Analysis
	* [High Temperature Record Frequency Notebook](https://github.com/ibm-et/jupyter-samples/tree/master/noaa/tmaxfreq)
	* [Temperature Record Frequency Dashboard](https://github.com/ibm-et/jupyter-samples/tree/master/noaa/hdtadash)

