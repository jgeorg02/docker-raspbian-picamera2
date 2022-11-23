FROM navikey/raspbian-bullseye:latest
WORKDIR /app

ADD . /app/
RUN apt update && apt-get -y upgrade
RUN apt-get install -y python3 python3-pip vim
RUN pip install --upgrade pip
RUN apt install -y python3-picamera2 --no-install-recommends
