# WeatherForecast

## Overview

WeatherForecast is a sample project that consists of a Python Flask webservice to provide a source of weather information, using OpenWeatherMap as the backend datasources. To run the application you will need to signup for API keys for both services.
This also includes a ReactJS frontend for the service, as well as scripting to build and deploy in Docker with Docker Compose, as an example of a CI/CD integration piece.
### Why Docker Compose?
[Docker](https://www.docker.com/) maintains software and all of its dependencies within a "container",
which can make collaborating and deploying simpler. [Docker Compose](https://docs.docker.com/compose/)
is a tool for easily managing applications running multiple Docker containers. 
## Running the code

## How to Use
Firstly, download [Docker desktop](https://www.docker.com/products/docker-desktop) and follow its
 instructions to install it. This allows us to start using Docker containers.
 
Create a local copy of this repository and run on the Scripts folder:

    ./build.sh
    
This spins up Compose and builds a local development environment according to 
our specifications in [docker-compose.yml](docker-compose.yml). 

After the containers have been built (this may take a few minutes), run

    ./run.sh
    
This one command boots up a local server for Flask (on port 5000)
and React (on port 3000). Head over to

    http://localhost:3000/ 
    
to view a simple React webpage to view the weather broadcast of a city.
Though the apparent result is simple, this data was retrieved through an API call
 to our Flask server, which can be accessed at

    http://localhost:5000/weather
    

Finally, to gracefully stop running our local servers, you can press __control + C__.


# Resources

Fonts & Icons:
* https://getbootstrap.com/
* https://najens.github.io/weather-icons-react/

