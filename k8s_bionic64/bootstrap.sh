#!/usr/bin/env bash

cp /vagrant/sources.list /etc/apt/sources.list
mkdir -p /root/.pip
cp /vagrant/pip.conf /root/.pip/pip.conf

apt-get update -y
env apt-get install -y 
env DEBIAN_FRONTEND=noninteractive \
                        apt-get install -y --no-install-recommends \
                        sudo \
                        inetutils-ping\
                        wget \
                        curl \
                        net-tools \
                        netcat \
                        vim \
                        python \
                        ccache \
                        librocksdb-dev \
                        librocksdb5.8 \
                        lvm2 \
                        udev \
                        dmraid \
                        tree \
                        gdb \
                        silversearcher-ag \
                        && rm -fr /var/cache/apt/archives/*

python --version
python /vagrant/get-pip.py
python -m pip install --upgrade pip setuptools wheel
pip install PrettyTable cryptography pyOpenSSL pecan Werkzeug bcrypt jwt==0.3.2
