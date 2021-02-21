#Docker image specification for running a Python web service with Flask.
FROM node:latest

RUN mkdir /ui
WORKDIR /ui
COPY package.json /ui/package.json

RUN npm config set unsafe-perm true
RUN npm install
