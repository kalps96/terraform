#!/bin/bash
sudo yum -y install epel-release
sudo yum -y install ansible
sudo yum -y install git
sudo yum -y install java-1.8*
sudo yum install jq -y
git clone https://github.com/PaloAltoNetworks/pcs-sizing-scripts.git
cd /home/centos/aws/pcs-sizing-scripts/aws
