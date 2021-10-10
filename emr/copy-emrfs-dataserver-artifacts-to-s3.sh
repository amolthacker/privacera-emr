#!/bin/bash

BASE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CONF_DIR="${BASE_DIR}/../conf"
source "${CONF_DIR}/art-privacera-demo-config.sh"

aws s3 cp ~/privacera/downloads/s3 s3://${S3_ARTIFACTS_BUCKET}/demo --recursive