FROM rocker/verse:latest

LABEL maintainer="Daniel Albohn <d.albohn@gmail.com>"

ENV DEBIAN_FRONTEND=noninteractive

# Add singularity

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    libarchive-dev git wget make cmake

ENV VERSION=2.6.1
RUN wget https://github.com/singularityware/singularity/releases/download/$VERSION/singularity-$VERSION.tar.gz && \
    tar xvf singularity-$VERSION.tar.gz

RUN cd singularity-$VERSION && \
    ./configure --prefix=/usr/local && \
    make && \
    make install

RUN export ADD=shiny && bash /etc/cont-init.d/add
