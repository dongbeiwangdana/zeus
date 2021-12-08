FROM 192.168.60.153/wops/docker-alpine:v0.1

WORKDIR /usr/src/app

COPY requirements.txt ./

COPY flask_docker.py ./

