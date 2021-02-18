import os
from flask import Flask, escape, request
from weather_services import openWeatherMap


def lookupWeather(location):
    ''' Perform the lookup of weather information across our service '''
    weather = openWeatherMap.fetch_weather(location)
    if (not openWeatherMap.is_up):       
      if (openWeatherMap.last_ts is None):
          weather = None
      else: 
          weather = openWeatherMap.last_result                  
      if (weather is None): weather = {'status':'Offline'}
      return weather

app = Flask(__name__)

@app.route('/')
def hello():
    """ Demo web service """
    return f'WeatherForecast Server v1.0'

@app.route('/weather')
def getWeather():
    """ Weather web service """
    location = request.args.get("location", None)
    return lookupWeather(location)


def main():
    """Main entry point for server"""
    hostname = os.getenv('FLASK_HOST')
    hostname = '127.0.0.1' if hostname is None else hostname
    print('Running on %s'%(hostname))
    app.run(host=hostname)

if __name__ == "__main__":
    main()