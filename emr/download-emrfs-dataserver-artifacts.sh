#!/bin/bash

BASE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CONF_DIR="${BASE_DIR}/../conf"
source "${CONF_DIR}/art-privacera-demo-config.sh"

wget ${PRIVACERA_BASE_DOWNLOAD_URL}/download_and_set_jceks.sh -O download_and_set_jceks.sh
wget ${PRIVACERA_BASE_DOWNLOAD_URL}/download_setup.sh -O download_setup.sh
wget ${PRIVACERA_BASE_DOWNLOAD_URL}/install_watcher.sh -O install_watcher.sh
wget ${PRIVACERA_BASE_DOWNLOAD_URL}/privacera-dataserver-2.0.0-SNAPSHOT.tar.gz -O privacera-dataserver-2.0.0-SNAPSHOT.tar.gz
wget ${PRIVACERA_BASE_DOWNLOAD_URL}/privacera-dataserver-watcher.tar.gz -O privacera-dataserver-watcher.tar.gz
wget ${PRIVACERA_BASE_DOWNLOAD_URL}/privacera_cloud.tar.gz -O privacera_cloud.tar.gz
wget ${PRIVACERA_BASE_DOWNLOAD_URL}/upload_dataserver_in_cluster_hdfs.sh -O upload_dataserver_in_cluster_hdfs.sh