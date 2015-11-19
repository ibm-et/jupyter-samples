# NOAA Climatology Data

This project is a [data munging](http://en.wikipedia.org/wiki/Data_wrangling) exercise whereby we convert NOAA formatted **weather station data** into easily consumable formats that allow for more convenient access and analysis. 

The focus of this notebook is to perform the compute intensive activities that will explode NOAA's **text file based, fixed record machine-readable database** into the data schemas required by [related projects](https://github.com/ibm-et/jupyter-samples/tree/master/noaa).

## Usage
Open the ```noaa_hdta_etl.ipynb``` notebook and follow the **Getting Started** instructions.

## Data Assessment

The Global Historical Climatology Network (GHCN) - [Daily dataset](http://gis.ncdc.noaa.gov/all-records/catalog/search/resource/details.page?id=gov.noaa.ncdc:C00861) integrates daily climate observations from approximately 30 different data sources. Over 25,000 worldwide weather stations are regularly updated with observations from within roughly the last month. The dataset is also routinely reconstructed (usually every week) from its roughly 30 data sources to ensure that GHCN-Daily is generally in sync with it's growing list of constituent sources. During this process, quality assurance checks are applied to the full dataset. Where possible, GHCN-Daily station data are also updated daily from a variety of data streams. Station values for each daily update also undergo a suite of quality checks.

### Ideal datasets 

NOAA's [National Climatic Data Center](http://www.ncdc.noaa.gov/about-ncdc)(NCDC) is responsible for preserving, monitoring, assessing, and providing public access to the USA's climate and historical weather data and information. Since weather is something that can be observed at varying intervals, the process used by NCDC is the best that we have yet it is far from ideal. Optimally, weather metrics should be observed, streamed, stored and analyzed in real-time. Such an approach could offer the data as a service associated with a data lake.

> [Data lakes](http://www.pwc.com/us/en/technology-forecast/2014/cloud-computing/features/data-lakes.jhtml) that can scale at the pace of the cloud remove integration barriers and clear a path for more timely and informed business decisions.

Access to cloud-based data services that front-end a data lake would help to reduce the possibility of human error and divorce us from downstream processing that alters the data from it's native state.   

### Available datasets

NOAA NCDC provides public FTP access to the **GHCN-Daily dataset**, which contains a file for each US weather station. Each file contains historical daily data for the given station since that station began to observe and record. Here are some details about the available data:

* The data is delivered in a **text file based, fixed record machine-readable format**. 
* Version 3 of the GHCN-Daily dataset was released in September 2012. 
* Changes to the processing system associated with the Version 3 release also allowed for updates to occur 7 days a week rather than only on most weekdays. 
* Version 3 contains station-based measurements from well over 90,000 land-based stations worldwide, about two thirds of which are for precipitation measurement only. 
* Other meteorological elements include, but are not limited to, daily maximum and minimum temperature, temperature at the time of observation, snowfall and snow depth. 

### Desired Data Schemas
While this notebook is focused on the generation of new datasets pertinent to daily temperature data, we could imagine future work associated with other observation types like snow accumulations and precipitation. To support a variety of weather station related analytic endeavors we need to extract from the machine-readable content new information and store it in a human-readable format. Essentially, we seek to explode (decompress) the data for general consumption and [normalize](http://en.wikipedia.org/wiki/Database_normalization#Normal_forms) it into new datasets that may be informative to users.

#### Historical Daily Summary
The goal here is to capture summary information about a given day throughout history at a specific weather station in the US. This dataset contains 365 rows where each row depicts the aggregated low and high temperature data for a specific day throughout the history of the weather station.  

Column | Description 
--- | --- 
Station ID | Name of the US Weather Station
Month |Month of the observations
Day | Day of the observations
FirstYearOfRecord | First year that this weather station started collecting data for this day in in history.
TMin | Current record low temperature (F) for this day in history.
TMinRecordYear | Year in which current record low temperature (F) occurred.  
TMax | Current record high temperature (F) for this day in history. 
TMaxRecordYear | Year in which current record high temperature occurred. 
CurTMinMaxDelta | Difference in degrees F between  record high and low records for this day in history.
CurTMinRecordDur | LifeSpan of curent low record temperature.
CurTMaxRecordDur | LifeSpan of current high record temperature.
MaxDurTMinRecord | Maximum years a low temperature record was held for this day in history.
MinDurTMinRecord | Minimum years a low temperature record was held for this day in history.
MaxDurTMaxRecord | Maximum years a high temperature record was held for this day in history.
MinDurTMaxRecord | Minimum years a high temperature record was held for this day in history.
TMinRecordCount | Total number of TMin records set on this day (does not include first since that may not be a record).
TMaxRecordCount | Total number of TMax records set on this day (does not include first since that may not be a record).

#### Historical Daily Detail
The goal here is to capture details for each year that a record has changed for a specific weather station in the US. During the processing of the Historical Daily Summary dataset, we will log each occurrence of a new temperature record. Information in this file can be used to drill-down into and/or validate the summary file. 

Column | Description 
--- | --- 
Station ID | Name of the US Weather Station
Year | Year of the observation
Month |Month of the observation
Day | Day of the observation
Type | Type of temperature record (Low = *TMin*, High = *TMax*)
OldTemp | Temperature (F) prior to change.
NewTemp | New temperature (F) record for this day.
TDelta | Delta between old and new temperatures.

#### Historical Daily Missing Record Detail
The goal here is to capture details pertaining to missing data. Each record in this dataset represents a day in history that a specific weather station in the USA failed to observe a temperature reading.

Column | Description 
--- | --- 
Station ID | Name of the US Weather Station
Year | Year of the missing observation
Month |Month of the missing observation
Day | Day of the missing observation
Type | Type of temperature missing (Low = *TMin*, High = *TMax*)

#### Historical Raw Detail

The goal here is to capture raw daily details. Each record in this dataset represents a specific temperature observation for a day in history for a specific that a specific weather station.

Column | Description 
--- | --- 
Station ID | Name of the US Weather Station
Year | Year of the observation
Month |Month of the observation
Day | Day of the observation
Type | Type of temperature reading (Low = *TMin*, High = *TMax*)
FahrenheitTemp | Fahrenheit Temperature

### Derived Datasets

This project will support the generation of new datasets in several formats:

* [HDF5](http://docs.h5py.org/en/latest/)
* CSV

## Citation Information

* [GHCN-Daily journal article](doi:10.1175/JTECH-D-11-00103.1): Menne, M.J., I. Durre, R.S. Vose, B.E. Gleason, and T.G. Houston, 2012:  An overview of the Global Historical Climatology Network-Daily Database.  Journal of Atmospheric and Oceanic Technology, 29, 897-910.
* Menne, M.J., I. Durre, B. Korzeniewski, S. McNeal, K. Thomas, X. Yin, S. Anthony, R. Ray, R.S. Vose, B.E.Gleason, and T.G. Houston, 2012: [Global Historical Climatology Network - Daily (GHCN-Daily)](http://doi.org/10.7289/V5D21VHZ), [Version 3.20-upd-2015031605], NOAA National Climatic Data Center [March 16, 2015].

