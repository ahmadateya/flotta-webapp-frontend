FROM node:16.15.0-alpine

RUN mkdir -p /app
WORKDIR /app

COPY ./app /app

RUN apk add vim bash

RUN npm install -g @vue/cli

RUN npm install

EXPOSE 8080