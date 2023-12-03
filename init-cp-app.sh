#!/bin/bash
APP_HOME=/home/isucon/webapp
DEST=/home/isucon/isucon13-practice/webapp

mkdir -p ${DEST}
# App
cp -r ${APP_HOME}/go ${DEST}
cp -r ${APP_HOME}/sql ${DEST}
