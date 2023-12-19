#!/bin/bash

sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y

sudo apt update
sudo apt-get install python3
sudo apt install python3-pip -y
sudo pip3 install boto3==1.26.0
sudo pip3 install botocore==1.29.0
pip3 show boto3 | grep Version
pip3 show botocore | grep Version
sudo apt update
