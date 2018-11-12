#!/bin/bash
#@creat date 2018-11-11
#@author Lempx.com

mkdir -p /lempx/tmp
mkdir -p /lempx/app
mkdir -p /lempx/www

cd /lempx/tmp
#install common 
yum -y install wget
yum -y install gcc automake autoconf libtool gcc-c++

wget http://mirror.centos.org/centos/7/os/x86_64/Packages/pcre-8.32-17.el7.x86_64.rpm
wget http://mirror.centos.org/centos/7/os/x86_64/Packages/pcre-devel-8.32-17.el7.x86_64.rpm
rpm -ivh pcre-8.32-17.el7.x86_64.rpm
rpm -ivh pcre-devel-8.32-17.el7.x86_64.rpm

#install nignx 
wget https://github.com/lempx/sh/raw/master/src/nginx-1.14.1.tar.gz
tar -xzvf nginx-1.14.1.tar.gz
cd /lempx/tmp/nginx-1.14.1

./configure --user=nobody --group=nobody --prefix=/lempx/app/nginx/1.14 \
--with-http_stub_status_module \
--with-http_gzip_static_module \
--with-http_realip_module \
--with-http_sub_module \
--with-http_ssl_module

make && make install

#install php

