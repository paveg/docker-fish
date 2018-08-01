FROM alpine:latest
MAINTAINER Ryota Ikezawa (https://github.com/paveg)

RUN apk update \
  && apk add --no-cache fish vim curl git less\
  && rm -f /tmp/* /etc/apk/cache/* \
  && curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher

RUN sed -i -e "s/bin\/ash/usr\/bin\/fish/" /etc/passwd

ENV SHELL /usr/bin/fish
ENV LANG C.UTF-8

CMD ["fish", "--version"]
