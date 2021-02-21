#Docker image specification for running a Python web service with Flask.
FROM python:3.9.1

RUN apt-get update

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt
RUN pip install --upgrade pip

COPY . app/
