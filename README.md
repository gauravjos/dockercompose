# dockercompose
Install
 
$ curl -L https://github.com/docker/compose/releases/download/1.6.2/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose

$ chmod +x /usr/local/bin/docker-compose

or using pip

$ pip install docker-compose

Docker compose file is docker-compose.yml in YAML format.
Docker-compose File Starts with version: '2' tag
services configurations follows which contain  build, environment variables, image , networks , ports and volumes.

docker-compose commands
docker-compose build
docker-compose up
docker-compose down
docker-compose ps
docker-compose stop
docker-compose start
docker-compose rm

docker-compose build mongo #here mongo is one of the services defined in Docker compose file.
docker-compose up  # to run the containers according to Docker compose file
docker-compose up -d # to start in daemon mode
docker-compose up --no-deps node   # to only  start a service without its dependencies
docker-compose down  # to shutdown the containers and remove container
docker-compose down --rmi all --volumes # to remove volumes and images along with containers after shutdown.

Github link 
https://github.com/gauravjos/dockercompose

