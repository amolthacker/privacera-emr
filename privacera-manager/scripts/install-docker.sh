#!/bin/bash

sudo yum install -y docker
sudo sed -i 's/1024:4096/1024000:1024000/g' /etc/sysconfig/docker
sudo cat /etc/sysconfig/docker
sudo service docker start
sudo usermod -a -G docker ec2-user
exit
