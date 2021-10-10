create database if not exists customers;
use customers;
CREATE EXTERNAL TABLE if not exists `priv_customers_raw`(
    `id` string,
    `global_id` string,
    `name` string,
    `ssn` string,
    `email_address` string,
    `address` string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS INPUTFORMAT
'org.apache.hadoop.mapred.TextInputFormat'
OUTPUTFORMAT
'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
's3://art-privacera-demo-emr-data/customers/priv_customers_raw';