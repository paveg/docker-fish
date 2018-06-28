FROM alpine:latest
MAINTAINER Ryota Ikezawa (https://github.com/paveg)

RUN apk update \
  && apk add --no-cache fish vim\
  && rm -f /tmp/* /etc/apk/cache/*

RUN sed -i -e "s/bin\/ash/usr\/bin\/fish/" /etc/passwd

ENV SHELL /usr/bin/fish
ENV LANG C.UTF-8

CMD ["fish", "--version"]
