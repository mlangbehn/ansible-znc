FROM ubuntu:xenial

RUN apt-get -qq update
RUN apt-get -qq install build-essential libssl-dev libffi-dev python-dev python-pip sudo openssh-server ufw
RUN pip install -U pip
RUN pip install ansible

RUN service ssh start

ADD . /ansible-znc
WORKDIR /ansible-znc

EXPOSE 80
