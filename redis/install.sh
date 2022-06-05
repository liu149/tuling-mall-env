#!/usr/bin/bash
yum install -y gcc make wget
version=$1
REDIS_URL=http://download.redis.io/releases/redis-${version}.tar.gz
if [ ! -d /opt/apps ];then
  mkdir /opt/apps
fi
cd /opt/apps/
wget ${REDIS_URL}
tar -zxf redis-${version}.tar.gz
cd redis-${version}
make & make install
sed -i 's/^bind 127.0.0.1$/bind 0.0.0.0/g' redis.conf






