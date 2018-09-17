#!/bin/bash

USERNAME=sandyman
IMAGENAME=adaptlearning

AAT_VER=0.5.0

tarball=v${AAT_VER}.tar.gz

if [ ! -f ${tarball} ]; then
    curl -L https://github.com/adaptlearning/adapt_authoring/archive/${tarball} -o ${tarball}
fi

tar -xzf ${tarball}
mv adapt_authoring-${AAT_VER} adapt_authoring

docker build --rm --build-arg aat_ver=${AAT_VER} -t ${USERNAME}/${IMAGENAME} .
