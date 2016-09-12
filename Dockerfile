FROM ubuntu:16.04
MAINTAINER AngeldsWang "zjwang0414@gmail.com"
ENV REFRESHED_AT 2016-09-12
RUN apt-get update
RUN apt-get install -y -q nginx
RUN mkdir -p /var/www/html
ADD nginx/global.conf /etc/nginx/conf.d/
ADD nginx/nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
