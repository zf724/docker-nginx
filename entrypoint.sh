#! /bin/sh
set -e

if [ ! -d "/data/conf.d" ];then
  mv /etc/nginx/conf.d /data/
  ln -s /data/conf.d /etc/nginx/conf.d
fi

if [ ! -d "/data/html" ];then
  mv /usr/share/nginx/html /data/
  ln -s /data/html /usr/share/nginx/html
fi

nginx -g 'daemon off;'
