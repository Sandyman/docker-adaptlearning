#!/bin/bash

USERNAME=sandyman
IMAGENAME=adaptlearning

TARGET=adapt_authoring
VERSION=0.5.0

tarball=v${VERSION}.tar.gz

if [ ! -d ${TARGET} ]; then
    if [ ! -f ${tarball} ]; then
        curl -L https://github.com/adaptlearning/adapt_authoring/archive/${tarball} -o ${tarball}
    fi
    tar -xzf ${tarball}
    mv adapt_authoring-${VERSION} ${TARGET}
fi

docker build --rm -t ${USERNAME}/${IMAGENAME} .
