FROM python:3.9.1
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENV FLASK_HOST=0.0.0.0
ENV OPENWEATHERMAP_API_KEY=2d854fc549ee9b42e410f6e741eb4b20
ENTRYPOINT ["python3"]
CMD ["main.py"]