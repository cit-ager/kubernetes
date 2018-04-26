#!/bin/bash

DIR=$1
[ -z "$1" ] && echo "Pass the Dir" && exit 

IMAGE=$(head -1 $DIR/Dockerfile | sed -e 's/#//')
cd $DIR
docker build -t $IMAGE .
docker push $IMAGE
