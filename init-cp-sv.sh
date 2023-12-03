#!/bin/bash
DEST=/home/isucon/zz_10q-wakabayashi/SV1

# SV
# Nginx
SUB=nginx
mkdir -p ${DEST}/${SUB}
cp /etc/nginx/nginx.conf  ${DEST}/${SUB}
cp -rf /etc/nginx/sites-available ${DEST}/${SUB}
cp -rf /etc/nginx/conf.d ${DEST}/${SUB}

# MySQL
SUB=mysql
mkdir -p ${DEST}/${SUB}
cp /etc/mysql/my.cnf /etc/mysql/mysql.cnf ${DEST}/${SUB}
cp -rf /etc/mysql/conf.d ${DEST}/${SUB}
cp -rf /etc/mysql/mysql.conf.d ${DEST}/${SUB}

