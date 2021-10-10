#!/bin/bash

BASE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CONF_DIR="${BASE_DIR}/../../conf"
source "${CONF_DIR}/art-privacera-demo-config.sh"

docker login hub2.privacera.com -u ${PRIVACERA_HUB_USER}

mkdir -p ~/privacera/downloads
cd ~/privacera/downloads
wget ${PRIVACERA_MGR_BASE_DOWNLOAD_URL}/privacera-manager.tar.gz -O privacera-manager.tar.gz
cd ~/privacera
tar -zxf ~/privacera/downloads/privacera-manager.tar.gz

cd ~/privacera/privacera-manager/config
echo '#!/bin/bash' > pm-env.sh
echo "export  PRIV_MGR_PACKAGE=${PRIVACERA_MGR_BASE_DOWNLOAD_URL}/privacera-manager.tar.gz" >> pm-env.sh
echo "export  PRIV_MGR_IMAGE=hub2.privacera.com/privacera-manager:${PRIVACERA_MGR_TAG}" >> pm-env.sh

cd ~/privacera/privacera-manager
cp config/sample.vars.privacera.yml config/vars.privacera.yml

cd ~/privacera/privacera-manager/config
cp sample-vars/vars.kubernetes.yml custom-vars/
cp sample-vars/vars.aws.yml custom-vars/
