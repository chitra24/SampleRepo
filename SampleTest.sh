#!/bin/bash

# Please provide the location before running this script
#echo -n "Please provide the location of location of DockerFile:>"
#read filePath
#echo -n "Enter build name:>"
#read buildname
#echo -n "Enter command with fully qualified path name to execute:>"
#read command1
echo "Print the details"
echo "+++++++++++++++++"
#docker run -it ${BUILD_NAME} ${COMMAND}

while true;
then
   status=$(ps -ef | grep -i example.jar )
   if [!  -z $status ]; 
       then
        sleep 10;
   fi

