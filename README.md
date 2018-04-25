# Gcloud Crypto API

## Overview
This repo contains code to pull data from a crypto coin API. The data is loaded into GCS as CSV. The CSV is loaded int Big query and then queried.

## Steps
1. Create a Google cloud account
2. Create a new project and enable billing in google cloud
3. Install the cli tools for google cloud. Instructions for your platform can be found [here](https://cloud.google.com/sdk/downloads)
4. Sign into the CLI using `gcloud auth login`
5. Set the current project using `gcloud config set project caserta-eval`
6. Install the datalab component if you haven't already `gcloud components install datalab`
7. Create a datalab instance `datalab create caserta-test`
8. Now you should be able to access datalab at localhost:8081.
9. If that does not work you can reconnect to datalab using `datalab connect caserta-test`
10. Run the `crypto_to_gcs.ipynb` notebook.
11. Run the command to ingest data to Big Query 
```bq load --source_format=CSV crypto.crypto_data gs://anant-caserta-eval/crypto_data.csv 
available_supply:FLOAT,name:STRING,percent_change_1h:FLOAT,percent_change_24h:FLOAT,last_updated:FLOAT,market_cap_usd:FLOAT,symbol:STRING,
volume_24h_usd:FLOAT,price_usd:FLOAT,percent_change_7d:FLOAT,total_supply:FLOAT,id:STRING,price_btc:FLOAT,rank:FLOAT,max_supply:FLOAT```
12. Run the `crypto_queries.ipynb` notebook with the queries.
13. The GCS bucket can be found at 
