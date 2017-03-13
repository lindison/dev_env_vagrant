#!/usr/bin/env bash

# update ubuntu apt cache
apt-get update

# Install Docker
apt-get install -y apt-transport-https \
                   software-properties-common \
                   ca-certificates

curl -fsSL https://yum.dockerproject.org/gpg | sudo apt-key add -
apt-key fingerprint 58118E89F3A912897C070ADBF76221572C52609D
apt-get install -y software-properties-common
add-apt-repository \
       "deb https://apt.dockerproject.org/repo/ \
       ubuntu-$(lsb_release -cs) \
       main"

apt-get update
apt-get -y install docker-engine
usermod -aG docker ubuntu
systemctl enable docker

