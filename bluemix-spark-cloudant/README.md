## Notebooks

These notebooks are written assuming that you are running them on [IBM Bluemix](https://console.ng.bluemix.net/), using the [IBM Apache Spark](https://console.ng.bluemix.net/catalog/services/apache-spark/) and [IBM Cloudant](https://console.ng.bluemix.net/catalog/services/cloudant-nosql-db/) Bluemix services.

The notebooks utilize the [IBM Apache Spark](https://console.ng.bluemix.net/catalog/services/apache-spark/) and [IBM Cloudant](https://console.ng.bluemix.net/catalog/services/cloudant-nosql-db/) Bluemix services to process and persist data from the [Meetup rsvp stream](http://www.meetup.com/meetup_api/docs/stream/2/rsvps/).

* [(1) Streaming Meetups to IBM Cloudant using Spark](https://github.com/ibm-et/jupyter-samples/blob/master/bluemix-spark-cloudant/1-Streaming-Meetups-to-IBM-Cloudant-using-Spark.ipynb)
* [(2) Reading Meetups from IBM Cloudant using Spark](https://github.com/ibm-et/jupyter-samples/blob/master/bluemix-spark-cloudant/2-Reading-Meetups-from-IBM-Cloudant-using-Spark.ipynb)


## Prerequisites
* IBM Bluemix account - [Sign up for IBM Bluemix](https://console.ng.bluemix.net/registration/)
* IBM Spark service instance - [Create an IBM Apache Spark Service](https://console.ng.bluemix.net/catalog/apache-spark/).  Note once the IBM Spark service is created you can then use the create notebook option and upload the IBM Cloudant Spark notebooks which are ready to run.
* IBM Cloudant service instance - [Create a IBM Cloudant NoSQL DB Service](https://console.ng.bluemix.net/catalog/cloudant-nosql-db/).  Note once the IBM Cloudant service is created you can then create a meetup_group database by launching the IBM Cloudant service, navigating to the databases tab within the dashboard, and selecting create database.
* IBM Cloudant service credentials - Once in a notebook use the Data Source option on the right Palete to Add a data source. After the data source is configured and linked to the created notebook you can use the Insert to code link which will add metadata regarding the datasource to your notebook. You will want to keep track of the hostname, username, and password to be used for configuration.

## License

Notebooks are copyright (c) 2015 IBM Corporation under the MIT license. See LICENSE for details.

Sample data files, libraries, techniques, external publications, etc. are cited in the notebooks in which they are used. Those works remain under the copyright of their respective owners.
