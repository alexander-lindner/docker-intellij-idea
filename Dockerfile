FROM debian:latest
MAINTAINER Alexander Lindner<mail@alindner.org>

RUN apt-get update -q --fix-missing && apt-get -y upgrade
RUN apt-get -y install git jq curl wget devscripts debhelper
RUN mkdir /opt/build

COPY get.sh /opt/build/get.sh
RUN chmod +x /opt/build/get.sh

CMD cd /opt/build && /opt/build/get.sh
