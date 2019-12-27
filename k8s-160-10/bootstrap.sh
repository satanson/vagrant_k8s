#!/bin/bash
set -e -o pipefail
cp /vagrant/50-vagrant.yaml /etc/netplan/
netplan apply
cp /vagrant/hosts /etc/hosts
