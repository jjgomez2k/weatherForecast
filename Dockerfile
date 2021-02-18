#Docker image specification for running a Python web service with Flask.
FROM python:3.9.1

RUN apt-get update
RUN apt-get install -y nginx
COPY ui /var/www/html

COPY app /app
WORKDIR /app
RUN pip3 install -r requirements.txt
ENV FLASK_HOST=0.0.0.0
ENV OPENWEATHERMAP_API_KEY=446e855d59a06479bad6d4036c1fd77b

CMD nginx && python3 main.py