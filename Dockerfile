FROM mcr.microsoft.com/powershell

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
  apt-get -y install tzdata dumb-init

COPY docker-entrypoint.sh /

ENTRYPOINT ["dumb-init", "/docker-entrypoint.sh"]