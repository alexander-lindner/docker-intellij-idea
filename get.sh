#!/bin/bash


git clone https://github.com/trygvis/intellij-idea-dpkg.git ./build-idea/
cd ./build-idea/

VERSION=`curl https://data.services.jetbrains.com/products/releases?code=IIU\&latest=true | jq -r .IIU[0].version`

./build-package -f IC -p debian -v $VERSION

cp -r ./repository/* /repository

