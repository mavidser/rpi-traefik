FROM resin/rpi-raspbian:stretch-20180411
LABEL maintainer="Sid Verma <me@sidverma.io>"

RUN apt-get update \
  && apt-get upgrade

ADD https://github.com/containous/traefik/releases/download/v1.6.0-rc6/traefik_linux-arm /traefik

RUN chmod +x /traefik

EXPOSE 80 8080

ENTRYPOINT ["/traefik"]
