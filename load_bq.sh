#!/bin/bash

bq load --source_format=CSV crypto.crypto_data gs://anant-caserta-eval/crypto_data.csv
available_supply:FLOAT,name:STRING,percent_change_1h:FLOAT,percent_change_24h:FLOAT,last_updated:FLOAT,market_cap_usd:FLOAT,symbol:STRING,
volume_24h_usd:FLOAT,price_usd:FLOAT,percent_change_7d:FLOAT,total_supply:FLOAT,id:STRING,price_btc:FLOAT,rank:FLOAT,max_supply:FLOAT
