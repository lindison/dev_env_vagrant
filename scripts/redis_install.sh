#!/usr/bin/env bash

# update ubuntu apt cache
apt-get update

# Install REDIS
apt-get install -y apt-transport-https \
                   software-properties-common \
                   curl \
                   tcl \
                   ca-certificates

apt-get install redis-server -y
