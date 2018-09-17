#!/bin/bash

AAT_VER=0.5.0

tarball=v${AAT_VER}.tar.gz

if [ ! -f ${tarball} ]; then
    curl -L https://github.com/adaptlearning/adapt_authoring/archive/${tarball} -o ${tarball}
fi

docker build --build-arg aat_ver=${AAT_VER} .

