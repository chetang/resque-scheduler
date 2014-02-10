#!/bin/bash

export DEBIAN_FRONTEND=noninteractive

umask 022

set -e
set -x

apt-get update -yq
apt-get install -yq \
  build-essential \
  byobu \
  curl \
  git \
  make \
  redis-server \
  screen

su - vagrant -c /vagrant/.vagrant-provision-as-vagrant.sh
