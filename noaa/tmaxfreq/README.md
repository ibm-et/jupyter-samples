# High Temperature Record Frequency

This analytical notebook is a component of a [package of notebooks](https://github.com/ibm-et/jupyter-samples/tree/master/noaa). The package is intended to serve as an exercise in the applicability of Juypter Notebooks to public weather data for DIY Analytics.


>This notebook was created using a technology preview based on Project Jupyter called [IBM Knowledge Anyhow Workbench](https://knowledgeanyhow.org). 
> While the technology preview pilot has completed, several  special helper functions used by this notebook (e.g., reusable notebooks) can now be found in [jupyter-incubator/contentmanagement](https://github.com/jupyter-incubator/contentmanagement)

## Demo Concepts
This notebook makes use of the following Project Jupyter features:

* [Python Widgets](https://github.com/ipython/ipywidgets)

## Objective

There has been a great deal of discussion around climate change and global warming. Since NOAA has made their data public, let us explore the data ourselves and see what insights we can discover. 

1. How many weather stations in US?
2. For US weather stations, what is the average years of record keeping?
3. For each US weather station, on each day of the year, identify the frequency at which daily High and Low temperature records are broken.
4. Does the historical frequency of daily temperature records (High or Low) in the US provide statistical evidence of dramatic climate change?
5. What is the average life-span of a daily temperature record (High or Low) in the US?

>If there is scientific evidence of extreme fluctuations in our weather patterns due to human impact to the environment then we should be able to identify factual examples of increase in the frequency in extreme temperatures.

## Data
This notebook was developed using a **March 16, 2015** snapshot of USA-Only daily temperature readings from the Global Historical Climatology Network. The [Data Munging](https://github.com/ibm-et/jupyter-samples/tree/master/noaa/etl) project was used to generate datasets in CSV format.

## Usage

>WARNING: This notebook requires modifications if it is to work outside of [IBM Knowledge Anyhow Workbench](https://knowledgeanyhow.org). 

### Prepare Data

1. Use the [data Munging](https://github.com/ibm-et/jupyter-samples/tree/master/noaa/etl) project to generate CSV files.
2. Modify the ```NOAA_STATION_SUMMARY_PATH``` in ```noaaquery_tmaxfreq_tools.ipynb```.


### Run Analysis
Open the ```noaaquery_tmaxfreq.ipynb``` notebook and follow the instructions.

## Citation Information

* [GHCN-Daily journal article](doi:10.1175/JTECH-D-11-00103.1): Menne, M.J., I. Durre, R.S. Vose, B.E. Gleason, and T.G. Houston, 2012:  An overview of the Global Historical Climatology Network-Daily Database.  Journal of Atmospheric and Oceanic Technology, 29, 897-910.
* Menne, M.J., I. Durre, B. Korzeniewski, S. McNeal, K. Thomas, X. Yin, S. Anthony, R. Ray, R.S. Vose, B.E.Gleason, and T.G. Houston, 2012: [Global Historical Climatology Network - Daily (GHCN-Daily)](http://doi.org/10.7289/V5D21VHZ), [Version 3.20-upd-2015031605], NOAA National Climatic Data Center [March 16, 2015].



