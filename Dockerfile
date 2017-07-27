FROM node:8-alpine

MAINTAINER Marcel

VOLUME /data
WORKDIR /data

# Add edge repository
RUN echo "@edge http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories

RUN apk add --no-cache --update pngquant@edge optipng

RUN npm -g i svgo
