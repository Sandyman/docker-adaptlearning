FROM ubuntu:18.04

LABEL maintainer="Sander Huijsen <sander.huijsen@gmail.com>"

RUN apt-get update && apt-get install -y \
    ffmpeg \
    git \
    grunt \
    nodejs \
    npm && \
    rm -rf /var/lib/apt/lists/*

RUN npm install -g grunt && \
    npm install -g coffeescript@1.10.0 && \
    npm install -g jsonlint@1.6.3 && \
    npm install -g jshint@2.9.6 7

WORKDIR /adapt_authoring

COPY adapt_authoring .

RUN npm install --production

EXPOSE 5000
