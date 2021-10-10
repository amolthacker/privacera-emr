#!/bin/bash

export PREFIX="art-privacera-demo"

export AWS_PROFLE="${PREFIX}-iam"
export AWS_REGION="us-east-1"
export SSH_PUB_KEY="${PREFIX}-sshkey"


#===========
# Privacera
#============
export PRIVACERA_HUB_USER="amol"
export PRIVACERA_HUB_PASSWORD="<provided-password>"
export PRIVACERA_IMAGE_TAG="rel.r.4.2.1.72"
export PRIVACERA_BASE_DOWNLOAD_URL="https://privacera.s3.amazonaws.com/rel/rel.r.4.2.1.72/cloud"
export PRIVACERA_MGR_TAG="rel.r.4.2.1.1"
export PRIVACERA_MGR_BASE_DOWNLOAD_URL="https://s3.amazonaws.com/privacera/rel/rel.r.4.2.1.1/cloud/pm"
#============


#=======
# EKS
#=======
export EKS_CLUSTER_NAME="${PREFIX}-eks"
export EKS_K8S_VERSION="1.17"
export EKS_NODEGROUP_NAME="${PREFIX}-eks-workers"
export EKS_EC2_INSTANCE_TYPE="m5.xlarge"
export EKS_NUMBER_OF_NODES=2
#============


#=======
# EMR
#=======
export EMR_CLUSTER_NAME="${PREFIX}-emr"

