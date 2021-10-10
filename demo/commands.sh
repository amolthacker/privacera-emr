#!/bin/bash

export REALM="EC2.INTERNAL"

klist
kinit

klist -kt /etc/hadoop.keytab
kinit -kt /etc/hadoop.keytab ${PRINCIPAL}

spark-shell
val df = spark.read.format("csv").load("s3://art-privacera-demo-emr-data/customers/priv_customers_raw/priv_customers_data.csv")
df.limit(10).show()
df.write.parquet("s3://art-privacera-demo-emr-data/customers/priv_customers/priv_customers.parquet")
df.limit(10).show()


sudo su - hadoop
beeline -u "jdbc:hive2://`hostname -f`:10000/default;principal=hive/`hostname -f`@${REALM}"

use customers;

select title, givenname, surname, nationalid, country from ww_customers_raw limit 10;

select id, name, ssn from priv_customers_raw limit 10;
