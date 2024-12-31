#! /usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset

Project_Web_Src_Package=
if [ ! -z "./${Project_Web_Src_Package:=MyWebApp.war}" ];then 
    if [ -e "./$Project_Web_Src_Package" -o  ! -e "./$Project_Web_Src_Package" ];then
        rm -rf ./$Project_Web_Src_Package
        mv ../target/$Project_Web_Src_Package ./ -f
    fi
fi
docker rm -f tomcat 2>/dev/null
docker images | grep 'none' | awk '{system("docker rmi "$3"")}'
docker build -t tomcat:v1 --no-cache . && \
docker run --name tomcat --network host --publish 8080:8080 -d tomcat:v1
