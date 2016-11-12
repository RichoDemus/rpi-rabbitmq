FROM resin/rpi-raspbian:jessie
MAINTAINER Richard Tjerngren <richodemus@gmail.com>

RUN apt-get update && apt-get install -y rabbitmq-server && apt-get -y --purge autoremove && apt-get clean && rm -rf /var/lib/apt/lists/*
RUN rabbitmq-plugins enable rabbitmq_management

COPY create_user.sh /
RUN /create_user.sh

EXPOSE 4369 5671 5672 25672 15671 15672
CMD rabbitmq-server

