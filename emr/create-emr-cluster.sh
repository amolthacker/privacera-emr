#!/bin/bash

BASE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CONF_DIR="${BASE_DIR}/../conf"
source "${CONF_DIR}/art-privacera-demo-config.sh"

aws --region ${AWS_REGION} cloudformation create-stack \
    --stack-name ${EMR_CLUSTER_NAME} \
    --template-body file://privacera-emrfs-cf.json