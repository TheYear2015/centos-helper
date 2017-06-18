#!/bin/sh

yum -y install wget gcc zlib-devel openssl-devel
wget https://www.python.org/ftp/python/3.6.1/Python-3.6.1.tgz
tar -zxvf Python-3.6.1.tgz
cd Python-3.6.1
./configure --prefix=/usr/local/python/python3.6
make
make install
cd ..
ln -s /usr/local/python/python3.6/bin/python3 /usr/bin/python3
python3 -V
wget https://bootstrap.pypa.io/get-pip.py
python3 get-pip.py
ln -s /usr/local/python/python3.6/bin/pip3 /usr/bin/pip3
