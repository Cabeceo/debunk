FROM debian:latest

RUN apt-get -qqy update && \
    apt-get install -y apt-utils debconf-utils && \
    echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections
