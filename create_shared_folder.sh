#!/bin/bash
source .env
FOLDER_NAME=mathclinic
HUB_NAME=stathub
VOLUME_NAME=shared-$HUB_NAME-$FOLDER_NAME
docker volume create $VOLUME_NAME
sudo chmod 777 $(docker inspect $VOLUME_NAME | grep "Mountpoint" | awk '{print $2}' | sed 's/"//g' | sed 's/,//g')
