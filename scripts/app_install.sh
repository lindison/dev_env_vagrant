#!/usr/bin/env bash

# update ubuntu apt cache
apt-get update

# Install Docker
apt-get install -y apt-transport-https \
                   software-properties-common \
                   curl \
                   ca-certificates

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
apt-get install -y software-properties-common
sudo apt-key fingerprint 0EBFCD88
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

apt-get update
apt-get -y install docker-ce
usermod -aG docker ubuntu
