FROM node:7.9.0-alpine
LABEL maintainer="ahoy@m4grio.me"

ENV ENDURO_VERSION 1.4.16

RUN \
    set -xe ;\
    apk add --no-cache --virtual git .build-deps

RUN \
    set -xe ;\
    npm install -g enduro@$ENDURO_VERSION

WORKDIR /opt/app

EXPOSE 3000
EXPOSE 5000

ENTRYPOINT ["enduro"]
