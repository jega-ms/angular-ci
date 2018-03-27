FROM ubuntu:16.04

MAINTAINER Jegadeesan M "jega4u@gmail.com"


ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y
RUN apt-get install -y curl 
RUN curl -sL https://deb.nodesource.com/setup_9.x | bash -
RUN apt-get install -y nodejs
RUN echo $(node -v) 
RUN echo $(npm -v)
RUN npm -v
RUN npm install -g @angular/cli@latest --unsafe-perm
RUN ng -v
RUN npm install -g firebase-tools
RUN firebase -V


