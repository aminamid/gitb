#!/bin/bash -x
cd /var/lib/gitb/
wget -O gitbucket.war.${1}  https://github.com/takezoe/gitbucket/releases/download/${1}/gitbucket.war
ln -sf gitbucket.war.${1} gitbucket.war
service gitbucket stop
service gitbucket start
