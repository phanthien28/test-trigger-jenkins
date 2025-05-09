FROM ubuntu

WORKDIR /src

RUN apt-get update
RUN apt-get -y install python3
