FROM alpine:latest

RUN apk -U add bind-tools bash

RUN mkdir /bundle
WORKDIR /bundle
COPY dig.sh /bundle/
COPY ping.sh /bundle/
RUN chmod +x /bundle/*.sh
