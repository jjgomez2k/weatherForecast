#!/bin/bash
# -p hostPort:containerPort
#docker run -d -p 5000:5000 -p 9080:80 weatherforecast:latest
docker-compose up
#firefox http://127.0.0.1:5000/weather
firefox http://127.0.0.1:3000/