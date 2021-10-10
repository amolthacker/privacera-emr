#!/bin/bash

BASE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CONF_DIR="${BASE_DIR}/../conf"
source "${CONF_DIR}/art-privacera-demo-config.sh"

eksctl create cluster \
	--name ${EKS_CLUSTER_NAME} \
	--version ${EKS_K8S_VERSION} \
	--region ${AWS_REGION} \
	--nodegroup-name ${EKS_NODEGROUP_NAME} \
	--node-type ${EKS_EC2_INSTANCE_TYPE} \
	--nodes ${EKS_NUMBER_OF_NODES} \
	--ssh-access \
	--ssh-public-key ${SSH_PUB_KEY} \
	--managed

eksctl utils write-kubeconfig --cluster ${EKS_CLUSTER_NAME}
