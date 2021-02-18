#!/bin/bash

#Build the ReactJS app
# coming soon ...

#Build the Docker image
image="weatherforecast"
docker build --network=host -t ${image}:latest ../app