#!/bin/bash
APP_HOME=/home/isucon/isuumo/webapp
DEST=/home/isucon/zz_10q-wakabayashi/webapp

mkdir -p ${DEST}
# App
cp -r ${APP_HOME}/go ${DEST}
cp -r ${APP_HOME}/mysql ${DEST}

