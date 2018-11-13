#!/bin/bash
# https://redis.io/download

mkdir -p /lempx/tmp
mkdir -p /lempx/app
cd /lempx/tmp

wget http://download.redis.io/releases/redis-5.0.0.tar.gz
tar xzf redis-5.0.0.tar.gz
mv /lempx/tmp/redis-5.0.0 /lempx/app/
cd /lempx/app/redis-5.0.0
make
