FROM centos:centos7

MAINTAINER Bin Liu <liubin0329@gmail.com>

RUN yum update -y && yum install -y unzip wget

RUN cd /tmp \
  && wget https://dl.bintray.com/mitchellh/serf/0.6.4_linux_amd64.zip

RUN cd /tmp \
  && unzip 0.6.4_linux_amd64.zip \
  && chmod +x serf \
  && mv serf /usr/bin/serf


ADD handler.sh /handler.sh

RUN chmod +x /handler.sh

WORKDIR /
