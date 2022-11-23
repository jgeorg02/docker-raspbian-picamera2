# Docker Image for PiCamera2 (Using Raspbian Bullseye)
Docker image with a base Image [Raspbian Bullseye](https://hub.docker.com/r/navikey/raspbian-bullseye) and has installed python and [PiCamera2](https://github.com/raspberrypi/picamera2). Along with these, there is a <strong>docker-compose.yaml</strong> which contains extra configuration (e.g. volumes, previleged, and devices) in order to be able to run on a Raspberry Pi.

## Build Image
This image is available through [Dockerhub](https://hub.docker.com/repository/docker/benchpilot/raspbian-picamera2), but you can always build it locally:
````
docker build -t raspbian-picamera2 .
````

## How to run
<strong>Inside the image there is also a main.py which captures a picture. So all you need to do is to run the following commands:</strong>

To start the container with docker compose:
````
docker-compose up -d
````
To get into the container with bash:
````
docker exec -it <container-id> bash 
````
To execute the python code and capture an image:
````
python3 main.py
````