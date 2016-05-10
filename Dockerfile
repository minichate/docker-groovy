FROM ubuntu:16.04

RUN apt-get update && apt-get install -y make groovy curl && rm -Rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /var/lib/{apt,dpkg,cache,log}/
RUN curl -sSL https://get.docker.com/builds/Linux/x86_64/docker-1.8.1 > /usr/bin/docker && \
    curl -sSL https://github.com/docker/compose/releases/download/1.7.0/docker-compose-`uname -s`-`uname -m` > /usr/bin/docker-compose && \
    chmod 755 /usr/bin/docker*

WORKDIR /source
ENTRYPOINT ["groovy"]
