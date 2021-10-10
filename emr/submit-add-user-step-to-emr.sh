#!/bin/bash

BASE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CONF_DIR="${BASE_DIR}/../conf"
source "${CONF_DIR}/art-privacera-demo-config.sh"

EMR_CLUSTER_ID=""

aws emr add-steps \
    --cluster-id ${EMR_CLUSTER_ID} \
    --steps Type=CUSTOM_JAR,Name=boot_kdc,ActionOnFailure=CONTINUE,Jar=s3://${AWS_REGION}.elasticmapreduce/libs/script-runner/script-runner.jar,Args=["s3://art-privacera-demo-emr-artifacts/utils/add-unix-users-to-kdc.sh"]
