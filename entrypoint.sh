#! /bin/sh
set -e

if [ ! -d "/data/conf.d" ];then
  mv /etc/nginx/conf.d /data/
else
  rm -rf /etc/nginx/conf.d
fi
ln -s /data/conf.d /etc/nginx/conf.d

if [ ! -d "/data/html" ];then
  mv /usr/share/nginx/html /data/
else
  rm -rf /usr/share/nginx/html
fi
ln -s /data/html /usr/share/nginx/html

exec nginx -g 'daemon off;'
