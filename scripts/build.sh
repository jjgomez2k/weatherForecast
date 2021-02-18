#!/bin/bash

# Validate codebase
pylint --output-format=parseable ../app/main.py ../app/weather_services

# Run Tests and abort build if errors found
python3 -m unittest discover -s ../app -v
[ $? -eq 0 ]  || exit 1

#Build the ReactJS app
cd ../ui
npm build
cd -

#Build the Docker image
image="weatherforecast"
docker build --network=host -t ${image}:latest ..