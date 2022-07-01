#!/bin/bash

useradd -u 1001 -m developer

export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get install -y git vim
apt-get clean

su - developer /user.sh
