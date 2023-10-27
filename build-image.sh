#!/bin/bash

//Play around with this file to make it suit your needs. 
//The main goal is to group all the commands that need to be executed into one place.

BE_BRANCH="master"
FE_BRANCH="master"
IMAGE_NAME="javache_build"
IMAGE_VERSION="1.0"

cd ./be

git fetch origin
git pull origin $BE_BRANCH

cd ../fe

git fetch origin
git pull origin $FE_BRANCH

cd ..

docker build -t $IMAGE_NAME:$IMAGE_VERSION .

