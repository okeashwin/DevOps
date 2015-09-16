#!/bin/sh

sudo apt-get install -y python-pip
pip install -U boto
npm install

echo "[Servers]" > inventory
echo "--------------Provisioning a server on Digital Ocean ---------------------------"
# node 0
node digitalOceanClient.js

echo "--------------Provisioning a server on AWS -------------------------------------"
# node 1
python awsClient.py

# Set this flag to false for an uninterrupted ssh
export ANSIBLE_HOST_KEY_CHECKING=False

ansible-playbook playbook.yml -i inventory

