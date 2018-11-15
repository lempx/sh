#!/bin/bash

yum -y install python-setuptools && easy_install pip
pip install shadowsocks
sudo ssserver -p 10443 -k password -m rc4-md5 --user nobody -d start
# stop shadowsocks server
# sudo ssserver -d stop
