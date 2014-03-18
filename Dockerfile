FROM ubuntu:13.10
MAINTAINER Timo Derstappen, teemow@gmail.com

RUN adduser --disabled-password --gecos "" teemow
RUN echo "teemow      ALL = NOPASSWD: ALL" >> /etc/sudoers

# Set locale
RUN locale-gen --no-purge de_DE.UTF-8
ENV LC_ALL de_DE.UTF-8

ENV DEBIAN_FRONTEND noninteractive

ENV HOME /home/teemow
WORKDIR /home/teemow
USER teemow
