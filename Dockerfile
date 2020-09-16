FROM python:2.7-onbuild
WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
#RUN apt-get update && apt-get upgrade -y
# HTTP PORT ->
EXPOSE 80
# WEBSOCKET PORT ->
EXPOSE 8090

ENTRYPOINT ["python", "relay.py"]