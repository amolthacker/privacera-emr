create database if not exists customers;
use customers;
CREATE EXTERNAL TABLE ww_customers_raw(
  gender string,
  title string,
  givenname string,
  middleinitial string,
  surname string,
  number int,
  nameset string,
  streetaddress string,
  city string,
  state string,
  statefull string,
  zipcode string,
  country string,
  countryfull string,
  emailaddress string,
  username string,
  password string,
  browser string,
  telephonenumber string,
  telephonecountrycode int,
  mothersmaiden string,
  birthday string,
  age int,
  tropicalzodiac string,
  cctype string,
  ccnumber bigint,
  cvv2 int,
  ccexpires string,
  nationalid string,
  ups string,
  mrn bigint,
  insuranceid int,
  eyecolor string,
  occupation string,
  company string,
  vehicle string,
  domain string,
  bloodtype string,
  weight double,
  kilograms double,
  feetinches string,
  height int,
  guid string,
  latitude double,
  longitude double)
ROW FORMAT DELIMITED 
FIELDS TERMINATED BY ',' ESCAPED BY '"'
LINES TERMINATED BY '\n' 
STORED AS TEXTFILE
LOCATION 's3://art-privacera-demo-emr-data/customers/ww_customers_raw'
tblproperties("skip.header.line.count"="1")