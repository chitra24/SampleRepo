#!/bin/bash

# Please provide the location before running this script
#echo -n "Please provide the location of location of DockerFile:>"
#read filePath
#echo -n "Enter build name:>"
#read buildname
#echo -n "Enter command with fully qualified path name to execute:>"
#read command1
export BUILD_NAME=jenkinscentos2
export FILE_PATH=/home/TestRepository/Test
export COMMAND = terraform apply
docker build -t ${BUILD_NAME} ${FILE_PATH}
docker run -it ${BUILD_NAME} ${COMMAND}
