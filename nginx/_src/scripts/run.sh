#!/bin/sh
echo "app_server_ip -> ${app_server_ip}"
cp -rvf /_src/sites /etc/nginx/sites
cd /etc/nginx/sites
envsubst '${app_server_ip}' < default.conf.template > default.conf
cat default.conf
nginx -g "daemon off;"
