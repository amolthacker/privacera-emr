#!/bin/bash

printf "Installing AWS CLI ...\n\n"

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
rm -rf aws
rm -f awscliv2.zip

printf "\n\n Installing kubectl ...\n\n"
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
rm -f kubectl

printf "\n\n Installing helm ...\n\n"
wget https://get.helm.sh/helm-v3.5.2-linux-amd64.tar.gz
tar -xvzf helm-v3.5.2-linux-amd64.tar.gz
sudo mv linux-amd64/helm /usr/local/bin/helm
rm -rf linux-amd64/
rm -f helm-v3.5.2-linux-amd64.tar.gz

printf "\n\n Installing eksctl ...\n\n"
wget https://github.com/weaveworks/eksctl/releases/download/0.39.0/eksctl_Linux_amd64.tar.gz
tar -xvzf eksctl_Linux_amd64.tar.gz
sudo mv eksctl /usr/local/bin
rm -f eksctl_Linux_amd64.tar.gz


printf "\n\n Utils\n\n"

printf "AWS CLI\n"
aws --version

printf "\n kubectl\n"
kubectl version --client

printf "\n helm\n"
helm version

printf "\n eksctl\n"
eksctl version

printf "\n\n Done\n"
